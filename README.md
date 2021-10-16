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
    3. Ejecutar comandos dentro de carpeta del proyecto para construir y disponibilizar Docker. 
        ```bash
        docker compose build # Construye las imágenes.
        docker compose up -d # Carga el aplicativo.
        docker compose run web yarn install # Instala dependencias para front.
        docker compose run web rails db:create # Crea las bases de datos.
        docker compose run web rails db:migrate # Ejecuta las migraciones necesarias.
        ```

## Pasos finales

Luego de configurar e instalar todo lo necesario acceda al aplicativo a través de [http://localhost:3000](http://localhost:3000)

##  Envío de correos

Para enviar correos (ej. Recuperación de contraseña), se debe descomentar las siguientes líneas en `config/development.rb` y setear las credenciales del correo de envío, o bien crear los secretos necesarios para su funcionamiento con `rails credentials:edit` dentro del contenedor `web`.

```ruby
config.action_mailer.perform_deliveries = true
config.action_mailer.raise_delivery_errors = true
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
    address:              Rails.application.credentials.email[:address],
    port:                 Rails.application.credentials.email[:port],
    domain:               'mail.google.com',
    user_name:            Rails.application.credentials.email[:username],
    password:             Rails.application.credentials.email[:password],
    authentication:       'plain',
    enable_starttls_auto: true,
    ssl: true
}
```


## Test

Ejecutar comando dentro de carpeta del proyecto para ejecutar tests. 
```bash
docker compose run web rspec
```
