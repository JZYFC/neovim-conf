local opt = vim.opt
local keymap = vim.keymap

opts= { silent= true, nowait = true }
-- ---- Insert Mode ----


-- ---- Normal Mode ----
-- Explorer
keymap.set("n", "<space>f", ":NvimTreeToggle<CR>", opts)
-- Window
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts)
keymap.set("n", "<leader>sh", ":split<CR>", opts)
-- Bufferline
keymap.set("n", "<space>bc", ":bd<CR>:NvimTreeToggle<CR>:NvimTreeToggle<CR>", opts)
keymap.set("n", "<c-L>", ":BufferLineCycleNext<CR>", opts)
keymap.set("n", "<c-H>", ":BufferLineCyclePrev<CR>", opts)

-- ---- Visual Mode ----
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

