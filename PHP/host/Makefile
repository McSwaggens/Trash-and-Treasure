all: serve-src

serve-src:
	@php -S localhost:8000 -t src

serve-release:
	@php -S localhost:8000 -t release

compress:
	@grunt

pull:
	@git submodule foreach git pull
