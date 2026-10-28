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
- Rozdział 0 „Podstawowe pojęcia” obejmuje sekcje 0.1–0.4: odcinki
  i prostokąty, prostą rozszerzoną, granice ciągów zbiorów oraz ich przykłady.
  Rozdział 1 „Struktury na zbiorach” zaczyna się od definicji
  ciała i sigma-ciała. Granice wykładów są niezależne od granic rozdziałów.
- Rozdział 2 „Miara” zaczyna się od funkcji zbioru i addytywności.
  Wykład 4 obejmuje sekcje 1.11–1.12 o zbiorach borelowskich, a następnie
  początek rozdziału 2. Zdjęcia IMG_6933–IMG_6944 mają ustaloną kolejność.
- Wykład 5 zaczyna się od ciągłości miary w sekcji 2.4, po czerwonej kresce
  w nowych notatkach. Pozostaje w rozdziale 2, z ciągłą numeracją elementów.
- Wykład 6 zaczyna się przed sekcją 2.8, po czerwonej kresce za dowodem
  podaddytywności miary zewnętrznej. Obejmuje też miary zewnętrzne,
  warunek Carathéodory'ego i własności miary Lebesgue'a (sekcje 2.9–2.11).
- Wykład 7 zaczyna się od dystrybuant miar w sekcji 2.12.
  Nagłówek „Funkcje mierzalne” z IMG_7026 rozpoczyna rozdział 3.
  Zachowuj normalizację dystrybuant z tablicy: granica w zerze z lewej
  wynosi zero, a F_mu(0)=mu({0}); nie zastępuj jej konwencją probabilistyczną.
  Materiały kończą się dowodem mierzalności f+c i cf, po przypadku c=0.
- W obu wariantach umieszczaj nienumerowany znacznik „Limbo” przed sekcją
  2.8 i drugi, o tym samym brzmieniu, po dowodzie braku przeliczalnej
  addytywności lambda* na P(R). Oba mają własne wpisy w spisie treści.
  Znaczniki Limbo pozostają widoczne także bez chronologii wykładów.
- Zachowuj PL Roman 12 pt, klasyczny skład oraz czarne, klikalne odnośniki.
- Stosuj `\pagestyle{plain}`: numery stron wyśrodkowane na dole,
  bez nagłówków z nazwami rozdziałów.
- Pierwszą stronę obu wariantów stanowi wspólna graficzna okładka
  `grafika/okladka.pdf`, składana z `grafika/okladka.tex` i gotowej ilustracji
  `grafika/okladka-kreskowkowa.png`. Postać patrzy w górę; napis
  „PRAWDZIWE σ-CIAŁO” jest wielkimi literami na cokole. Aksjomat wyboru
  ilustruje wybór jednego kwiatu z każdej donicy, z wielokropkiem.
  Po okładce umieszczaj stronę
  z tytułem „Teoria miary” i informacją właściwą dla wariantu, przed spisem treści.
- W repozytorium przechowuj wyłącznie zatwierdzoną okładkę. Podglądy
  i robocze materiały do okładki trzymaj w ignorowanym folderze `build/`.
- Nie umieszczaj w skrypcie informacji o dacie otrzymania materiałów.
- Utrzymuj oba PDF-y z jednej wspólnej treści. Wersję z chronologią buduje
  `latex/main-wyklady.tex`, zwykłą wersję buduje `latex/main.tex`.
- Czerwona falowana kreska w notatkach oznacza początek kolejnego wykładu.
  Wstawiaj tam `\poczatekwykladu{numer}`; znacznik jest widoczny tylko
  w wersji z chronologią, także w spisie treści. Nie resetuje liczników.
  Nie wyznaczaj nowych granic wyłącznie na podstawie dat plików.
- Niebieska falowana kreska oznacza brak w notatkach, nie granicę wykładu.
  Porównuj całe notatki ze zdjęciami także poza oznaczonymi miejscami.
  Uwzględniaj pominięte przykłady z tablicy; uzasadniaj ich własności,
  ale nie dodawaj przykładów ani tematów spoza dostarczonych materiałów.
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
- Wersjonuj źródła, materiały, grafikę i aktualne PDF-y. Repozytorium
  `https://github.com/szymongazinski/teoria-miary-skrypt` ma być PUBLICZNE,
  zgodnie z poleceniem użytkownika. Ta zasada obowiązuje także przy przyszłych
  edycjach.
  Nie zmieniaj widoczności bez nowego, wyraźnego polecenia użytkownika.
  Przed wysłaniem zmian sprawdzaj widoczność.
- Stosuj wyłącznie oficjalne, krótkie komunikaty commitów w formie bezosobowej:
  `dodano wykład N` przy dodaniu wykładu, a `Poprawki stylistyczne` przy
  pozostałych zmianach. Nie dodawaj rozwinięcia ani szczegółowych opisów.

## EasyShut

Podczas pracy używaj `C:\Users\szymo\AppData\Local\Programs\easyshut\EasyShut.exe -n`
i sprawdzaj `-status`. Przed uruchomieniem upewnij się, że pomoc/status
potwierdza respektowanie wygaszania Windows bez `-screen_on`.
Nie dodawaj `-screen_on`, nie ustawiaj czasowego wyłączenia, nie zamykaj
głównego okna EasyShut. Po pracy pozostaw tryb „Nigdy” i komputer włączony.

