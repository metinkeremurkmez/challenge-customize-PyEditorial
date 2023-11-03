setup:
	#echo "POSTGRES_PASSWORD=great123" > .env
	#echo "POSTGRES_USER=postgres" >> .env
	#echo "POSTGRES_DB=PyEditorial" >> .env
	#echo "POSTGRES_HOST=db" >> .env
	#echo "POSTGRES_PORT=5432" >> .env
	#echo "PGUSER=postgres" >> .env

	openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 -keyout ./nginx-config/nginx-selfsigned.key -out ./nginx-config/nginx-selfsigned.crt -subj "/C=US/ST=New York/L=New York/O=MyOrg/OU=MyUnit/CN=mydomain.com"

	docker-compose up -d

format:
	isort .
	autopep8 --in-place *.py
	flake8 .
