# Définir l'image de base
FROM node:16

# Créer un répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances du projet
RUN npm install

# Copier les fichiers et dossiers du projet dans le conteneur
COPY . .

# Exposer le port sur lequel l'application va s'exécuter
EXPOSE 3000

# Définir la commande pour démarrer l'application
CMD ["node", "app.js"]
