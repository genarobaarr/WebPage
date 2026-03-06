# Santabarbara

 Equipo Santabarbara 

 ✝️ Nombrado en honor de nuestro compañero *Rodrigo Santabárbara Murrieta* 2004-2025 ✝️

 * Genaro Alejandro Barradas Sánchez

 * Omar Morales García 

 * Martinez Ramirez Alejandro


## 🐳 Docker

### Requisitos
* Tener [Docker](https://www.docker.com/products/docker-desktop/) instalado y ejecutándose.

### Cómo construir la imagen
Para empaquetar la API en una imagen de Docker, abrir la terminal en la raíz del proyecto y ejecutar:
```bash
docker build -t api-series .
```

### Cómo ejecutar el contenedor
Para levantar el contenedor mapeando el puerto *3000* del host al *3000* del contenedor y pasando la variable de entorno, ejecutar:

```bash
docker run -d -p 3000:3000 --name mi-contenedor-series -e PORT=3000 api-series
```

### Variables de entorno usadas
PORT: Definir el puerto en el que la aplicación de Express estará escuchando (*3000*). Al pasarlo en el comando *docker run* con la bandera *-e*, se evita hardcodear el puerto en el código.

### Pruebas rápidas (Testing API)
Para probar que la API está viva usar un navegador, Postman, o con cURL en la terminal:

1. Health Check (GET)

```bash
curl http://localhost:3000/health
```
2. Ver Listas (GET)

```bash
curl http://localhost:3000/api/listas
```

### Evidencias

#### Evidencia de docker build

![Evidencia de docker build](images\docker_evidence_build.png)

#### Evidencia de docker run

![Evidencia de docker run](images\docker_evidence_run.png)
![Evidencia de docker run en Docker Desktop](images\docker_evidence_runDesktop.png)

#### Evidencia de docker ps

![Evidencia de docker ps](images\docker_evidence_ps.png)

#### Evidencia de requests

<img src="images\docker_evidence_get1.png" width=500>
<img src="images\docker_evidence_get1.png" width=500>
<img src="images\docker_evidence_get2.png" width=500>
<img src="images\docker_evidence_post.png" width=500>
<img src="images\docker_evidence_web.png" width=500>