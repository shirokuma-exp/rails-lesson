# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
docker build <build contexts> => docker-compose build
docker run <image> => docker-compose up
docker ps => docker-compose ps
docker exec <container> <command> => docker-compose exec <service> <command>

docker-compose up --build: build して run
docker-compose down: stop して rm

Rails の立ち上げ
bundle install は Dockerfile 側で実行するので skip
rails new . --force --database=postgresql --skip-bundle
rails webpacker:install
rails s -b 0.0.0.0
rails db:create

docker-compose build --no-cache