# Usar la imagen oficial de Jenkins LTS como base
FROM jenkins/jenkins:lts

# Cambiar al usuario root para instalar paquetes
USER root

# Instalar Node.js
RUN apt update && \
    apt install -y curl software-properties-common && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt install -y nodejs

# Cambiar de nuevo al usuario jenkins
USER jenkins

