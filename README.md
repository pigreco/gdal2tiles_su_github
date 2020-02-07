# Pubblicare mappe a tasselli su github

La procedura base è questa: si creano i tasselli, si pubblicano su un repo github e si abilitano le *github pages* sul *repository*.

## generazione dei tasselli

Si possono generare con [`gdal2tiles`](https://gdal.org/programs/gdal2tiles.html). Con la geotiff di questo repo:

```
gdal2tiles.py index50kP2.tif
```

In output verrà creata la cartella `index50kP2` che contiene i tasselli.

## URL dei tasselli

Una volta pubblicata la cartella che contiene i tasselli su un *repository* github, bisogna attivare le *github pages*. Si va nei *settings* del repo

![](https://i.imgur.com/7Hn8DOi.png)

L'URL del *repository* è evidenziato nella striscia verde. Quindi quello della cartella dei tasselli è in questo caso `https://aborruso.github.io/gdal2tiles_su_github/index50kP2/`.

Per utilizzare questa sorgente in QGIS, bisogna creare un layer `XYZ` con questo URL

```
https://aborruso.github.io/gdal2tiles_su_github/index50kP2/{z}/{x}/{-y}.png
```


