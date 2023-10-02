up:
	mkdir -p /home/ael-yamo/data/mariadb
	mkdir -p /home/ael-yamo/data/wordpress
	mkdir -p /home/ael-yamo/data/redis
	docker compose up
build:
	mkdir -p /home/ael-yamo/data/mariadb
	mkdir -p /home/ael-yamo/data/wordpress
	mkdir -p /home/ael-yamo/data/redis
	docker compose up --build
stop:
	docker compose stop
start:
	docker compose start
down:
	docker compose down
clean:
	docker compose down -v
	sudo rm -rf /home/ael-yamo/data/mariadb
	sudo rm -rf /home/ael-yamo/data/wordpress
re: clean build
