param([switch]$Otworz)
$ErrorActionPreference = 'Stop'
$projectRoot = $PSScriptRoot
$buildDir = Join-Path $projectRoot 'build'
$latexDir = Join-Path $projectRoot 'latex'
$graphicsDir = Join-Path $projectRoot 'grafika'
$latestPdf = Join-Path (Split-Path -Parent $projectRoot) 'Teoria-miary.pdf'
New-Item -ItemType Directory -Path $buildDir -Force | Out-Null

function Invoke-PdfLatex([string]$SourceFile) {
    & pdflatex -interaction=nonstopmode -halt-on-error -file-line-error `
        "-output-directory=$buildDir" $SourceFile
    if ($LASTEXITCODE -ne 0) {
        throw "Kompilacja $SourceFile nie powiodla sie. Poprzedni PDF zostaje zachowany."
    }
}

Push-Location $graphicsDir
try {
    foreach ($graphic in Get-ChildItem -LiteralPath $graphicsDir -Filter '*.tex' -File) {
        Invoke-PdfLatex $graphic.Name
        Copy-Item -LiteralPath (Join-Path $buildDir ($graphic.BaseName + '.pdf')) `
            -Destination (Join-Path $graphicsDir ($graphic.BaseName + '.pdf')) -Force
    }
} finally { Pop-Location }

Push-Location $latexDir
try {
    # Trzy przebiegi aktualizuja spis tresci, numery stron i odsylacze.
    1..3 | ForEach-Object { Invoke-PdfLatex 'main.tex' }
} finally { Pop-Location }

$mainLog = Get-Content -LiteralPath (Join-Path $buildDir 'main.log') -Raw
if ($mainLog -match 'There were undefined references|Rerun to get cross-references right|Label\(s\) may have changed|Overfull \\[hv]box|destination with the same identifier') {
    throw 'PDF wymaga sprawdzenia: nieustalone odsylacze lub przepelnienie skladu. Zobacz build/main.log.'
}
Copy-Item -LiteralPath (Join-Path $buildDir 'main.pdf') -Destination $latestPdf -Force
Write-Host "Najnowszy PDF: $latestPdf"
if ($Otworz) { Invoke-Item -LiteralPath $latestPdf }

