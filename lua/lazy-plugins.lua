require('lazy').setup({
  'tpope/vim-sleuth',
  'mluders/comfy-line-numbers.nvim',
  
  require 'kickstart/plugins/surround',
  require 'kickstart/plugins/snippets',
  require 'kickstart/plugins/harpoon',

  require 'kickstart/plugins/gitsigns',

  require 'kickstart/plugins/telescope',

  require 'kickstart/plugins/indent_line',

  require 'kickstart/plugins/lspconfig',

  require 'kickstart/plugins/conform',

  require 'kickstart/plugins/cmp',

  require 'kickstart/plugins/tokyonight',

  require 'kickstart/plugins/todo-comments',

  require 'kickstart/plugins/mini',

  require 'kickstart/plugins/treesitter',

  require 'kickstart/plugins/autopairs',

  require 'kickstart.plugins.neo-tree',

  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.lint',
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
