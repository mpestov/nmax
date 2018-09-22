build:
	docker build -t nmax .

test:
	docker run -v ~/www/funbox/nmax/:/nmax --rm nmax rspec spec

bash:
	docker run -v ~/www/funbox/nmax/:/nmax -it --rm nmax bash
