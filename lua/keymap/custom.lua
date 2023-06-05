local opt = vim.opt
local keymap = vim.keymap

local opts= { silent= true, nowait = true }
-- ---- Insert Mode ----
keymap.set("i", "<A-h>", "<Left>")
keymap.set("i", "<A-l>", "<Right>")

-- ---- Normal Mode ----
-- Explorer
keymap.set("n", "<space>f", ":NvimTreeToggle<CR>", opts)
-- Window
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts)
keymap.set("n", "<leader>sh", ":split<CR>", opts)
-- Bufferline
keymap.set("n", "<space>bc", ":bp<bar>sp<bar>bn<bar>bd<bar>#<CR>", opts)
keymap.set("n", "<c-a-l>", ":BufferLineCycleNext<CR>", opts)
keymap.set("n", "<c-a-h>", ":BufferLineCyclePrev<CR>", opts)
-- in case some terminal not supprt <c-s->
keymap.set("n", "<space>bl", ":BufferLineCycleNext<CR>", opts)
keymap.set("n", "<space>bh", ":BufferLineCyclePrev<CR>", opts)
-- Window navigation
keymap.set("n", "<c-l>", "<c-w>l")
keymap.set("n", "<c-h>", "<c-w>h")

-- ---- Visual Mode ----
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

