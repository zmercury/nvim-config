return {
  'karb94/neoscroll.nvim',
  config = function()
    -- Load and setup neoscroll
    local neoscroll = require 'neoscroll'
    neoscroll.setup {
      -- Optional: Customize animation settings
      easing_function = 'quadratic', -- Smooth animation curve (options: "linear", "quadratic", "cubic", etc.)
      time = 75, -- Animation duration in milliseconds
      stop_eof = true, -- Stop at end of file
      hide_cursor = true, -- Hide cursor during scroll
    }

    -- Custom mappings for Ctrl+j and Ctrl+k
    local keymap = vim.keymap.set -- Shorthand for setting keymaps
    local opts = { noremap = true, silent = true }

    -- Ctrl+k to scroll up smoothly (e.g., 5 lines)
    keymap('n', '<C-k>', function()
      neoscroll.scroll(-5, { duration = 75, easing = 'quadratic' })
    end, opts)

    -- Ctrl+j to scroll down smoothly (e.g., 5 lines)
    keymap('n', '<C-j>', function()
      neoscroll.scroll(5, { duration = 75, easing = 'quadratic' })
    end, opts)
  end,
}
