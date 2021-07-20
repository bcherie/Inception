all:
	docker-compose -f srcs/docker-compose.yml up --build -d
clean:
	rm -rf /home/bcherie/data/*
logs:
	docker-compose logs
re: clean all
