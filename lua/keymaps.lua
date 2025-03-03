vim.keymap.set('n', '<Esc>', function()
  if vim.fn.getcmdtype() == '/' or vim.fn.getcmdtype() == '?' then
    return '<Esc>'
  else
    return '<cmd>nohlsearch<CR>'
  end
end, { expr = true })

vim.keymap.set('n', '<leader>ww', ':Telescope file_browser<CR>', { noremap = true, silent = true, desc = 'Open file browser' })

vim.keymap.set('i', '<Esc>', '<Esc>', { noremap = true })

vim.g.netrw_banner = 0

vim.api.nvim_set_keymap('n', '<leader>e', ':Explore<CR>', { noremap = true, silent = true })

-- Diagnostic "keymaps"
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<A-j>', '<Esc>:m .+1<CR>==gi', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<A-k>', '<Esc>:m .-2<CR>==gi', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-j>', '10<C-e>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '10<C-y>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<A-d>', 'yyp', { noremap = true, silent = true })

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('mercury-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Map Ctrl+a in normal mode to select all text in the buffer
vim.keymap.set('n', '<C-a>', 'gg0VG')

-- basic github actions (add, commit and push)

-- Git Add: Allows specifying file or directories
vim.api.nvim_set_keymap('n', '<leader>ga', ':!git add ', { noremap = true, silent = true })

-- Git Commit: Allows specifying the commit message
vim.api.nvim_set_keymap('n', '<leader>gc', ':!git commit -m ""<Left>', { noremap = true, silent = true })

-- Git Push: Allows specifying the remote and branch
vim.api.nvim_set_keymap('n', '<leader>gp', ':!git push ', { noremap = true, silent = true })

-- Open a new terminal session
vim.keymap.set('n', '<leader>wt', ':!wt -w 0 nt<CR>', { noremap = true, silent = true })


