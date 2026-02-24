.PHONY: build serve publish

build:
	rm -r public
	hugo

serve:
	hugo serve

serve-future:
	hugo serve --buildFuture

deploy:
	hugo deploy prod
