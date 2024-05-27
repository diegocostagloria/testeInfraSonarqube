# Análise Estática de Código para Projetos de Infraestrutura

Este repositório contém uma configuração de exemplo para realizar análise estática de código em projetos de infraestrutura que utilizam Terraform, Docker e Kubernetes, integrando com o SonarQube e GitHub Actions.

## Configuração

### Requisitos

- SonarQube instalado e configurado.
- Tokens de autenticação para o SonarQube configurados como Secrets no GitHub.
- Plugins para Terraform, Docker e Kubernetes instalados no SonarQube.

### Estrutura do Projeto

- `terraform/`: Diretório contendo os arquivos Terraform.
- `Dockerfile`: Arquivo Docker para construção de imagens.
- `kubernetes/`: Diretório contendo os arquivos de configuração do Kubernetes.

### Configuração do GitHub Actions

O arquivo de workflow `sonar-analysis.yml` está localizado em `.github/workflows/`. Este workflow realiza as seguintes ações:

1. Faz o checkout do código.
2. Configura o ambiente JDK 11.
3. Instala o SonarQube Scanner.
4. Executa linters para Terraform, Docker e Kubernetes.
5. Executa o SonarQube Scanner para enviar os resultados da análise para o SonarQube.

### Como Executar

1. Configure os tokens de autenticação e a URL do SonarQube como Secrets no GitHub:
   - `SONAR_HOST_URL`
   - `SONAR_TOKEN`

2. Faça push das mudanças para o repositório ou crie um pull request. O workflow do GitHub Actions será acionado automaticamente.

### Plugins Utilizados

- [SonarQube Terraform](https://github.com/racooper/sonar-terraform)
- [SonarQube Docker](https://github.com/sbaudoin/sonar-docker)
- [KubeLinter](https://github.com/stackrox/kube-linter)


