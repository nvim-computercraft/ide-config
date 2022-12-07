#!/usr/bin/env just --justfile
# Just is a command runner. https://github.com/casey/just
default: lint

lint:
	selene $(git ls-files | grep '\.lua')
