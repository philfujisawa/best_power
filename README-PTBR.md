## 🌐 Site de Automação com Docker

O projeto **Site de Automação com Docker** com melhorias de [Philippe Fujisawa](https://github.com/philfujisawa)!  
🚀 Este guia ajudará você a configurar e executar uma aplicação web local usando o Docker.  
É projetado para ser um ***SITE PARA TESTES DE AUTOMAÇÃO WEB E API***. Vamos começar! ✨

---

### ℹ️ Sobre

Este projeto é baseado no trabalho original de [brunobatista25](https://github.com/brunobatista25)

---

### ✅ Prerequisitos

Antes de começar, certifique-se de que você tem o seguinte instalado no seu sistema:
- 🖥️ **Sistema Operacional**: Windows (com [WSL 2](https://learn.microsoft.com/en-us/windows/wsl/) habilitado)
- 🖥️ **RUBY Devkit**: Instale o kit na máquina ([Download Ruby+Devkit 3.3.6-2](https://rubyinstaller.org/downloads/))
- 🐋 **Docker Desktop**: Última versão instalada e em execução ([Baixar Docker Desktop](https://www.docker.com/products/docker-desktop))
- 🛠️ **Git**: Instalado na sua máquina ([Baixar Git](https://git-scm.com/))

---

### 🚀 Começando - Passo 0

#### 🐳 Instale o Docker Desktop, abra o Docker e vá para o Passo 2 (Se o Docker não abrir, por favor siga para o Passo 1)

### 🟡 Passo 1: Habilite o WSL 2 e Configure o Docker Desktop

Habilite o recurso WSL
```bash
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```
Habilite a Plataforma de Máquina Virtual
```bash
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```
Baixe e instale o pacote de atualização do WSL
Link: https://aka.ms/wsl2kernel

Liste as distribuições Linux disponíveis
```bash
wsl --list --online
```
Instale o Ubuntu ou qualquer distribuição de sua preferência
```bash
wsl --install -d Ubuntu
```
Defina o WSL 2 como a versão padrão
```bash
wsl --set-default-version 2
```
Reinicie o computador e certifique-se de que o Docker Desktop abre corretamente

### 🟢 Passo 2: Clone e Execute o Projeto

Clone o repositório
```bash
git clone https://github.com/brunobatista25/best_power.git
```
Acesse o diretório do projeto
```bash
cd best_power
```
Construa a imagem Docker
```bash
docker build -t imagem_site .
```
Inicie os serviços Docker
```bash
docker-compose up
```
Abra o navegador e acesse o site local
🌐 http://localhost:3000/

### 🟠 Passo 3: Comandos Adicionais

Parar a aplicação
```bash
docker-compose down
```
Reiniciar a aplicação
```bash
docker-compose up
```
Verificar se os contêineres do Docker estão em execução
```bash
docker ps
```
**💡 Notas Adicionais**

**Dica para Iniciantes:**: Se você encontrar problemas com o Docker Desktop, revise os passos de configuração do WSL 2.
Para usar este projeto para testes, basta abrir o Docker, iniciar este projeto com ```docker-compose up``` e visitar o link para garantir que está **ok**.
Em seguida, você pode criar um novo projeto e realizar os testes Web ou de API.

**Acesso ao Navegador**: Certifique-se de usar 🌐 http://localhost:3000/ para acessar o site. Se a porta for diferente, verifique seu arquivo docker-compose.yml.

**Parar os Serviços**: Use ```docker-compose down``` para liberar recursos após os testes.

**✨ Melhorias**
Aqui estão algumas das melhorias que coloquei no projeto até então:

🛠️ Atualização e conserto para a versão corrente do Ruby e de algumas gems evitando falhas em rodar do Docker ou conflitos com o RBENV no Windows.
🤖 README adicionado, com um guia completo para uso.

🤝Muito Obrigado!🤝