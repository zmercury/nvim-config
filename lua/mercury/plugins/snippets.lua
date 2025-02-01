return {
  'L3MON4D3/LuaSnip',
  version = 'v2.*',
  config = function()
    local ls = require 'luasnip'
    local s = ls.snippet
    local t = ls.text_node
    local i = ls.insert_node

    -- Load friendly-snippets
    require('luasnip.loaders.from_vscode').lazy_load()

    -- C# specific snippets
    ls.add_snippets('cs', {
      -- Console operations
      s('psvm', {
        t 'public static void Main(string[] args){',
        i(1, ''),
        t '};',
      }),
      s('svm', {
        t 'static void Main(string[] args){',
        i(1, ''),
        t '};',
      }),
      s('cc', {
        t 'Console.WriteLine(',
        i(1, ''),
        t ');',
      }),
      s('cw', {
        t 'System.Console.WriteLine(',
        i(1, ''),
        t ');',
      }),
      s('cr', {
        t 'Console.ReadLine(',
        i(1, ''),
        t ');',
      }),
      -- Common C# patterns
      s('prop', {
        t 'public ',
        i(1, 'type'),
        t ' ',
        i(2, 'PropertyName'),
        t ' { get; set; }',
      }),
      s('ctor', {
        t 'public ',
        i(1, 'ClassName'),
        t '(',
        i(2, ''),
        t ')',
        t { '', '{', '    ' },
        i(3, ''),
        t { '', '}' },
      }),
      s('if', {
        t 'if (',
        i(1, 'condition'),
        t ')',
        t { '', '{', '    ' },
        i(2, ''),
        t { '', '}' },
      }),
      s('for', {
        t 'for (int ',
        i(1, 'i'),
        t ' = 0; ',
        i(2, 'i'),
        t ' < ',
        i(3, 'length'),
        t '; ',
        i(4, 'i'),
        t '++)',
        t { '', '{', '    ' },
        i(5, ''),
        t { '', '}' },
      }),
      s('foreach', {
        t 'foreach (',
        i(1, 'var'),
        t ' ',
        i(2, 'item'),
        t ' in ',
        i(3, 'collection'),
        t ')',
        t { '', '{', '    ' },
        i(4, ''),
        t { '', '}' },
      }),
      s('class', {
        t 'public class ',
        i(1, 'ClassName'),
        t { '', '{', '    ' },
        i(2, ''),
        t { '', '}' },
      }),
      s('try', {
        t { 'try', '{', '    ' },
        i(1, ''),
        t { '', '}', 'catch (' },
        i(2, 'Exception'),
        t ' ',
        i(3, 'ex'),
        t ')',
        t { '', '{', '    ' },
        i(4, ''),
        t { '', '}' },
      }),
    })

    -- Make sure snippets are enabled
    ls.setup {
      history = true,
      update_events = { 'TextChanged', 'TextChangedI' },
      enable_autosnippets = true,
    }

    -- Enable snippet expansion with Tab
    vim.keymap.set({ 'i', 's' }, '<Tab>', function()
      if ls.expand_or_jumpable() then
        ls.expand_or_jump()
      else
        -- If no snippet to expand, send a real <Tab>
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Tab>', true, false, true), 'n', false)
      end
    end, { silent = true })

    -- Shift+Tab to go to previous snippet field
    vim.keymap.set({ 'i', 's' }, '<S-Tab>', function()
      if ls.jumpable(-1) then
        ls.jump(-1)
      end
    end, { silent = true })
  end,
}
