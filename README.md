# arkatt
v1.0

z najwazniejszych rzeczy:

* wszystkie opcje GMCP sa wlaczone

* mapki web-clienta gdzie dostepne, zamiast rozy wiatrow

* mapki poza traktem generuja sie w miejscu rozy

* lista postaci z tablic gmcp, tworzy sie w panelu (nie trzeba klikac kondycji), zaleznie od relacji:
- niebieski druzyna / bindy obronne
- czerwony/jasnoczerwony wrogowie i cel ataku / bindy ofensywne
- zielony neutralni / bindy do oceny i aliasy do ataku

* obsluga tf-mappera (mudmappera)i:
- follow
- highlight:path /podswietlanie trasy
- rebind /wyjscia niestandardowe
- command /skryptowanie lokacji

* ziola /zliczanie ziol we wszystkich pojemnikach, opisy / kategoryzacja i dynamiczne aliasy do uzywania

* walka /dynamiczne bindy, opisy cioskiow


INSTALACJA w Windows
1. sciagnac tintin++
2. sciagnac mudmapper 
3. sciagnac skrypty https://github.com/eldakar/arkatt
4. rozpakowac zip do c:/ 
5. uruchomic mudmapper
6. zaladowac plik mapy c:/arkatt-master/mapa.map
7. uruchomic tintin++
8. komenda: #read /cygdrive/c/arkatt-master/m_win.tin

INSTALACJA w LINUX/UNIX
4. rozpakowac gdziekolwiek, trzeba podmienic sciezke w pliku m.tin (linia 1 i linia 6)
8. wejsc do katalogu arkatt/maps i wywolac gcc showmap.c -o showmap - to modul ktory buduje mapki z plikow web-clienta
9. komenda: #read sciezka/m.tin 

10. alias nazabij zabij -> na sztywno mam sposob ataku w tej wersji

Jak znajde czas dodam jakas dokumentacje. W miedzyczasie, zalaczam opis klawiszy do walki:
http://imgur.com/a/uznR2
