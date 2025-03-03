vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

require 'options'
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

vim.api.nvim_create_user_command('Rungo', function()
  local file_dir = vim.fn.expand '%:p:h'
  local cmd = 'cd ' .. file_dir .. ' && go run ./main.go'
  local success, result = pcall(function()
    vim.cmd('!' .. cmd)
  end)
  if not success then
    vim.notify('Failed to run go file: ' .. tostring(result), vim.log.levels.ERROR)
  end
end, { nargs = 0 })

-- Function to open PowerShell in the current file's directory in a horizontal split
local function open_powershell_in_current_dir()
  local current_file_dir = vim.fn.expand '%:p:h'
  -- Use 'term_start' to open a terminal in a split
  vim.cmd('lcd ' .. current_file_dir)
  vim.cmd('vsplit | terminal powershell.exe -NoExit -Command "cd \'' .. current_file_dir .. '\'"')
end

-- Command :Term to call the function
vim.api.nvim_create_user_command('Term', open_powershell_in_current_dir, {})

-- Your existing keymap setup
vim.keymap.set('n', '$$', '$A', { noremap = true, silent = true })
vim.keymap.set('i', '$$', '<ESC>A', { noremap = true, silent = true })
