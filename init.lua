vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

require 'options'

require 'keymaps'
require 'keymaps'

require 'lazy-bootstrap'

require 'lazy-plugins'

-- to run csharp program right from nvim
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
