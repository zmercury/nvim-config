return {
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy', -- Lazy-load after Neovim starts
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- Optional: for icons
    config = function()
      -- Setup Lualine with a minimal, good-looking configuration
      require('lualine').setup {
        options = {
          theme = 'tokyonight', -- Use tokyonight theme (matches your colorscheme)
          icons_enabled = true, -- Enable icons (requires nvim-web-devicons and Nerd Fonts)
          section_separators = { left = '', right = '' }, -- Sleek, modern separators
          component_separators = { left = '', right = '' },
          globalstatus = true, -- Single status line for all windows (Neovim 0.7+)
          disabled_filetypes = { 'alpha', 'dashboard' }, -- Disable for certain filetypes if needed
        },
        sections = {
          -- Left sections
          lualine_a = { 'mode' }, -- Shows current mode (e.g., NORMAL, INSERT)
          lualine_b = { 'branch' }, -- Git branch (minimal Git info)
          lualine_c = { 'filename' }, -- Current file name (relative path)

          -- Right sections
          lualine_x = { 'diagnostics', 'filetype' }, -- LSP diagnostics and file type
          lualine_y = {
            -- Custom function for current time
            function()
              return os.date '%I:%M %p' -- Displays time as "HH:MM"
            end,
          },
          lualine_z = { 'location' }, -- Line and column position (e.g., "Ln 42, Col 15")
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { 'filename' },
          lualine_x = { 'filetype', 'location' },
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {}, -- No tabline (keep it minimal)
        extensions = {}, -- No extensions for minimalism (add if needed, e.g., "nvim-tree")
      }
    end,
  },
}
