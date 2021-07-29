all:
	docker-compose -f srcs/docker-compose.yaml up --build -d
vclean:
	rm -rf /home/bcherie/data/*
logs:
	docker-compose logs
re:
	clean all

clean:
	docker stop $$(docker ps -a -q)
	docker container prune
	docker image prune -a
