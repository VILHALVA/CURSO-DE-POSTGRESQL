# POSTGRESQL - MANUAL
## COMO INSTALAR O POSTGRESQL?
Aqui estão os passos básicos para instalar o PostgreSQL em um sistema Linux (especificamente Ubuntu) e Windows:

### Ubuntu:
1. **Atualize os Repositórios**:
   Abra o terminal e execute os seguintes comandos:
   ```
   sudo apt update
   sudo apt upgrade
   ```

2. **Instale o PostgreSQL**:
   Execute o seguinte comando para instalar o PostgreSQL:
   ```
   sudo apt install postgresql postgresql-contrib
   ```

3. **Verifique a Instalação**:
   Após a instalação, o PostgreSQL deve estar em execução como um serviço. Você pode verificar isso usando:
   ```
   sudo service postgresql status
   ```

4. **Acesso ao Banco de Dados**:
   Por padrão, o PostgreSQL cria um usuário chamado "postgres" durante a instalação. Você pode acessar o prompt do PostgreSQL com este usuário usando:
   ```
   sudo -u postgres psql
   ```

### Windows:
1. **Baixe o Instalador**:
   Acesse o site oficial do [PostgreSQL](https://www.postgresql.org/download/) e baixe o instalador para Windows.

2. **Execute o Instalador**:
   Execute o arquivo baixado e siga as instruções do assistente de instalação. Você pode optar por instalar o PostgreSQL Server, pgAdmin (interface gráfica de administração), e outros componentes opcionais.

3. **Configuração**:
   Durante a instalação, você será solicitado a definir uma senha para o superusuário "postgres" e especificar uma porta para o PostgreSQL. Anote essas informações, pois serão úteis posteriormente.

4. **Verifique a Instalação**:
   Após a instalação, você pode verificar se o PostgreSQL está em execução abrindo o pgAdmin ou usando o prompt de comando.

5. **Acesso ao Banco de Dados**:
   Para acessar o prompt do PostgreSQL, você pode abrir o prompt de comando e usar o comando `psql`, ou usar o pgAdmin para uma interface gráfica.

Depois de instalar o PostgreSQL, você pode começar a criar bancos de dados, tabelas e executar consultas SQL. Certifique-se de consultar a documentação oficial do PostgreSQL para obter mais detalhes sobre sua instalação e configuração específicas para o seu sistema operacional.

## ABRIR PELO CMD:
```bash
psql -U postgres
```
## REINICIAR O SERVIDOR:
Para reiniciar o servidor PostgreSQL, você pode seguir estas etapas:

1. **Usando a ferramenta de serviços do Windows**:
   - Pressione as teclas `Win + R` para abrir a caixa de diálogo "Executar".
   - Digite `services.msc` na caixa de diálogo e pressione Enter. Isso abrirá a janela "Serviços".
   - Na janela "Serviços", procure por um serviço chamado "postgresql-x64-16" (ou algo semelhante, dependendo da sua versão e arquitetura do PostgreSQL).
   - Clique com o botão direito do mouse no serviço do PostgreSQL e selecione "Reiniciar".

2. **Por linha de comando**:
   - Abra o Prompt de Comando como administrador. Para fazer isso, clique com o botão direito do mouse no ícone do Prompt de Comando e selecione "Executar como administrador".
   - No Prompt de Comando, digite o seguinte comando e pressione Enter:
     ```
     net stop postgresql-x64-16
     ```
   - Aguarde até que o serviço seja interrompido. Em seguida, digite o seguinte comando para iniciar o serviço novamente:
     ```
     net start postgresql-x64-16
     ```

Esses métodos irão parar e reiniciar o serviço do PostgreSQL, permitindo que você atualize as configurações ou resolva problemas de autenticação, caso haja algum. Certifique-se de estar logado como um usuário com permissões de administrador para executar essas ações.

## PERMITIR CONEXÃO NO FIREWALL:
Para configurar as regras de firewall no Windows para permitir conexões com o PostgreSQL, siga estas etapas:

1. **Abrir Configurações de Firewall do Windows**:
   - Pressione a tecla `Windows + R` para abrir a caixa de diálogo "Executar".
   - Digite `control firewall.cpl` e pressione Enter. Isso abrirá as configurações de firewall do Windows.

2. **Adicionar Regra de Entrada**:
   - No painel esquerdo, clique em "Configurações avançadas".
   - No painel esquerdo, clique em "Regras de Entrada".
   - No painel direito, clique em "Nova Regra..." para iniciar o assistente de criação de regras.

3. **Selecionar Tipo de Regra**:
   - Selecione "Porta" e clique em "Avançar".

4. **Especificar Detalhes da Porta**:
   - Selecione "TCP".
   - Especifique o número da porta usada pelo PostgreSQL (por padrão, é 5432).
   - Clique em "Avançar".

5. **Selecionar Ação**:
   - Selecione "Permitir a conexão" e clique em "Avançar".

6. **Especificar Perfis de Conexão**:
   - Selecione as opções apropriadas de acordo com a sua rede (pode ser melhor deixar todas marcadas para garantir conectividade).
   - Clique em "Avançar".

7. **Especificar Nome e Descrição**:
   - Dê um nome descritivo para a regra (por exemplo, "PostgreSQL").
   - Adicione uma descrição, se desejar.
   - Clique em "Concluir" para criar a regra.

