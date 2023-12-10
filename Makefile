# Makefile

# Define la versión exacta de Python que estás utilizando
PYTHON_VERSION := 3.8.18

# Define el nombre del entorno virtual
VENV := venv

# Comando para activar el entorno virtual
ACTIVATE_VENV := source $(VENV)/bin/activate

# Comandos del Makefile
.PHONY: check-python-version setup clean

# Verifica que la versión de Python correcta esté instalada
check-python-version:
    @echo "Verificando la versión de Python..."
    @python3 --version | grep $(PYTHON_VERSION) || (echo "Versión incorrecta de Python, se requiere Python $(PYTHON_VERSION)" && exit 1)

# Configura el entorno virtual y las dependencias
setup: check-python-version
    @echo "Configurando el entorno virtual y instalando dependencias..."
    @python3 -m venv $(VENV)
    @$(ACTIVATE_VENV) && pip install -r requirements.txt

# Limpia el proyecto (elimina el entorno virtual)
clean:
    @echo "Limpiando el proyecto..."
    @rm -rf $(VENV)

#
