# Zasady rozwijania skryptu

Cały projekt, repozytorium Git i pliki robocze znajdują się w podfolderze
`projekt/`; dokument główny względem tego katalogu: `latex/main.tex`.
W katalogu nadrzędnym przedmiotu pozostają wyłącznie folder `projekt/`
i najnowszy `Teoria-miary.pdf`.
Ten sam układ obowiązuje w głównym katalogu repozytorium na GitHubie.
Repozytorium obejmuje katalog przedmiotu, a lokalne metadane Git pozostają
w `projekt/.git` z ustawieniem `core.worktree=../..`.
Polecenia Git wykonuj z folderu `projekt/` (lub przez `git -C projekt ...`).
Nie przenoś ponownie katalogu głównego repozytorium do folderu `projekt/`.

- Przepisuj dostarczone notatki i zdjęcia po polsku do odpowiednich rozdziałów.
- Zachowuj PL Roman 12 pt, klasyczny skład oraz czarne, klikalne odnośniki.
- Nie umieszczaj w skrypcie informacji o dacie otrzymania materiałów.
- Definicje, przykłady, twierdzenia, fakty, lematy, wnioski i uwagi mają osobne
  liczniki resetowane przy każdej `\section`, wspólne dla jej podsekcji.
  Numer ma postać `rozdział.sekcja.numer`, np. Definicja 1.3.1 i Fakt 1.3.1.
- Oryginalne materiały kopiuj do `materialy/RRRR-MM-DD/`; nie usuwaj ich z Pobranych.
- Wszystkie rysunki i ich edytowalne źródła umieszczaj osobno w `grafika/`.
  Stosuj `\label`, `\ref` i względne ścieżki.
- Nie zgaduj nieczytelnych treści; zapisuj istotne niejasności w opisie materiałów
  i wyjaśniaj je z użytkownikiem. Nie dopisuj nowych tematów bez materiałów.
- Po każdej zmianie uruchom `kompiluj.ps1`, sprawdź odnośniki i wygląd PDF-a.
  Najnowszy PDF ma być dostępny jako `Teoria-miary.pdf`
  w katalogu nadrzędnym, obok folderu `projekt/`. Ten PDF jest wersjonowany
  bezpośrednio w głównym katalogu repozytorium; nie twórz dodatkowej kopii
  w folderze `projekt/`.
- Wersjonuj źródła, materiały, grafikę i aktualny PDF. Repozytorium ma być publiczne
  zgodnie z poleceniem użytkownika z 8 października 2026 r.

## EasyShut

Podczas pracy używaj `C:\Users\szymo\AppData\Local\Programs\easyshut\EasyShut.exe -n`
i sprawdzaj `-status`. Przed uruchomieniem upewnij się, że pomoc/status
potwierdza respektowanie wygaszania Windows bez `-screen_on`.
Nie dodawaj `-screen_on`, nie ustawiaj czasowego wyłączenia, nie zamykaj
głównego okna EasyShut. Po pracy pozostaw tryb „Nigdy” i komputer włączony.

