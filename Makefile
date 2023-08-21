COMPOSE_FILE = ./srcs/docker-compose.yml

build:
	@mkdir -p /home/mannahri/data/mariadb
	@mkdir -p /home/mannahri/data/wordpress
	@docker compose -f $(COMPOSE_FILE) up

down :
	@docker compose -f $(COMPOSE_FILE) down

clean :
	@rm -rf /home/mannahri/data
	@docker system prune -af
	@if [ -n "$$(docker volume ls -q)" ]; then docker volume rm $$(docker volume ls -q); fi
	@docker network rm $(docker network ls -q)

fclean: down clean

.PHONY: clean down build re