# has lendi specific tooling for testing

deploy: package
	liam exec -e development -r deployer -- sls deploy

package: install
	sls package

install:
	yarn

clean:
	rm -rf node_modules .serverless