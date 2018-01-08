docker-start:
	docker-compose up -d

docker-stop:
	docker-compose down

.PHONY: docker-start docker-stop
