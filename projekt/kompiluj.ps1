param([switch]$Otworz)
$ErrorActionPreference = 'Stop'
$projectRoot = $PSScriptRoot
$buildDir = Join-Path $projectRoot 'build'
$latexDir = Join-Path $projectRoot 'latex'
$graphicsDir = Join-Path $projectRoot 'grafika'
$courseDir = Split-Path -Parent $projectRoot
$variants = @(
    @{ Source = 'main.tex'; Base = 'main'; FileName = 'Teoria-miary.pdf' },
    @{ Source = 'main-wyklady.tex'; Base = 'main-wyklady'; FileName = 'Teoria-miary-wyklady.pdf' }
)
New-Item -ItemType Directory -Path $buildDir -Force | Out-Null
function Invoke-PdfLatex([string]$SourceFile) {
    & pdflatex -interaction=nonstopmode -halt-on-error -file-line-error "-output-directory=$buildDir" $SourceFile
    if ($LASTEXITCODE -ne 0) {
        throw "Kompilacja $SourceFile nie powiodla sie. Poprzednie PDF-y zostaja zachowane."
    }
}
Push-Location $graphicsDir
try {
    foreach ($graphic in Get-ChildItem -LiteralPath $graphicsDir -Filter '*.tex' -File) {
        Invoke-PdfLatex $graphic.Name
        Copy-Item -LiteralPath (Join-Path $buildDir ($graphic.BaseName + '.pdf')) -Destination (Join-Path $graphicsDir ($graphic.BaseName + '.pdf')) -Force
    }
} finally { Pop-Location }
Push-Location $latexDir
try {
    foreach ($variant in $variants) {
        1..3 | ForEach-Object { Invoke-PdfLatex $variant.Source }
        $logPath = Join-Path $buildDir ($variant.Base + '.log')
        $mainLog = Get-Content -LiteralPath $logPath -Raw
        if ($mainLog -match 'There were undefined references|Rerun to get cross-references right|Label\(s\) may have changed|Overfull \\[hv]box|destination with the same identifier') {
            throw "PDF wymaga sprawdzenia: nieustalone odsylacze lub przepelnienie skladu. Zobacz $logPath."
        }
    }
} finally { Pop-Location }
# Oba pliki aktualizujemy dopiero po poprawnym zbudowaniu obu wariantow.
foreach ($variant in $variants) {
    $latestPdf = Join-Path $courseDir $variant.FileName
    Copy-Item -LiteralPath (Join-Path $buildDir ($variant.Base + '.pdf')) -Destination $latestPdf -Force
    Write-Host "Najnowszy PDF: $latestPdf"
}
if ($Otworz) {
    foreach ($variant in $variants) {
        Invoke-Item -LiteralPath (Join-Path $courseDir $variant.FileName)
    }
}
