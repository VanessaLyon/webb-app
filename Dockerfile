# Utiliser l'image de base officielle Nginx
FROM nginx:alpine

# Copier les fichiers de votre site web dans le répertoire d'accueil de Nginx
COPY . /usr/share/nginx/html

# Copier le fichier de configuration Nginx personnalisé
COPY nginx.conf /etc/nginx/nginx.conf

# Exposer le port 8080 pour Nginx
EXPOSE 8080

# Lancer Nginx en mode non-démon
CMD ["nginx", "-g", "daemon off;"]
