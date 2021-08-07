all:
	docker-compose -f srcs/docker-compose.yaml up --build -d
logs:
	docker-compose logs

clean:
	docker stop $$(docker ps -a -q)
	docker container prune
	docker image prune -a

vclean:
	docker volume rm $$(docker volume ls -q)
