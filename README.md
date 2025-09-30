# Processor-of-manga

Este proyecto esta disenado para poder procesar mangas y poder hacer un traducion mas limpia y rapida, en esta primera version solo se puede traducir mangas, esto se ayuda de la heramienta de gemini cli:

```bash
sudo npm install -g @google/gemini-cli
```
Recuerda para que funcione de forma corecta debes de tener la utima version de node.js instala:
```bash
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt install -y nodejs
```
la primera funcion de este proyecto tienes que tener un archivo ya hecho en pdf con el capitulo, aqui la forma en la que se puede hacer: 
```bash
convert $(ls Raw/*.jpg | sort -V) Raw.pdf
```
Con ello y dentro de la carpeta tendremos de donde se tiene que la raw, se tiene que llamar al directorio de donde este ubicado el ProcesadorManga.sh.
Si quieres evitar poner todo el directorio para la llama puedes crear un alias para ser mas facil:
```bash
alias procesadorManga='~/Documents/ExtratorTexto/ProcesadorManga.sh'
```
Recuerda colocar esto dentro del bash para que la configuracion no se elimine cuando cierres la terminal:
``` bash
nano ~/.bashrc
```
Finalmente con esto solo tendras que ejecutar el Procesador de manga para que funcione:
```bash
procesadorManga Raw.pdf
```
