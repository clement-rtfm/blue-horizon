return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#051A34", -- Default background
                base01 = "#618abd", -- Lighter background (status bars)
                base02 = "#051A34", -- Selection background
                base03 = "#618abd", -- Comments, invisibles
                base04 = "#D5E8FB", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#D5E8FB", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#4286e6", -- Variables, errors, red
                base09 = "#8eb9f5", -- Integers, constants, orange
                base0A = "#64a7e3", -- Classes, types, yellow
                base0B = "#9FCBF5", -- Strings, green
                base0C = "#69AAE9", -- Support, regex, cyan
                base0D = "#869ed0", -- Functions, keywords, blue
                base0E = "#79acec", -- Keywords, storage, magenta
                base0F = "#afd3f4", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
