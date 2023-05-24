COMPOSE_FILE = ./srcs/docker-compose.yml

build:
	@mkdir -p /home/mannahri/data/DB
	@mkdir -p /home/mannahri/data/wordpress
	@docker-compose $(COMPOSE_FILE) build
up :
	@docker-compose $(COMPOSE_FILE) up
down :
	@docker-compose $(COMPOSE_FILE) down
clean :
	@docker system prune -af
	@docker volume rm $(docker volume ls -q)
	@docker network rm $(docker network ls -q)