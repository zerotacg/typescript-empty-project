MOCHA = mocha
NODE = node
NPM = npm
RM = rm
TOUCH = touch

.DEFAULT_GOAL := default
.PHONY: clean dependency test test.unit

default:

clean:

dependency: node_modules

node_modules: package.json
	$(NPM) install
	$(TOUCH) $@

test: node_modules
	$(MOCHA) test/**/*.test.ts

test.unit: node_modules
	$(MOCHA) test/unit/**/*.test.ts
