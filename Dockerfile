FROM elixir:1.14-alpine

# Fijamos la variable de entorno para producción
ENV MIX_ENV=prod

# Creamos un directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos los archivos del proyecto al contenedor
COPY . /app

# Instalamos dependencias y compilamos el proyecto
RUN mix local.hex --force && \
    mix local.rebar --force && \
    mix deps.get && \
    mix compile

# Ejecutamos la aplicación al iniciar el contenedor
CMD ["mix", "run", "-e", "DemoElixir.CLI.start()"]