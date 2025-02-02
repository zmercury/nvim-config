vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

require 'options'

require 'keymaps'
require 'keymaps'

require 'lazy-bootstrap'

require 'lazy-plugins'

vim.api.nvim_create_user_command('Runcs', function()
  local file_dir = vim.fn.expand '%:p:h'
  local cmd = 'cd ' .. file_dir .. ' && dotnet run'
  local success, result = pcall(function()
    vim.cmd('!' .. cmd)
  end)
  if not success then
    vim.notify('Failed to run dotnet: ' .. tostring(result), vim.log.levels.ERROR)
  end
end, { nargs = 0 })

vim.api.nvim_create_user_command('Createcs', function()
  local file_dir = vim.fn.expand '%:p:h'
  local cmd = 'cd ' .. file_dir .. ' && dotnet new console --use-program-main true'
  local success, result = pcall(function()
    vim.cmd('!' .. cmd)
  end)
  if not success then
    vim.notify('Failed to run dotnet: ' .. tostring(result), vim.log.levels.ERROR)
  end
end, { nargs = 0 })

-- Function to open terminal in the current file's directory
local function open_terminal_in_current_dir()
  local current_file_dir = vim.fn.expand '%:p:h'
  vim.cmd('lcd ' .. current_file_dir)
  vim.cmd 'terminal'
end

-- Command :Term to call the function
vim.api.nvim_create_user_command('Term', open_terminal_in_current_dir, {})

vim.keymap.set('n', '$$', '$A', { noremap = true, silent = true })
