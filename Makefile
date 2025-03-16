# Define the Python version
PYTHON_VERSION := python3.12
VENV_DIR := .venv
REQ_FILE := requirements.txt

.PHONY: venv install freeze clean help

# Create virtual environment
venv:
	@echo "Warning: This Makefile is designed to be used on macOS. It may not work on Windows."
	@echo "Creating virtual environment..."
	$(PYTHON_VERSION) -m venv $(VENV_DIR)
	@echo "Virtual environment created!"
	@echo "To activate, run:"
	@echo "   source $(VENV_DIR)/bin/activate"

# Install dependencies
install:
	@echo "Warning: This Makefile is designed to be used on macOS. It may not work on Windows."
	@if [ ! -d "$(VENV_DIR)" ]; then \
		echo "Virtual environment not found. Please run 'make venv' first, and make sure to activate the virtual environment."; \
		exit 1; \
	fi
	@echo "Installing dependencies..."
	@bash -c "$(VENV_DIR)/bin/python -m pip install --upgrade pip && $(VENV_DIR)/bin/python -m pip install -r $(REQ_FILE)"
	@echo "Dependencies installed successfully!"

# Save installed dependencies to requirements.txt
freeze:
	@echo "Warning: This Makefile is designed to be used on macOS. It may not work on Windows."
	@echo "Saving installed dependencies to $(REQ_FILE)..."
	@bash -c "source $(VENV_DIR)/bin/activate && $(VENV_DIR)/bin/python -m pip freeze > $(REQ_FILE)"
	@echo "Dependencies saved!"

# Remove virtual environment
clean:
	@echo "Warning: This Makefile is designed to be used on macOS. It may not work on Windows."
	@echo "Removing virtual environment..."
	@rm -rf $(VENV_DIR)
	@echo "Virtual environment removed!"

# Show usage
help:
	@echo "Usage:"
	@echo "  make venv     - Create virtual environment"
	@echo "  make install  - Install dependencies inside venv"
	@echo "  make freeze   - Save installed dependencies to requirements.txt"
	@echo "  make clean    - Remove virtual environment"
	@echo ""
	@echo "After running 'make venv', activate it manually:"
	@echo "   source $(VENV_DIR)/bin/activate"