# 🛍️ Sistema de Vendas - API Node.js

![Node.js](https://img.shields.io/badge/Node.js-22.1.0-green)
![Express](https://img.shields.io/badge/Express-4.16.1-lightgrey)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-15.13.1-blue)

Sistema de gerenciamento de vendas, produtos e usuários com autenticação segura para uma festa junina fictícia em uma paróquia.

## 📋 Índice
- [Funcionalidades](#✨-funcionalidades)
- [Tecnologias](#🔧-tecnologias)
- [Instalação](#🚀-instalação)
- [Estrutura do Projeto](#📂-estrutura-do-projeto)
- [Contribuição](#🤝-contribuição)
- [Contato](#💬-contato)

## ✨ Funcionalidades
- ✅ Autenticação com JWT e sessões
- ✅ CRUD completo de produtos
- ✅ Registro de vendas com cálculo automático de totais
- ✅ Middlewares de segurança
- ✅ Banco de dados PostgreSQL
- ✅ Gestão de usuários

## 🔧 Tecnologias
| Tecnologia       | Descrição                          |
|------------------|------------------------------------|
| Node.js          | Ambiente de execução JavaScript    |
| Express          | Framework para construção da API   |
| PostgreSQL       | Banco de dados relacional          |
| JWT              | Autenticação por tokens            |
| bcrypt           | Criptografia de senhas             |
| express-session  | Gerenciamento de sessões           |
| dotenv           | Gerenciamento de variáveis de ambiente |

## 🚀 Instalação

1. **Pré-requisitos**
   - Node.js (v18 ou superior)
   - PostgreSQL (v15 ou superior)
   - Git (opcional)

2. **Clonar o repositório**
   ```bash
   git clone https://github.com/aclaracastro/projeto-paroquia.git

   cd projeto-paroquia

3. **Instalar as dependências do projeto**
   ```bash
    npm install 

4. **Configure o banco de dados**
    ```bash
    psql -U seu_usuario -d nome_banco -f tabelas.sql

5. **Inicie o servidor**
    ```bash
    npm start 

    http://localhost:3000/
    
## 📂 Estrutura do projeto

    projeto-paroquia/
    ├── config/
    │   └── db.js
    ├── controllers/
    │   ├── authController.js
    │   ├── productController.js
    │   └── vendaController.js
    ├── dbjs/
    │   ├── connection.js
    │   └── models/
    ├── middleware/
    │   ├── auth.js
    │   └── validations.js
    ├── routes/
    │   ├── authRoutes.js
    │   ├── productRoutes.js
    │   └── vendaRoutes.js
    ├── .env.example
    ├── tabelas.sql
    ├── app.js
    └── package.json

## 📖 Referências

Documentação oficial e recursos utilizados no projeto:

### Bancos de Dados
- [PostgreSQL 15 Documentation](https://www.postgresql.org/files/documentation/pdf/15/postgresql-15-A4.pdf) 

### Frontend 
- [Bootstrap 5 Getting Started](https://getbootstrap.com/docs/5.0/getting-started/introduction/) 
- [Bootstrap 5 Modals](https://getbootstrap.com/docs/5.0/components/modal/) 

### Backend
- [Node.js Documentation](https://nodejs.org/docs/latest/api/) 
- [Express.js Documentation](https://expressjs.com/pt-br/) 

### Autenticação
- [JWT Introduction](https://jwt.io/introduction/) 
- [bcrypt.js](https://www.npmjs.com/package/bcrypt) 


## 🤝 Contribuição
- Faça um fork do projeto
- Crie uma branch (git checkout -b feature/nova-feature)
- Commit suas alterações (git commit -m 'Adiciona nova feature')
- Push para a branch (git push origin feature/nova-feature)
- Abra um Pull Request


## 💬 Contato
**Dúvidas ou sugestões?**  
- Me envie uma mensagem no github: [@aclaracastro](https://github.com/aclaracastro)  
- Pelo email: aclaracastro5@gmail.com
- Pelo Linkedin: [@ana-clara-castro](https://www.linkedin.com/in/ana-clara-castro-/)







