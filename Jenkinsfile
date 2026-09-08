pipeline {
    agent any

    stages {

        // Baixa o código do repositório Git configurado no Jenkins
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        // Instala as dependências exatamente como estão definidas
        // no package-lock.json
        stage('Instalar dependências') {
            steps {
                sh 'npm ci'
            }
        }

        // Executa os testes automatizados definidos no package.json
        stage('Testes') {
            steps {
                sh 'npm test'
            }
        }

        // Executa o script de build definido no package.json
        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
    }
}