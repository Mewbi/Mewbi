-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Delete default keymaps
local map_del = vim.keymap.del
map_del("n", "<leader>uC")

-- My keymaps
local map = vim.keymap.set

map("n", "<C-e>", "A", { desc = "Go to end of line" })
map("n", "<C-a>", "I", { desc = "Go to init of line" })
map("n", "<S-up>", "V", { desc = "Select line" })
map("n", "<S-down>", "V", { desc = "Select line" })
map("n", "<S-TAB>", "<CMD>bnext<CR>", { desc = "Change tab", remap = true })
-- TODO: Fix theses keymaps
-- map("n", "<S-@>", "<CMD>bnext<CR>", { desc = "Change tab next", remap = true })
-- map("n", "<S-!>", "<CMD>bprevious<CR>", { desc = "Change tab prev", remap = true })
map("n", "<S-v>", ":vsplit<CR>", { desc = "Split vertical" })
map("n", "<S-h>", ":split<CR>", { desc = "Split horizontal" })
map("n", "<leader>w", "<Esc><CMD>w<CR>", { desc = "Save", remap = true })
map("n", "<leader>q", "<Esc><CMD>q<CR>", { desc = "Close", remap = true })
map("n", "<leader>c", function()
	Snacks.bufdelete()
end, { desc = "Delete Buffer" })
map("n", "<C-A-down>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-A-up>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-A-right>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-A-left>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })
map("n", "<C-left>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-down>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-up>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-right>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Open terminal
map("n", "<C-\\>", function()
	LazyVim.terminal()
end, { desc = "Terminal (cwd)" })

-- TODO: Add comment selected lines

map("i", "<C-e>", "<Esc>A", { desc = "Go to end of line" })
map("i", "<C-a>", "<Esc>I", { desc = "Go to init of line" })
map("i", "<C-l>", "<Esc>A<Space>{<Enter>}<Esc>O", { desc = "Insert brackets in end of line" })
map("i", "<S-TAB>", "<CMD>bnext<CR>", { desc = "Change tab" })
map("i", "<S-up>", "<Esc><CMD>m .-2<cr>==gi", { desc = "Move line down" })
map("i", "<S-down>", "<Esc><CMD>m .+1<cr>==gi", { desc = "Move line up" })
