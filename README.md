# PandocReportTemplate
Tu plantilla de pandoc para la universidad

## Intro

Hola, espero que sea de utilidad esta **plantilla de Markdown**. Básicamente lo que escribas usando la sintaxis fácil que
tiene este lenguaje de marcado y modificando opciones a tu gusto, acabarás teniendo un pdf bastante bonito (diría yo
vamos) hecho desde Latex.

## Requisitos

He intentado hacer esto lo más fácil de instalar posible. Te recomendaría estar en **Ubuntu >=16**;
Windows o Mac requeriría algunos bastantes cambios en mi código...
Ejecutas estos comandos, clonas mi repositorio y a turrar al lector:

1. `pandoc` es esencial como podrás imaginar:
```
sudo apt-get install -y doxygen valgrind texlive texlive-fonts-extra texlive-latex-extra texlive-lang-spanish pandoc
```
2. `xetex` es un motor de Latex que me permitía hacer más cosas para esta plantilla:
```
sudo apt-get install texlive-xetex
```
3. Este último es culpa mía, pero yo escribo en Arial y para eso hay que instalarse `ttf-mscorefonts-installer`:
```
wget http://ftp.de.debian.org/debian/pool/contrib/m/msttcorefonts/ttf-mscorefonts-installer_3.6_all.deb
sudo dpkg -i ttf-mscorefonts-installer_3.6_all.deb
```

## Tutorial

Aquí voy a hablar sobre el *workflow* (o flujo de trabajo). Para cómo escribir Markdown en sí hay cientos de tutoriales.
Dejo [éste enlace](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) por si eres nuevo.

### Opciones del documento

En la carpeta `meta`, **editamos el fichero `metadata.yaml`**, que contiene parámetros para que el documento sea tuyo y no
te expulsen de la universidad por política de copia. Te destaco los parámetros que no me parecen obvios:

* `author` the permite añadir los autores que quieras (hasta que deje de quedar bonito en la portada), recuerda añadir el `-`
* `informepara` se pone a 1 si este informe es para alguien. En dicho caso, los logos de las empresas (hasta tres) se van indicando así:
  ```
  logoa:"logos/empresa-a-logo.png"
  logoascale: 0.7
  ```
  Con `logox` pones el nombre de la imagen que es el logo de la empresa 'x' y con `logoxscale` ajustas el tamaño del logo.
* Con `logo` y`logoheader` (usando opcionalmente `logoscale` y `logoheaderscale`) puedes hacer igualmente si, por un casual, tu informe no es para la UAM.
* `versiones` indica el número de versión del documento. Déjalo a cero si no es estricto hacer seguimiento del historial
de versiones. De lo contrario aparecerá dicha versión en la portada pero tendrás que modificar la tabla en `template/template.tex`
* `resumen` está a '1' si hay resumen del documento (que se escribe en `preamble/summary.md`), 0 en caso contrario.
* `figuras` y `tablas` similar a lo anterior: '1' para incluir índice de figuras/tablas, 0 en caso contrario.
* Puedes añadir `date` si no quieres que se enteren de la fecha en la que compilaste este documento...

De momento **no he puesto opciones para colores** y demás. Quizás en un futuro lo haga, pero de momento te tocaría trastear con
`template/template.tex`. Estará lo que buscas muy probablemente en "IMPORTANTE: MACROS DEL DOCUMENTO", en las primeras líneas
de después de los *imports* de *packages*.

### ¡Ordena tus imágenes!

En `logos` se colocan los logos, y en `img` las imágenes que necesites a lo largo del documento. No he dejado la ruta predefinida
para que puedas colocarlo donde quieras, pero ya que estás ponte este directorio como carpeta de descargas si quieres
tenerlo desordenado.

### ¡A escribir!

En `caps` irás creando los `.md` que veas necesarios para redactar el documento en sintaxis Markdown. Puedes estructurarlos
como quieras, pero ojo:

* Se incluirán al documento final en orden alfabético: Ni yo ni la plantilla somos adivinos. Te recomiendo ir escribiendo por capítulos así:
```
01_introduccion.md
02_motivacion.md
03_desarrollo.md
...
08_conclusiones.md

```

* Un nuevo `.md` no implica un nuevo capítulo: Eso no ocurrirá hasta que no lo dejes claro en sintaxis md, es decir:
```
#Esto es el inicio de un capítulo

#Y esto el del siguiente
```

### ¿Anexos?

Cualquier anexo que necesites se escribirá en `appends/`. Mismas advertencias que en paso anterior: orden alfabético e
inicio de capítulos.

### ¡FIN!

Ya solo queda generar el `.pdf`. Simplemente, desde la raíz de este repositorio (desde donde puedes acceder a `meta`, `img`, etc.), ejecuta:
```
make pdf
```
Y lo tendrás en `My_Report.pdf`.


## Licencia

© Manuel Soto Jiménez, 2020.

## ¿Dudas, sugerencias?

No sé si esto lo usará alguien, pero cualquier error, comentario o *feedback* me tienes:

* En los *Issues* de este repositorio
* En mi correo institucional (a partir de 2021 supongo que no podré leerte): [manuel.sotoj@estudiante.uam.es](mailto:manuel.sotoj@estudiante.uam.es)
* En mi correo usual: [manuel.sj.linares@gmail.com](mailto:manuel.sj.linares@gmail.com)

Agradecimientos a [Afi](https://www.afi.es/), que tenían una preciosa plantilla parecida a esta en Word en la cual me he
basado en mayor parte.




