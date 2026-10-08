# Zasady rozwijania skryptu

Cały projekt, repozytorium Git i pliki robocze znajdują się w podfolderze
`projekt/`; dokument główny względem tego katalogu: `latex/main.tex`.
W katalogu nadrzędnym przedmiotu pozostają wyłącznie folder `projekt/`
i dwa PDF-y: `Teoria-miary.pdf` (bez oznaczeń wykładów)
oraz `Teoria-miary-wyklady.pdf` (z oznaczeniami początków wykładów).
Ten sam układ obowiązuje w głównym katalogu repozytorium na GitHubie.
Repozytorium obejmuje katalog przedmiotu, a lokalne metadane Git pozostają
w `projekt/.git` z ustawieniem `core.worktree=../..`.
Polecenia Git wykonuj z folderu `projekt/` (lub przez `git -C projekt ...`).
Nie przenoś ponownie katalogu głównego repozytorium do folderu `projekt/`.

- Przepisuj dostarczone notatki i zdjęcia po polsku do odpowiednich rozdziałów.
- Zachowuj PL Roman 12 pt, klasyczny skład oraz czarne, klikalne odnośniki.
- Nie umieszczaj w skrypcie informacji o dacie otrzymania materiałów.
- Utrzymuj oba PDF-y z jednej wspólnej treści. Wersję z chronologią buduje
  `latex/main-wyklady.tex`, zwykłą wersję buduje `latex/main.tex`.
- Czerwona falowana kreska w notatkach oznacza początek kolejnego wykładu.
  Wstawiaj tam `\poczatekwykladu{numer}`; znacznik jest widoczny tylko
  w wersji z chronologią, także w spisie treści. Nie resetuje liczników.
  Nie wyznaczaj nowych granic wyłącznie na podstawie dat plików.
- Definicje, przykłady, twierdzenia, fakty, lematy, wnioski i uwagi mają osobne
  liczniki ciągłe przez cały rozdział, resetowane wyłącznie przy `\chapter`.
  Sekcje i podsekcje nie resetują liczników. Numer ma postać `rozdział.numer`,
  np. Definicja 1.1, Definicja 1.2 oraz osobno Przykład 1.1, Przykład 1.2.
- Oryginalne materiały kopiuj do `materialy/RRRR-MM-DD/`; nie usuwaj ich z Pobranych.
- Wszystkie rysunki i ich edytowalne źródła umieszczaj osobno w `grafika/`.
  Stosuj `\label`, `\ref` i względne ścieżki.
- Nie zgaduj nieczytelnych treści; zapisuj istotne niejasności w opisie materiałów
  i wyjaśniaj je z użytkownikiem. Nie dopisuj nowych tematów bez materiałów.
- Po każdej zmianie uruchom `kompiluj.ps1`, sprawdź odnośniki i wygląd PDF-a.
  Oba najnowsze PDF-y mają być dostępne obok folderu `projekt/` i wersjonowane
  w głównym katalogu repozytorium. Nie twórz dodatkowych kopii w projekcie.
- Wersjonuj źródła, materiały, grafikę i aktualny PDF. Repozytorium ma być publiczne
  zgodnie z poleceniem użytkownika z 8 października 2026 r.

## EasyShut

Podczas pracy używaj `C:\Users\szymo\AppData\Local\Programs\easyshut\EasyShut.exe -n`
i sprawdzaj `-status`. Przed uruchomieniem upewnij się, że pomoc/status
potwierdza respektowanie wygaszania Windows bez `-screen_on`.
Nie dodawaj `-screen_on`, nie ustawiaj czasowego wyłączenia, nie zamykaj
głównego okna EasyShut. Po pracy pozostaw tryb „Nigdy” i komputer włączony.

