# Teoria miary

Skrypt rozwijany na podstawie odręcznych notatek i zdjęć tablic.
Najnowsze PDF-y: **[bez oznaczeń wykładów](../Teoria-miary.pdf)**
i **[z oznaczeniami wykładów](../Teoria-miary-wyklady.pdf)** są dostępne
w katalogu przedmiotu, obok folderu `projekt/`. Ten sam układ obowiązuje
lokalnie i w głównym katalogu repozytorium na GitHubie.

Publiczne repozytorium: [szymongazinski/teoria-miary-skrypt](https://github.com/szymongazinski/teoria-miary-skrypt).
Przy przyszłych aktualizacjach zachowuj publiczną widoczność; jej zmiana
wymaga nowego, wyraźnego polecenia użytkownika.

## Układ projektu

Katalog `D:\Studia\Semestr 3\Teoria miary` zawiera tylko:

```text
Teoria miary/
├── Teoria-miary.pdf
├── Teoria-miary-wyklady.pdf
└── projekt/
```

Cały kod, materiały, grafika, repozytorium Git oraz pliki robocze
znajdują się w `projekt/`. Poniższe ścieżki są względem tego folderu:

- `latex/main.tex` - dokument główny i kolejność rozdziałów.
- `latex/main-wyklady.tex` - wariant z oznaczeniami początków wykładów.
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
Dwukrotne kliknięcie `projekt/kompiluj.cmd` przebuduje rysunki i obie wersje
skryptu oraz otworzy oba PDF-y.
W PowerShell można wykonać:

```powershell
cd projekt
.\kompiluj.ps1
.\kompiluj.ps1 -Otworz
```

Oba PDF-y obok folderu `projekt/` są aktualizowane po udanej kompilacji
obu wersji i wersjonowane w głównym katalogu repozytorium.
Jeśli kompilacja się nie uda, wcześniejsze PDF-y pozostają dostępne.
Buduj przez `kompiluj.ps1`, aby zaktualizować oba pliki.

## Rozdziały

- Rozdział 0 „Podstawowe pojęcia”: odcinki i prostokąty, prosta rozszerzona,
  granice ciągów zbiorów oraz przykłady (sekcje 0.1–0.4).
- Rozdział 1 „Struktury na zbiorach”: od definicji ciała
  i sigma-ciała (sekcja 1.1), następnie ich własności i dalsze pojęcia.
- Rozdział 2 „Miara”: funkcje zbioru, addytywność, definicja miary,
  przestrzeń z miarą, własności miar, konstrukcja miary Lebesgue'a
  oraz dystrybuanty miar.
- Rozdział 3 „Funkcje mierzalne”: równoważne warunki mierzalności,
  przeciwobrazy przedziałów i zbiorów borelowskich oraz działania na funkcjach.

Podział obowiązuje w obu wariantach. Wykład 1 obejmuje także początek
rozdziału 1; Wykład 2 zaczyna się przy własnościach sigma-ciał.
Wykład 3 zaczyna się od ideałów i filtrów (sekcja 1.8); obejmuje też
pi-układy, lambda-układy i rodziny monotoniczne.
Wykład 4 zaczyna się od generatorów sigma-ciała borelowskiego (sekcja 1.11)
i obejmuje również początek rozdziału 2. Materiały tego wykładu są
przepisane w kolejności zdjęć IMG_6933–IMG_6944.
Wykład 5 zaczyna się od ciągłości miary (sekcja 2.4), a następnie obejmuje
rodzaje i przykłady miar oraz podstawowe własności miary zewnętrznej
Lebesgue'a (sekcje 2.4–2.7).
Wykład 6 zaczyna się przed sekcją 2.8: obejmuje przesunięcia i zbiór
Vitaliego, następnie ogólną definicję miary zewnętrznej, warunek
Carathéodory'ego, konstrukcję miary Lebesgue'a i jej własności.
Wykład 7 zaczyna się od dystrybuant miar (sekcja 2.12), a następnie
przechodzi do rozdziału 3 „Funkcje mierzalne”. Zdjęcia IMG_7022–IMG_7033
obejmują także przykłady dystrybuant i dowody kryteriów mierzalności.
Ostatnia fotografia kończy rozpatrywanie mnożenia funkcji przez stałą.

W obu wariantach przed sekcją 2.8 znajduje się nienumerowany znacznik
„Limbo”. Drugi znacznik „Limbo” zamyka ten fragment po dowodzie braku
przeliczalnej addytywności lambda* na P(R). Oba znaczniki są widoczne
w dokumencie i w klikalnym spisie treści, niezależnie od chronologii.

## Podział na wykłady

Oba warianty mają tę samą treść, kolejność i numerację matematyczną.
Wariant `-wyklady.pdf` pokazuje dodatkowo nagłówki „Wykład 1”, „Wykład 2”
itd. oraz odpowiadające im wpisy w klikalnym spisie treści. Wariant zwykły
pomija znaczniki. Czerwona falowana kreska w materiałach wyznacza początek
kolejnego wykładu. W tym miejscu wstawiaj `\poczatekwykladu{numer}`.
Znaczniki nie resetują liczników. Nie dodawaj dat materiałów do PDF-a.
Niebieska falowana kreska oznacza brakującą treść do uzupełnienia z tablicy.
Notatki i zdjęcia należy porównywać w całości, także bez takich oznaczeń.

## Formatowanie

Oba warianty otwiera ta sama kreskówkowa okładka
`grafika/okladka-kreskowkowa.png`, osadzana przez `grafika/okladka.tex`.
Postać patrzy w górę, napis „PRAWDZIWE σ-CIAŁO” jest wkomponowany w cokół,
a aksjomat wyboru ilustruje wybór jednego kwiatu z każdej donicy.
Po okładce znajduje się
osobna strona tytułowa przed spisem treści (`latex/strony/tytulowe.tex`).
W treści nie stosujemy nagłówków z nazwami rozdziałów; numery stron
są wyśrodkowane na dole (`\pagestyle{plain}`).

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

