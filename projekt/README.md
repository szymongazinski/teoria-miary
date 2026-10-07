# Teoria miary

Skrypt rozwijany na podstawie odręcznych notatek i zdjęć tablic.
Najnowszy **[PDF](../Teoria-miary.pdf)** jest dostępny
w katalogu przedmiotu, obok folderu `projekt/`. Ten sam układ obowiązuje
lokalnie i w głównym katalogu repozytorium na GitHubie.

Publiczne repozytorium: [szymongazinski/teoria-miary](https://github.com/szymongazinski/teoria-miary).

## Układ projektu

Katalog `D:\Studia\Semestr 3\Teoria miary` zawiera tylko:

```text
Teoria miary/
├── Teoria-miary.pdf
└── projekt/
```

Cały kod, materiały, grafika, repozytorium Git oraz pliki robocze
znajdują się w `projekt/`. Poniższe ścieżki są względem tego folderu:

- `latex/main.tex` - dokument główny i kolejność rozdziałów.
- `latex/preambula.tex` - pakiety, czcionka, formatowanie i polecenia matematyczne.
- `latex/rozdzialy/` - tekst kolejnych rozdziałów.
- `grafika/` - osobne źródła rysunków i ich gotowe pliki PDF.
- `materialy/README.md` - pochodzenie materiałów i uwagi do transkrypcji.
- `materialy/RRRR-MM-DD/` - zachowane oryginalne notatki i zdjęcia.
- `build/` - pliki robocze kompilacji; pomijane przez Git.
- `kompiluj.ps1` i `kompiluj.cmd` - budowanie aktualnego PDF-a.

## Kompilacja

Wymagany jest `pdflatex` z MiKTeX lub TeX Live dostępny w PATH.
Na tym komputerze MiKTeX i potrzebne pakiety są już zainstalowane.
Dwukrotne kliknięcie `projekt/kompiluj.cmd` przebuduje rysunki, skrypt i otworzy PDF.
W PowerShell można wykonać:

```powershell
cd projekt
.\kompiluj.ps1
.\kompiluj.ps1 -Otworz
```

PDF obok folderu `projekt/` jest nadpisywany po udanej kompilacji
i wersjonowany bezpośrednio w głównym katalogu repozytorium.
Jeśli kompilacja się nie uda, wcześniejszy PDF pozostaje dostępny.
W edytorze LaTeX należy budować `latex/main.tex` przez ten skrypt,
aby zaktualizować również PDF w katalogu przedmiotu.

## Formatowanie

Wzorcem typograficznym jest [„Miara i całka” Grzegorza Plebanka](http://www.math.uni.wroc.pl/~grzes/dydaktyka18_19/fr_main.pdf).
Wykorzystujemy PL Roman, 12 pt, format A4, klasyczne numerowane rozdziały
i podrozdziały, numerowane definicje, przykłady i wzory oraz spis treści
z klikalnymi czarnymi odnośnikami bez obramowania. Wzorzec jest używany
wyłącznie do formatowania, a nie jako źródło treści wykładu.

Każdy rodzaj elementu (definicja, przykład, twierdzenie, fakt, lemat,
wniosek, uwaga) ma osobny licznik ciągły przez cały rozdział i resetowany
wyłącznie na początku `\chapter`. Sekcje i podsekcje nie resetują liczników.
Numery mają postać `rozdział.numer`, np. Definicja 1.1, Definicja 1.2
oraz osobno Przykład 1.1, Przykład 1.2. Skrypt nie zawiera dat otrzymania materiałów.

Nowe rysunki należy umieszczać w `grafika/`, wstawiać przez
`\includegraphics`, nadawać im `\label` i odwoływać się do nich przez `\ref`.

## Aktualizacje

Po każdej zmianie treści przebuduj dokument, sprawdź PDF i zapisz zmianę
w Git. Źródła, rysunki, materiały wejściowe i bieżący PDF są wersjonowane;
pliki tymczasowe nie trafiają do repozytorium.

Lokalne metadane Git są w `projekt/.git`, a katalog roboczy repozytorium
obejmuje katalog przedmiotu (`core.worktree=../..`). Polecenia Git wykonuj
z folderu `projekt/`, np. `git -C projekt status` z katalogu przedmiotu.
Przy zwykłym klonowaniu z GitHub układ plików jest taki sam; Git utworzy
standardowy ukryty katalog `.git` w katalogu klonu.

