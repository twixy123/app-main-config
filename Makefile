run:
	docker run -d -p 3000:3000 -v logs:/app/data --rm --name logsapp logsapp:volumes
stop:
	docker stop logsapp
