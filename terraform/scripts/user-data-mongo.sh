    #!/bin/bash
    sudo apt-get update -y
    sudo apt-get upgrade -y
    sudo apt-get install -y mongodb

    # Configurar MongoDB
    sudo sed -i 's/bindIp: 127.0.0.1/bindIp: 0.0.0.0/' /etc/mongodb.conf
    sudo service mongodb restart