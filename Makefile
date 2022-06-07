SHELL = /bin/bash
.SHELLFLAGS = -o pipefail -e -c

.PHONY: start
start:
	docker-compose up --detach mongo
	sleep 1
	docker-compose up --detach be fe
	@echo Navigate to http://localhost:3000/ to open the dashboard

.PHONY: tools
tools:
	docker-compose up --detach mongo-express
	@echo Navigate to http://localhost:9091/ to open Mongo-Express a web UI for Mongo DB

.PHONY: stop
stop:
	docker-compose down

.PHONY: clean
clean:
	docker-compose down --volumes


