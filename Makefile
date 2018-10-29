dependencies:
	@npm ci

# https://www.npmjs.com/package/pajv
test:
	@npx -q pajv -s events/apigw/proxy-request.json -d samples/apigw/proxy-request.json