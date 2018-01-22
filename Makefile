monitor:
	@echo "To stop monitoring use CTRL+C"
	while true; do curl localhost; sleep 0.1; echo; done

deploy:
	./deploy.sh