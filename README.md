# Whiteboard-tgc

Aplicación de colección de cartas (Personajes) para la empresa Whiteboard

## Especificaciones

* Ruby version
    = 3.0.2

* Rails version
    = 6.1.4

* Configuración e instalación
    1. Clonar repositorio.
    2. Instalar Docker Desktop (Engine para Linux).
        - [Mac](https://docs.docker.com/desktop/mac/install/)
        - [Windows](https://docs.docker.com/desktop/windows/install/)
        - [Linux](https://docs.docker.com/engine/install/)
    3. Ejecutar comandos para construir y disponibilizar Docker. 
        ```
        docker-compose build # Construye las imágenes.
        docker-compose up # Carga el aplicativo.
        docker-compose run web yarn install # Instala dependencias para front.
        docker-compose run web rake db:create # Crea las bases de datos.
        docker-compose run web rake db:migrate # Ejecuta las migraciones necesarias.
        ```
    5. Levantar Docker. `docker compose up -d`

## Pasos finales

Luego de configurar e instalar todo lo necesario acceda al aplicativo a través de [http://localhost:3000](http://localhost:3000)
