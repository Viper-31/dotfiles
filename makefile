HOME_DIR := $(HOME)
CONFIGS_DIR := HOME_DIR/.config

STOW_CONFIG_NO_DIRS :=

VERBOSITY ?= 1
V_FLAG := $(shell [ "$(VERBOSITY)" -gt 0 ] && echo "-v" || echo "")

.PHONY: stow unstow restow

