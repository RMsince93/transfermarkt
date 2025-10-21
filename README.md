# transfermarkt

Replica do Transfermarkt construída com Ruby on Rails.

## Pré-requisitos
- Ruby 3.2
- Rails 7
- PostgreSQL

## Configuração local
1. Instalar as gems: `bundle install`
2. Preparar a base de dados: `bin/rails db:setup`
3. (Opcional) Popular dados demo: carregar os scripts em `db/seeds`
4. Arrancar aplicação: `bin/dev`

## Testes
```
bin/rails test
```

## Deploy
Este projecto inclui configuração base para Kamal (`.kamal/`) e GitHub Actions (`.github/workflows/ci.yml`). Ajusta as variáveis de ambiente e segredos conforme o teu ambiente de produção.
