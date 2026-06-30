require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Cheatsheet
map("n", "<leader>cs", "<cmd>NvCheatsheet<CR>", { desc = "toggle nvcheatsheet" })

----------------------------------------------------------------------------
----- Move current line up or down in normal mode (Alt + j/k)
map("n", "<A-j>", ":m .+1<CR>==", { silent = true, desc = "Move line down" })
map("n", "<A-k>", ":m .-2<CR>==", { silent = true, desc = "Move line up" })

-- Move current selection up or down in Visual mode (Alt + j/k)
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { silent = true, desc = "Move selection down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { silent = true, desc = "Move selection up" })

-- Select text using Shift + Arrow keys (VS Code style)
map("n", "<S-Up>", "Vk", { desc = "Select line up" })
map("n", "<S-Down>", "Vj", { desc = "Select line down" })
map("v", "<S-Up>", "k", { desc = "Extend selection up" })
map("v", "<S-Down>", "j", { desc = "Extend selection down" })
map("v", "<S-Left>", "h", { desc = "Extend selection left" })
map("v", "<S-Right>", "l", { desc = "Extend selection right" })

-- Universal Save File (Ctrl + S)
map({ "n", "i", "v" }, "<C-s>", "<cmd>w<CR>", { desc = "Save file" })

-- Better Window navigation (Ctrl + Arrow Keys instead of Ctrl+W splits)
map("n", "<C-Left>", "<C-w>h", { desc = "Switch to left window split" })
map("n", "<C-Right>", "<C-w>l", { desc = "Switch to right window split" })
map("n", "<C-Up>", "<C-w>k", { desc = "Switch to upper window split" })
map("n", "<C-Down>", "<C-w>j", { desc = "Switch to lower window split" })

-- Stay in Visual Mode when indenting/outdenting (with ] or [)
map("v", "[", "<gv", { desc = "Un-indent text keeping selection" })
map("v", "]", ">gv", { desc = "Indent text keeping selection" })

-- Clear search highlights on pressing Escape
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "Clear search highlight" })

-- Lazygit
map("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "Git Open LazyGit Window" })
