#!/bin/bash

set -e

echo "Atualizando pacotes..."
apt-get update

echo "Instalando dependências..."
apt-get install -y fontconfig openjdk-21-jre git wget

echo "Verificando Java..."
java -version

echo "Configurando repositório oficial do Jenkins..."
mkdir -p /etc/apt/keyrings

wget -O /etc/apt/keyrings/jenkins-keyring.asc \
    https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key

echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
    https://pkg.jenkins.io/debian-stable binary/ \
    > /etc/apt/sources.list.d/jenkins.list

echo "Atualizando repositórios..."
apt-get update

echo "Instalando Jenkins..."
apt-get install -y jenkins

echo "Habilitando Jenkins para iniciar com o sistema..."
systemctl enable jenkins

echo "Iniciando Jenkins..."
systemctl start jenkins

echo "Verificando Jenkins..."
systemctl --no-pager --full status jenkins

echo "Jenkins instalado e iniciado com sucesso!"