# Makefile
install:
	pip install -r requirements.txt

lint:
	flake8 src/ tests/

test:
	pytest tests/

run:
	python scripts/run_etl.py

docker-build:
	docker build -t aws_etl_project .

docker-run:
	docker run --rm aws_etl_project

terraform-init:
	cd infrastructure && terraform init

terraform-apply:
	cd infrastructure && terraform apply -auto-approve

auto-tag:
	git fetch --tags
	VERSION=$(git tag --sort=-v:refname | head -n 1 | awk -F. '{print $1"."$2"."$3+1}')
	git tag VERSION
	git push origin VERSION
