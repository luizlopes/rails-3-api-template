# README

This is a Rails API template repository with the following stuff:

* Docker

* Rails 7.0.8

* Ruby 3.2.2

* PostgreSQL 12.1

## Running for the first time (with Docker)

### Building the container
 `docker compose build`

### Running the container
 `docker compose up -d`

## Database Setup

`docker-commpose exec database exec`
`su - postgres`
`psql`
`create user dev_user with createdb login password 'dev_user';`
`ctrl+d`
`ctrl+d`
`docker-compose exec app bundle exec rake db:setup`