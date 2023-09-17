VENV = .venv
PIP = $(VENV)/bin/pip3

install: requirements.txt
	rm -rf $(VENV)
	python3 -m venv $(VENV)
	$(PIP) install --upgrade pip
	$(PIP) install -r requirements.txt --no-cache-dir