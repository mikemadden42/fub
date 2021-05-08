setup:
	python3 -m venv venv; \
	. venv/bin/activate; \
	pip3 install -r requirements.txt; \

run:
	. venv/bin/activate; \
	python3 fub \

freeze:
	. venv/bin/activate; \
	pip3 install macholib --upgrade; \
	pip3 freeze > requirements.txt; \

.PHONY: freeze run setup
