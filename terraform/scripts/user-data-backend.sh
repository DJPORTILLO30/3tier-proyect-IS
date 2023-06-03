#!/bin/bash
apt-get update -y
apt-get upgrade -y
apt-get install -y apache2

# Instalar Node.js como superusuario
sudo apt update
sudo apt install -y nodejs
sudo apt install -y npm

# Verificar la versión de Node.js instalada
node -v


sudo npm cache clean -f
sudo npm install -g n
sudo n stable
sudo n latest

# Clonar el repositorio
git clone https://github.com/Davinderpro01/Proyecto_Graduacion_Definitivo.git

# Entrar en la carpeta "Backend"
cd Proyecto_Graduacion_Definitivo/Backend

# Instalar dependencias
sudo npm install

sudo npm install -g nodemon

sudo npm uninstall bcrypt
sudo npm install bcryptjs
sudo npm install bcrypt

echo "DB_CONNECTION_STRING=mongodb://127.0.0.1:27017/Almacenar_usuarios
claveSecreta='secretKey'
};" > Backend/.env

# Iniciar la aplicación
sudo npm run dev
