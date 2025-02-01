return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup()

    -- Basic keymaps
    local keymap = vim.keymap.set
    -- Menu toggle
    keymap('n', '<leader>h', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Open harpoon window' })

    -- Adding marks
    keymap('n', '<leader>a', function()
      harpoon:list():append()
    end, { desc = 'Add file to harpoon' })

    -- File navigation
    --keymap("n", "<C-h>", function() harpoon:list():select(1) end,
    --{ desc = "Navigate to harpoon file 1" })
    --keymap("n", "<C-j>", function() harpoon:list():select(2) end,
    --{ desc = "Navigate to harpoon file 2" })
    --keymap("n", "<C-k>", function() harpoon:list():select(3) end,
    --{ desc = "Navigate to harpoon file 3" })
    --keymap("n", "<C-l>", function() harpoon:list():select(4) end,
    --{ desc = "Navigate to harpoon file 4" })

    -- Toggle previous & next buffers stored within Harpoon list
    keymap('n', '<C-p>', function()
      harpoon:list():prev()
    end, { desc = 'Navigate to previous harpoon file' })
    keymap('n', '<C-n>', function()
      harpoon:list():next()
    end, { desc = 'Navigate to next harpoon file' })
  end,
}

