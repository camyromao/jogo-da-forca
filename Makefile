build:
	docker build . -t hangman

run:
	docker run -it -v $(shell pwd)/hangman:/usr/src/app -p 80:80 --rm hangman rails s -b "0.0.0.0" -p 80

test:
	docker run -it -v $(shell pwd)/hangman:/usr/src/app hangman rspec

console:
	docker run -it -v $(shell pwd)/hangman:/usr/src/app hangman bash
