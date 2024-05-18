compose-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

compose-setup:
	docker-compose run --rm app make setup

compose-build:
	docker-compose -f docker-compose.yml build app

compose-start:
	docker-compose run app make start

install:
	npm ci

start:
	npm start

setup: 
	install db-migrate
	npm ci