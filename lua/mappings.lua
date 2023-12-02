local keymap = vim.keymap
local opts = { noremap = true, silent = true }


keymap.set("", "<leader><leader>ps", "<Cmd>Lazy sync<CR>",
  { desc = "update plugins" })

keymap.set("", "+", "<Cmd>nohlsearch<CR>",
  { desc = "turn off search highlight" })

keymap.set("n", "<C-d>", "<C-d>zz",
  { desc = "scroll down and then center the cursorline" })

keymap.set("n", "<C-u>", "<C-u>zz",
  { desc = "scroll up and then center the cursorline" })

keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save with root permission (not working for now)
--api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
-- keymap.set("n", "<C-w><left>", "<C-w><")
-- keymap.set("n", "<C-w><right>", "<C-w>>")
-- keymap.set("n", "<C-w><up>", "<C-w>+")
-- keymap.set("n", "<C-w><down>", "<C-w>-")
--

-- move pane
keymap.set("n", "1", "<C-w><C-w>")

-- yank
keymap.set("v", "y", "+y")
