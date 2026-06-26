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
	@echo "Done. Follow per-tool setup in README"
	# other plugin init stuff

stow:
	@echo "--- Stowing dotfiles ---"
	stow .

unstow:
	@echo "--- Unstowing dotfiles ---"
	stow -D .

restow:
	unstow stow

update-submodules:
	@echo "--- Updating git submodules ---"
	git submodule update --init --recursive
	git submodule foreach --recursive 'git pull -ff-only 2>/dev/null || true'
