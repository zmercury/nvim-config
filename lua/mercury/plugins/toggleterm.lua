return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      direction = 'float', -- Floating terminal
      float_opts = {
        border = 'rounded', -- Nice rounded borders
      },
      shell = 'powershell',
      persist_mode = true, -- Keep terminal open
      close_on_exit = false, -- Do not close after execution
    }
  end,
}
