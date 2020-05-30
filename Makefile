include Makefile.template

GITHUB_ROOT = https://github.com/mists-aside

## Add your make instructions here

configure: ## Configure and Init the code dependencies
	@echo "Configure and Init the code dependencies"

test: ## Run Tests
	@echo "Run Tests"

build: doc-tempjs ## Build Application
	git add .
	git commit -am "update $(date)"
	git push origin master

doc-ts:
	git clone $(GITHUB_ROOT)/$(REPO)
	cd $(REPO); npm i; npm run doc; cp -rdf doc ../$(REPO)_doc
	rm -rf $(REPO)
	mv $(REPO)_doc $(REPO)

doc-tempjs:
	make doc-ts REPO=tempjs


install: ## Install Application
	@echo 'Install Instructions'

uninstall: ## Uninstall Application
	@echo 'Uninstall Instructions'
