# Arquitectura de 3 Capas
## _Ingieneria de Software UMG 2023_

![Proyecto Diagrama](https://d1.awsstatic.com/logos/aws-logo-lockups/poweredbyaws/PB_AWS_logo_RGB_REV_SQ.8c88ac215fe4e441dc42865dd6962ed4f444a90d.png)

En este proyecto consiste en el despliegue de una arquitectura de 3 capas en la plataforma de AWS
utilizando como metodologia IAC, para llevar a cabo este objetivo se ha utlizado en este caso 
la plataforma de desarrollo de [Terraform](https://www.terraform.io/)

La principal idea detrás de Terraform es tratar la infraestructura como cualquier otro código. En lugar de realizar configuraciones manuales en el panel de control de un proveedor de nube o ejecutar comandos en la línea de comandos, utilizas un archivo de configuración en formato HCL (HashiCorp Configuration Language) para definir la infraestructura.


## Arquitectura de 3 capas

La arquitectura de 3 capas en AWS se refiere a una estructura de diseño común utilizada para desarrollar aplicaciones escalables y robustas en la nube. Esta arquitectura consta de tres capas principales: capa de presentación, capa de lógica de negocio y capa de almacenamiento de datos. A continuación se describe cada una de estas capas:

Capa de presentación: Esta capa es responsable de interactuar con los usuarios finales y proporcionar una interfaz de usuario. Aquí es donde se gestionan las solicitudes de los usuarios y se generan las respuestas correspondientes. Puede incluir componentes como servidores web, balanceadores de carga y servicios de CDN (Content Delivery Network) para mejorar el rendimiento y la disponibilidad de la aplicación.

Capa de lógica de negocio: En esta capa, se procesa la lógica central de la aplicación. Aquí se lleva a cabo el procesamiento de datos, las operaciones de negocio y la toma de decisiones. Puede incluir instancias de servidores de aplicaciones, funciones sin servidor (serverless functions) o contenedores que ejecutan el código de la aplicación. Esta capa se comunica con la capa de presentación y la capa de almacenamiento de datos para realizar las operaciones requeridas.

Capa de almacenamiento de datos: Esta capa se encarga de almacenar y administrar los datos utilizados por la aplicación. Puede incluir servicios de bases de datos, sistemas de almacenamiento de archivos, colas de mensajes y cachés. Aquí es donde se almacena la información necesaria para que la aplicación funcione correctamente. La capa de almacenamiento de datos se comunica con la capa de lógica de negocio para proporcionar y recibir datos necesarios para las operaciones de la aplicación.

Esta arquitectura de 3 capas en AWS permite una separación clara de responsabilidades y escalabilidad horizontal, lo que facilita la administración y el mantenimiento de las aplicaciones en la nube. Cada capa puede escalarse y modificarse de forma independiente según las necesidades de la aplicación, lo que proporciona flexibilidad y agilidad en el desarrollo y despliegue de aplicaciones en la nube.


### Diagrama de la arquitectura
![Proyecto Diagrama](https://raw.githubusercontent.com/DJPORTILLO30/3tier-proyect-IS/master/img/PROYECTO%20DIAGRAMA.svg)



## Tecnologias

Para poder ejecutar este proyecto necesitas:
- [Instalar Terraform](https://developer.hashicorp.com/terraform/downloads?product_intent=terraform).
- [Crear una cuenta de AWS](https://aws.amazon.com/es/free/?gclid=CjwKCAjwpuajBhBpEiwA_ZtfhWdY0wpuQP-IfvF9AjJS_BBSEpOE9OTplWkPTuEIMaDW9ab5BmiCEBoCGeIQAvD_BwE&trk=91b901b8-15d3-4afd-a4a5-bebbe961a51f&sc_channel=ps&ef_id=CjwKCAjwpuajBhBpEiwA_ZtfhWdY0wpuQP-IfvF9AjJS_BBSEpOE9OTplWkPTuEIMaDW9ab5BmiCEBoCGeIQAvD_BwE:G:s&s_kwcid=AL!4422!3!647999789214!e!!g!!crear%20cuenta%20de%20aws!19677233652!147473979113&all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc&awsf.Free%20Tier%20Types=*all&awsf.Free%20Tier%20Categories=*all).
- Tener acceso a una terminal.
- MongoDB Atlas como motro de base de datos.

## Instalacion

El primer paso es instalar  AWS CLI en tu entorno de trabajo puedes hacerlo [aqui](https://docs.aws.amazon.com/es_es/cli/latest/userguide/getting-started-install.html) , una vez tengas instada la terminal de AWS CLI debes configurar tu perfil y credenciales de AWS pudes consultar esta [guia](https://docs.aws.amazon.com/es_es/cli/latest/userguide/cli-chap-configure.html) para su configuracion.

El siguiente paso es instalar los proveedores de este proyecto, para esto necesitaremos estar en el directorio '/terraform' abre la terminal y ejecuta el siguiente comando

```sh
terraform init
```
Veras como se instalan los paquetes necesarios para la ejecucion del codigo.


Luego debes configurar el archivo variables.tf para configurar los CDIR y la region en la cual quieres hacer el despliegue.

Luego de esto verifica que todos los recursos a crear sean correctos para hacer esto ejecuta el comando

```sh
terraform plan
```

Por ultimo si todos los recursos son correctos, ejecuta el siguiente comando y despliega tu aplicacion

```sh
terraform apply
```

## Extensiones

Extensiones recomendadas de VsCode para este proyecto:

| Extension | Downloadlink |
| ------ | ------ |
| Terraform | https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform |

## Referencias
El proyecto utilizado para el despligue en esta arquitectura es https://github.com/Davinderpro01/Proyecto_Graduacion_Definitivo.git


Si quieres aportar a este proyecto eres libre de hacer un PR con cambios o sugerencias!






