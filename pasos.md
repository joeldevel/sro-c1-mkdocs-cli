# Pasos

## crear la imagen
Hay que pasarle el usuario y grupo

```bash

 docker build -t desafio/mkdocs:1.0.0 \
  --build-arg USER_ID=$(id -u) \
  --build-arg GROUP_ID=$(id -g) .

```

## crear sitio con mkdocs
```bash

mkdir nuevo-sitio && cd nuevo-sitio

docker run --rm -td -v $(pwd):/home desafio/mkdocs:1.0.0 new .

```

## servir el sitio

```bash

docker run --rm -it -p 8000:8000 \
-v $(pwd):/home desafio/mkdocs:1.0.0 \
serve -a 0.0.0.0:8000 

```
