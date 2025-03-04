return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()
    local keymap = vim.keymap.set

    keymap('n', '<leader>h', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Open Harpoon window' })

    for i = 1, 9 do
      keymap('n', '<leader>' .. i, function()
        harpoon:list():select(i)
      end, { desc = 'Go to Harpoon file ' .. i })
    end
    keymap('n', '<leader>0', function()
      harpoon:list():select(10)
    end, { desc = 'Go to Harpoon file 10' })

    keymap('n', '<leader>a', function()
      harpoon:list():append()
    end, { desc = 'Add file to Harpoon' })

    keymap('n', '<C-p>', function()
      harpoon:list():prev()
    end, { desc = 'Previous Harpoon file' })
    keymap('n', '<C-n>', function()
      harpoon:list():next()
    end, { desc = 'Next Harpoon file' })
  end,
}
