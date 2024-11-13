# Projeto 001 - Todo List

Este projeto é um CRUD simples para gerenciar tarefas. Ele utiliza o Ruby on Rails para fornecer funcionalidades básicas de criação, leitura, atualização e exclusão de tarefas, com foco na organização e na produtividade.

---

## Funcionalidades

- Adicionar novas tarefas.
- Editar tarefas existentes.
- Marcar tarefas como concluídas ou pendentes.
- Excluir tarefas.

---

## Passo a Passo do Desenvolvimento

### 1. Criar a Estrutura Inicial

1. Crie o projeto Rails:

   ```bash
   rails new todo-list --skip-git
   ```

2. Navegue até o diretório do projeto:
   ```bash
   cd todo-list
   ```

---

### 2. Gerar o Scaffold para Tarefas

1. Gere o scaffold para o modelo de tarefas:

   ```bash
   rails generate scaffold Task title:string description:text completed:boolean
   ```

2. Execute as migrações para criar a tabela no banco de dados:

   ```bash
   rails db:migrate
   ```

3. Configure a rota inicial no arquivo `config/routes.rb`:
   ```ruby
   Rails.application.routes.draw do
     root "tasks#index"
   end
   ```

---

### 3. Testar o CRUD

1. Inicie o servidor Rails:

   ```bash
   rails server
   ```

2. Acesse o aplicativo em: [http://localhost:3000](http://localhost:3000).

3. Teste as funcionalidades de:
   - Adicionar uma nova tarefa.
   - Editar uma tarefa existente.
   - Marcar tarefas como concluídas ou pendentes.
   - Excluir tarefas.

---

## Estrutura do Modelo

O modelo `Task` possui os seguintes atributos:

- `title` (string): O título da tarefa.
- `description` (text): Uma descrição detalhada da tarefa.
- `completed` (boolean): Indica se a tarefa foi concluída.

---

## Como Rodar o Projeto

1. Clone o repositório:

   ```bash
   git clone https://github.com/felipegenuino/projects-with-rails.git
   ```

2. Navegue até o diretório do projeto:

   ```bash
   cd projects-with-rails/e001-todo-list
   ```

3. Instale as dependências:

   ```bash
   bundle install
   ```

4. Inicie o servidor:

   ```bash
   rails server
   ```

5. Acesse no navegador: [http://localhost:3000](http://localhost:3000).

---

## Tecnologias Usadas

- Ruby on Rails

---

Se tiver dúvidas ou sugestões para melhorar este projeto, sinta-se à vontade para abrir uma issue ou enviar um pull request!
