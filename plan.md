## Phase 1 — Foundation (no configs yet):
1. Create .stowrc with the 3 lines above
2. Create .stow-local-ignore (start with relevant patterns)
3. Create dot-config/ directory (empty for now)
4. Create a minimal makefile with stow/unstow/restow targets
5. Commit this foundation

## Phase 2 — CI scaffold:
6. Create .github/workflows/ci.yml with only the jobs relevant to stated stack. At minimum:
- validate-stow — the most important one; catches structural errors before they reach your $HOME
- lint yaml,json,toml - common configuration formats
- lint-shell — for have bash and fish shell scripts
- security-scan — gitleaks, cheap insurance
7. Add linter config files as needed 
8. Commit. Run CI on the empty-ish repo to confirm the workflow itself is valid.

## Phase 3 — Migrate configs incrementally:
9. For each app you currently have in ~/.config/:
- stow --adopt . to pull existing real files into dot-config/, OR
- Manually copy ~/.config/<app>/ → dot-config/<app>/, then stow . to replace originals with symlinks
10. Push after each app (or small batch) so CI lints it immediately
11. Add app-specific linters to CI as new file types appear (e.g., lint-lua when you add nvim)

## Phase 4 — Polish:
12. Write the README.md with setup instructions
13. Add markdownlint job to CI
14. Tune .stow-local-ignore as you add non-config content (wallpapers, scripts, etc.)
