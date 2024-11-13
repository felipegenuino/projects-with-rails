# Projeto 01 - Lista de Tarefas

Este projeto é um CRUD simples para gerenciar tarefas.

### Funcionalidades

- Adicionar, editar e excluir tarefas
- Marcar tarefas como concluídas ou pendentes

### Como Rodar o Projeto

1. Clone o repositório.
2. Navegue até a pasta `D01-TODO-LIST`.
3. Execute `rails server` e acesse `http://localhost:3000`.

### Passo a Passo do Desenvolvimento

#### Estrutura Inicial do Projeto

Criar uma estrutura básica do projeto Rails dentro de um diretório chamado D01-TODO-LIST

```bash
rails new D01-TODO-LIST
```

Navegue até o diretório do projeto:

```bash
cd D01-TODO-LIST
```

---

#### Estrutura Básica do Projeto (CRUD de Tarefas)

**Gerar o Scaffold**:

```bash
rails generate scaffold Task title:string description:text completed:boolean
```

• Isso criará o modelo Task, o controlador e as views para o CRUD básico.
•O campo completed será um boolean que indica se a tarefa foi concluída ou não.

**Executar as Migrações**:

```bash
rails db:migrate
```

**Configurar o Roteamento Inicials**:
No config/routes.rb, defina a root do aplicativo como a index de tarefas:

```bash
root "tasks#index"
```

**Executar o Servidor**:
Inicie o servidor para ver o projeto funcionando:

```bash
rails server
```

Acesse **http://localhost:3000** para verificar se o CRUD de tarefas está funcionando corretamente.

---

### Tarefas de Exemplo

1. **Título:** Comprar mantimentos
   **Descrição:** Fazer uma lista de compras e comprar frutas, legumes e alimentos essenciais para a semana.

2. **Título:** Estudar Ruby on Rails
   **Descrição:** Dedicar pelo menos uma hora para estudar o básico de Rails, incluindo rotas, controladores e modelos.

3. **Título:** Limpar a casa
   **Descrição:** Realizar uma limpeza geral na casa, incluindo a cozinha, banheiro e sala de estar.

4. **Título:** Atualizar currículo
   **Descrição:** Revisar e atualizar o currículo com as últimas experiências e habilidades.

5. **Título:** Fazer exercícios
   **Descrição:** Completar uma rotina de exercícios de 30 minutos para manter a saúde em dia.

6. **Título:** Planejar o orçamento mensal
   **Descrição:** Analisar os gastos do mês e definir um orçamento para as próximas semanas.

7. **Título:** Organizar documentos
   **Descrição:** Separar e organizar documentos importantes em uma pasta adequada.

8. **Título:** Aprender JavaScript
   **Descrição:** Dedicar 45 minutos para aprender sobre funções e manipulação de DOM com JavaScript.

9. **Título:** Preparar apresentação
   **Descrição:** Criar slides e preparar conteúdo para a apresentação de sexta-feira.

10. **Título:** Resolver pendências bancárias
    **Descrição:** Verificar o extrato bancário e resolver qualquer pendência financeira.
