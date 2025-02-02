return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
        position = 'left',
        width = 30,
      },
    },
    window = {
      position = 'left',
      width = 30,
      mapping_options = {
        noremap = true,
        nowait = true,
      },
    },
    default_component_configs = {
      container = {
        enable_character_fade = true,
      },
    },
  },
  config = function(_, opts)
    require('neo-tree').setup(opts)
    vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NeoTreeEndOfBuffer', { bg = 'none' })
  end,
}
