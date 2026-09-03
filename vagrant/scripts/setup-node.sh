#!/bin/bash

set -e

echo "Atualizando pacotes..."
apt-get update

echo "Instalando dependências..."
apt-get install -y curl

echo "Configurando Node.js 24 LTS..."
curl -fsSL https://deb.nodesource.com/setup_24.x -o /tmp/nodesource_setup.sh
bash /tmp/nodesource_setup.sh

echo "Instalando Node.js..."
apt-get install -y nodejs

echo "Verificando instalação..."
node --version
npm --version

echo "Node.js instalado com sucesso!"