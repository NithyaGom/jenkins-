qa-script:
	mkdir -p $(WORKSPACE)/output/qa-report
	cd $(WORKSPACE)/QA-Scripts && \
	npm install newman newman-reporter-htmlextra && \
	export PATH=$(WORKSPACE)/QA-Scripts/node_modules/.bin:${PATH} && newman run Greenway_API_AutomationTrial.postman_collection.json -e parameter-$(ENVIRONMENT).postman_environment.json -rhtmlextra --reporter-htmlextra-export $(WORKSPACE)/output/qa-report/GreenWayAPI-GetTables-$(date).html
