# Utiliser l'image officielle de Node.js comme image de base
FROM node:14-alpine

# Définir le répertoire de travail dans le conteneur
WORKDIR /gestionetudiant

# Copier le fichier package.json et package-lock.json dans le répertoire de travail
COPY package*.json ./

# Installer les dépendances du projet
RUN npm install

# Copier le reste du code source dans le répertoire de travail
COPY . .

# Exposer le port sur lequel l'application s'exécute
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["npm", "start"]