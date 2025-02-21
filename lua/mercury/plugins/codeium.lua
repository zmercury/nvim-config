return {
  {
    'Exafunction/codeium.vim', -- GitHub repo for Codeium
    event = 'BufEnter', -- Lazy load when entering a buffer
    dependencies = {}, -- No dependencies needed for Codeium
    config = function()
      -- Global Codeium settings
      vim.g.codeium_enabled = true -- Enable Codeium by default
      vim.g.codeium_manual = false -- Automatic suggestions (set to true for manual triggering)
      vim.g.codeium_idle_delay = 75 -- Delay (ms) before suggestions appear
      vim.g.codeium_filetypes = { -- Optionally disable for specific filetypes
        ['markdown'] = false,
        ['text'] = false,
      }

      -- Custom keybindings for Codeium
      vim.keymap.set('i', '<Tab>', function()
        return vim.fn['codeium#Accept']() -- Accept the current suggestion
      end, { expr = true, silent = true })

      vim.keymap.set('i', '<C-]>', function()
        return vim.fn['codeium#CycleCompletions'](1) -- Cycle to next suggestion
      end, { expr = true, silent = true })

      vim.keymap.set('i', '<C-[>', function()
        return vim.fn['codeium#CycleCompletions'](-1) -- Cycle to previous suggestion
      end, { expr = true, silent = true })

      vim.keymap.set('i', '<C-x>', function()
        return vim.fn['codeium#Clear']() -- Clear the current suggestion
      end, { expr = true, silent = true })

      -- Optional: Manual completion trigger (if vim.g.codeium_manual = true)
      vim.keymap.set('i', '<C-Space>', function()
        return vim.fn['codeium#Complete']() -- Manually trigger completion
      end, { expr = true, silent = true })

      -- Optional: Command to toggle Codeium on/off
      vim.api.nvim_create_user_command('CodeiumToggle', function()
        if vim.g.codeium_enabled then
          vim.cmd 'Codeium Disable'
          print 'Codeium disabled'
        else
          vim.cmd 'Codeium Enable'
          print 'Codeium enabled'
        end
      end, { desc = 'Toggle Codeium on/off' })
    end,
  },
}
