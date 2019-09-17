install_dbs: up
	docker-compose exec web sh -c "RAILS_ENV=development rails db:create; RAILS_ENV=test rails db:create"

migrate: up install_dbs
	docker-compose exec web sh -c "RAILS_ENV=development rails db:migrate; RAILS_ENV=test rails db:migrate"

seed: migrate
	docker-compose exec web sh -c "RAILS_ENV=development rails db:seed"

up:
	docker-compose up --force-recreate -d

down:
	docker-compose down

build:
	docker-compose build
