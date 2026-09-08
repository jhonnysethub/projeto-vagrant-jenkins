pipeline {
    agent any

    stages {

        // O Jenkins faz o checkout automaticamente em um Pipeline Declarativo.
        // Por isso, não precisamos de um stage Checkout manual aqui.

        // Entra na pasta app/ e instala as dependências.
        // O npm ci usa o package-lock.json para instalar exatamente
        // as versões registradas no projeto.
        stage('Instalar dependências') {
            steps {
                dir('app') {
                    sh 'npm ci'
                }
            }
        }

        // Executa os testes definidos no package.json
        // dentro da pasta app/.
        stage('Testes') {
            steps {
                dir('app') {
                    sh 'npm test'
                }
            }
        }

        // Executa o script de build definido no package.json
        // dentro da pasta app/.
        stage('Build') {
            steps {
                dir('app') {
                    sh 'npm run build'
                }
            }
        }
    }
}