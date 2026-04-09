return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                transparent_background = true,
                integrations = {
                    telescope = true,
                    treesitter = true,
                    native_lsp = { enabled = true },
                },
                custom_highlights = function(colors)
                    return {
                        CursorLine = { bg = "#313244" },
                        CursorLineNr = { fg = colors.yellow, bold = true },
                        Cursor = { fg = colors.base, bg = colors.peach },
                    }
                end,
            })
            vim.cmd.colorscheme("catppuccin")
        end,
    },
}
