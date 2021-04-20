.PHONY: qa-script

qa-script:
	mkdir -p $(WORKSPACE)/output/qa-report && \
	cd /home/nithya/Downloads && \
	echo "$(ENVIRONMENT)" && \
	echo "${ENVIRONMENT}" && \
	newman run Greenway_API_AutomationTrial.postman_collection.json -e parameter-$(ENVIRONMENT).postman_environment.json -rhtmlextra --reporter-htmlextra-export ${WORKSPACE}/GreenWayAPI-GetTables.html
