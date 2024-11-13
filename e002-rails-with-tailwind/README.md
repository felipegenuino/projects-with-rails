# Projeto 002 - Rails with Tailwind

Este projeto demonstra como configurar e usar o Tailwind CSS em uma aplicação Ruby on Rails. Ele destaca a integração do Tailwind com o Rails para criar estilos modernos e responsivos.

---

## Funcionalidades

- Configuração completa do Tailwind CSS no Rails usando o gem `tailwindcss-rails`.
- Uso de classes utilitárias do Tailwind para criar layouts rápidos e consistentes.
- Página inicial estilizada com Tailwind.

---

## Passo a Passo do Desenvolvimento

### 1. Instalar o Tailwind CSS no Rails

1. Adicione a gem `tailwindcss-rails` ao `Gemfile`:

   ```ruby
   gem "tailwindcss-rails"
   ```

2. Instale a gem:

   ```bash
   bundle install
   ```

3. Configure o Tailwind no projeto:

   ```bash
   rails tailwindcss:install
   ```

   Isso irá:

   - Criar o arquivo `tailwind.config.js` para customizações.
   - Configurar o pipeline de assets para usar o Tailwind CSS.
   - Criar o arquivo `app/assets/stylesheets/tailwind.css` com os seguintes imports básicos:
     ```css
     @import "tailwindcss/base";
     @import "tailwindcss/components";
     @import "tailwindcss/utilities";
     ```

---

### 2. Criar uma Página Inicial Estilizada

1. Crie um controller e uma ação para a página inicial:

   ```bash
   rails generate controller Pages home
   ```

2. Configure a rota inicial no arquivo `config/routes.rb`:

   ```ruby
   Rails.application.routes.draw do
     root "pages#home"
   end
   ```

3. Edite a view `app/views/pages/home.html.erb` para incluir o uso do Tailwind:
   ```html
   <div class="p-6 bg-blue-500 text-white text-center">
     <h1 class="text-3xl font-bold">Rails com Tailwind CSS</h1>
     <p class="mt-4 text-lg">
       Este projeto utiliza o Tailwind CSS para criar estilos rápidos e
       modernos.
     </p>
   </div>
   ```

---

### 3. Testar o Projeto

1. Inicie o servidor Rails:

   ```bash
   bin/dev
   ```

2. Acesse o aplicativo em: [http://localhost:3000](http://localhost:3000).

---

## Personalização do Tailwind

Para customizar o Tailwind CSS:

1. Edite o arquivo `tailwind.config.js` na raiz do projeto.
2. Adicione suas configurações personalizadas, como cores, fontes ou breakpoints.

Exemplo de customização de cores:

```javascript
module.exports = {
  theme: {
    extend: {
      colors: {
        primary: "#1a202c",
        secondary: "#2d3748",
        accent: "#38b2ac",
      },
    },
  },
  plugins: [],
};
```

---

## Como Rodar o Projeto

1. Clone o repositório:

   ```bash
   git clone https://github.com/felipegenuino/projects-with-rails.git
   ```

2. Navegue até o diretório do projeto:

   ```bash
   cd projects-with-rails/e002-rails-with-tailwind
   ```

3. Instale as dependências:

   ```bash
   bundle install
   ```

4. Inicie o servidor:

   ```bash
   bin/dev
   ```

5. Acesse no navegador: [http://localhost:3000](http://localhost:3000).

---

## Tecnologias Usadas

- Ruby on Rails
- Tailwind CSS
- Gem `tailwindcss-rails`

---

Se tiver dúvidas ou sugestões para melhorar este projeto, sinta-se à vontade para abrir uma issue ou enviar um pull request!
