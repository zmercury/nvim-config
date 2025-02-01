return {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration for more VSCode-like behavior
            keymaps = {
                visual = "S",        -- Use S in visual mode for surround
                visual_line = "gS",  -- Use gS in visual mode for surround on lines
            },
            aliases = {
                ["q"] = { '"', "'", "`" },  -- Makes `q` work for any quote type
                ["b"] = { ")", "]", "}" },  -- Makes `b` work for any bracket type
            },
            highlight = {
                duration = 0,        -- No highlight duration
            },
        })

        -- Add VSCode-like behavior for quotes in visual mode
        vim.keymap.set("v", '"', 'S"', { noremap = true, silent = true })
        vim.keymap.set("v", "'", "S'", { noremap = true, silent = true })
        vim.keymap.set("v", "`", "S`", { noremap = true, silent = true })
        vim.keymap.set("v", "[", "S[", { noremap = true, silent = true })
        vim.keymap.set("v", "{", "S{", { noremap = true, silent = true })
        vim.keymap.set("v", "(", "S(", { noremap = true, silent = true })
    end
} 