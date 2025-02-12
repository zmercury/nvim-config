return {
  { -- You can easily change to a different colorscheme.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      require('tokyonight').setup {
        style = 'night',
        transparent = true,
        styles = {
          sidebars = 'transparent',
          floats = 'transparent',
        },
      }

      -- Load the colorscheme here.
      vim.cmd.colorscheme 'tokyonight-night'

      -- Set transparency for both editor and Neo-tree
      vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

      -- Neo-tree specific highlights for transparency
      vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'NeoTreeEndOfBuffer', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'NeoTreeFloatBorder', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'NeoTreeFloatTitle', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'NeoTreeFloatNormal', { bg = 'none' })

      -- Additional transparency settings
      vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'LineNr', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'VertSplit', { bg = 'none' })

      -- Ensure transparency persists after colorscheme changes
      vim.api.nvim_create_autocmd('ColorScheme', {
        pattern = '*',
        callback = function()
          vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
          vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
          vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg = 'none' })
          vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg = 'none' })
          vim.api.nvim_set_hl(0, 'NeoTreeEndOfBuffer', { bg = 'none' })
          vim.api.nvim_set_hl(0, 'NeoTreeFloatBorder', { bg = 'none' })
          vim.api.nvim_set_hl(0, 'NeoTreeFloatTitle', { bg = 'none' })
          vim.api.nvim_set_hl(0, 'NeoTreeFloatNormal', { bg = 'none' })
          vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
          vim.api.nvim_set_hl(0, 'LineNr', { bg = 'none' })
          vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = 'none' })
          vim.api.nvim_set_hl(0, 'VertSplit', { bg = 'none' })
        end,
      })
    end,
  },
}
