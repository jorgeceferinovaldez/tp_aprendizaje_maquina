install:
	@( \
		if [ ! -d .venv ]; then python3 -m venv --copies .venv; fi; \
		source .venv/bin/activate; \
		pip install -qU pip; \
		pip install -r requirements.txt; \
	)

setup:
	@if [ ! -f .env ] ; then cp .env.mock .env ; fi;
	@make install;

# Limpia el proyecto (elimina el entorno virtual)
clean:
    @echo "Limpiando el proyecto..."
    @rm -rf $(VENV)