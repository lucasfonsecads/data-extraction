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