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

# Clonar el repositorio
sudo git clone https://github.com/Davinderpro01/Proyecto_Graduacion_Definitivo.git

# Entrar en la carpeta "frontend"
cd Proyecto_Graduacion_Definitivo/frontend

# Instalar Angular como superusuario
sudo npm install -g @angular/cli

sudo npm install

echo "export const environment = {
  production: true,
  backendUrl: 'http://${lb_dns}:3000/' 
};" > src/environments/environment.prod.ts

echo "export const environment = {
  production: false,
  backendUrl: 'http://${lb_dns}:3000/' 
};" > src/environments/environment.ts

# Hacer build del proyecto
sudo ng build

# Mover el contenido del build al directorio de Apache
sudo mv dist/* /var/www/html/

sudo mv -f /var/www/html/frontend/* /var/www/html 




# Reiniciar el servicio de Apache
sudo service apache2 restart
