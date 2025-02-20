return {
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy', -- Lazy-load after Neovim starts
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- Optional: for icons
    config = function()
      require('lualine').setup {
        options = {
          theme = 'tokyonight', -- Use your colorscheme or a specific theme (e.g., "tokyonight", "gruvbox")
          icons_enabled = true, -- Enable icons (requires nvim-web-devicons)
          section_separators = { left = '', right = '' }, -- Fancy separators
          component_separators = { left = '', right = '' },
          globalstatus = true, -- Single status line for all windows (Neovim 0.7+)
        },
        sections = {
          lualine_a = { 'mode' }, -- Shows current mode (NORMAL, INSERT, etc.)
          lualine_b = { 'branch', 'diff', 'diagnostics' }, -- Git branch, diff, LSP diagnostics
          lualine_c = { 'filename' }, -- Current file name
          lualine_x = { 'encoding', 'fileformat', 'filetype' }, -- Encoding, file format, file type
          lualine_y = { 'progress' }, -- Progress through file (e.g., "50%")
          lualine_z = { 'location' }, -- Line and column position
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { 'filename' },
          lualine_x = { 'location' },
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {}, -- Optional: customize tabline if needed
        extensions = { 'nvim-tree', 'fzf' }, -- Optional: add extensions for specific plugins
      }
    end,
  },
}
