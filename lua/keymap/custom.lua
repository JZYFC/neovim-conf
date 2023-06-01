local opt = vim.opt
local keymap = vim.keymap

opts= { silent= true, nowait = true }
-- ---- Insert Mode ----


-- ---- Normal Mode ----
-- Explorere netew
keymap.set("n", "<space>f", ":Le<CR>", opts)
-- Window
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts)
keymap.set("n", "<leader>sh", ":split<CR>", opts)

-- ---- Visual Mode ----
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

