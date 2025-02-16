require('lazy').setup({
  'tpope/vim-sleuth',
  'mluders/comfy-line-numbers.nvim',

  require 'mercury/plugins/surround',
  require 'mercury/plugins/neocodeium',
  require 'mercury/plugins/snippets',
  require 'mercury/plugins/harpoon',

  require 'mercury/plugins/gitsigns',

  require 'mercury/plugins/markdown',
  require 'mercury/plugins/telescope',

  require 'mercury/plugins/indent_line',

  require 'mercury/plugins/lspconfig',

  require 'mercury/plugins/conform',

  require 'mercury/plugins/cmp',

  require 'mercury/plugins/tokyonight',

  require 'mercury/plugins/todo-comments',

  require 'mercury/plugins/mini',

  require 'mercury/plugins/treesitter',

  require 'mercury/plugins/autopairs',

  require 'mercury.plugins.neo-tree',

  -- require 'mercury.plugins.debug',
  -- require 'mercury.plugins.lint',
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
