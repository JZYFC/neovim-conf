local opt = vim.opt
local keymap = vim.keymap

local opts= { silent= true, nowait = true }
-- ---- Insert Mode ----


-- ---- Normal Mode ----
-- Explorer
keymap.set("n", "<space>f", ":NvimTreeToggle<CR>", opts)
-- Window
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts)
keymap.set("n", "<leader>sh", ":split<CR>", opts)
-- Bufferline
keymap.set("n", "<space>bc", ":bp<bar>sp<bar>bn<bar>bd<CR>", opts)
keymap.set("n", "<c-s-L>", ":BufferLineCycleNext<CR>", opts)
keymap.set("n", "<c-s-H>", ":BufferLineCyclePrev<CR>", opts)

-- ---- Visual Mode ----
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

