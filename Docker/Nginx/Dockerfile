FROM nginx
# Se declara la base sobre la cual se crea la imagen

COPY [nameApp] /usr/share/nginx/html
# Copiamos el directorio de nuestra app al directorio de Nginx

WORKDIR /usr/share/nginx/html
# se declara el directorio principal del proyecto o app

EXPOSE 80
# Exponemos el puerto 80 para nuestra imagen de nginx

CMD nginx -g 'daemon off;'
# Define el ejecutable predeterminado de la imagen