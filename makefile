HOME_DIR := $(HOME)
VERBOSITY ?= 1

.PHONY: help install stow unstow restow update-submodules

.DEFAULT_GOAL := help

help: 
	@echo "--- Available targets ---"
	@echo "  help              Show this message"
	@echo "  install           First-time setup: submodules + stow"
	@echo "  stow              Deploy dotfiles (stow --dotfiles .)"
	@echo "  unstow            Remove stow symlinks"
	@echo "  restow            unstow, then stow"
	@echo "  update-submodules Refresh git submodules"

install: update-submodules stow
	@echo ""
	@echo "Done. Open tmux and press prefix-I to install plugins"
	# other plugin init stuff

stow:
	@echo "--- Stowing dotfiles ---"
	stow --target=$(HOME_DIR) --dotfiles --verbose=$(VERBOSITY)
	
