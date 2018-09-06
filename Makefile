MOCHA = mocha
NODE = node
NPM = npm
RM = rm
TOUCH = touch

.DEFAULT_GOAL := default
.PHONY: clean dependency test

default:

clean:

dependency: node_modules

node_modules: package.json
	$(NPM) install
	$(TOUCH) $@

test: node_modules
	$(MOCHA) --recursive test
