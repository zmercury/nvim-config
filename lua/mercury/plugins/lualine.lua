return {
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local custom_theme = {
        normal = {
          a = { fg = '#ffffff', bg = '#2a9d8f', gui = 'bold' },
          b = { fg = '#2a9d8f', bg = '#1e1e2e' },
          c = { fg = '#d4d4d4', bg = '#1e1e2e' },
        },
        insert = {
          a = { fg = '#ffffff', bg = '#e06c75', gui = 'bold' },
        },
        visual = {
          a = { fg = '#ffffff', bg = '#c678dd', gui = 'bold' },
        },
        replace = {
          a = { fg = '#ffffff', bg = '#d19a66', gui = 'bold' },
        },
        inactive = {
          a = { fg = '#d4d4d4', bg = '#3c3836' },
          b = { fg = '#d4d4d4', bg = '#3c3836' },
          c = { fg = '#a89984', bg = '#3c3836' },
        },
      }

      require('lualine').setup {
        options = {
          theme = custom_theme,
          icons_enabled = true,
          section_separators = { left = '', right = '' },
          component_separators = { left = '', right = '' },
          globalstatus = true,
          disabled_filetypes = { 'alpha', 'dashboard' },
        },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = { 'branch' },
          lualine_c = { 'filename' },
          lualine_x = { 'diagnostics', 'filetype' },
          lualine_y = {
            function()
              return os.date '%I:%M %p'
            end,
          },
          lualine_z = { 'location' },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { 'filename' },
          lualine_x = { 'filetype', 'location' },
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {},
        extensions = {},
      }
    end,
  },
}
