-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------
keymap.set("n", "<leader>b", ":Ex<CR>")
keymap.set("n", "<leader>p", ":MarkdownPreviewToggle<CR>")
