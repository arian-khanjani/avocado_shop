# Define the Python version and virtual environment directory
PYTHON_VERSION := python3.12
VENV_DIR := .venv
REQ_FILE := requirements.txt

.PHONY: venv install kernel run-jupyter freeze clean help

# Create virtual environment
venv:
	@echo "Creating virtual environment..."
	$(PYTHON_VERSION) -m venv $(VENV_DIR)
	@echo "Virtual environment created!"
	@echo "To activate, run (make cannot activate the virtual environment automatically, so you need to do it manually):"
	@echo "   source $(VENV_DIR)/bin/activate"

# Install dependencies inside the virtual environment
install:
	@echo "Installing dependencies..."
	$(VENV_DIR)/bin/python -m pip install --upgrade pip
	$(VENV_DIR)/bin/python -m pip install -r $(REQ_FILE)
	@echo "Dependencies installed successfully!"

# Register Jupyter kernel using the virtual environment name
kernel:
	@echo "Registering Jupyter kernel..."
	$(VENV_DIR)/bin/python -m ipykernel install --user --name=$(VENV_DIR) --display-name "Python ($(VENV_DIR))"
	@echo "Kernel registered as 'Python ($(VENV_DIR))'."

# Run Jupyter Notebook with the registered kernel
run-jupyter:
	@echo "Running Jupyter Notebook with kernel '$(VENV_DIR)'..."
	$(VENV_DIR)/bin/jupyter notebook --NotebookApp.kernel_name=$(VENV_DIR)

# Save installed dependencies to requirements.txt
freeze:
	@echo "Saving installed dependencies..."
	$(VENV_DIR)/bin/python -m pip freeze > $(REQ_FILE)
	@echo "Dependencies saved!"

# Remove virtual environment
clean:
	@echo "Removing virtual environment..."
	rm -rf $(VENV_DIR)
	@echo "Virtual environment removed!"

# Show usage instructions
help:
	@echo "Usage:"
	@echo "  make venv         - Create virtual environment"
	@echo "  make install      - Install dependencies inside venv"
	@echo "  make kernel       - Register Jupyter kernel"
	@echo "  make run-jupyter  - Start Jupyter Notebook using virtual environment kernel"
	@echo "  make freeze       - Save installed dependencies to requirements.txt"
	@echo "  make clean        - Remove virtual environment"
	@echo ""
	@echo "After running 'make venv', activate manually if needed:"
	@echo "   source $(VENV_DIR)/bin/activate"