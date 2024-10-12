return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            -- Define the colors based on Catppuccin Mocha
            local colors = {
                darkgray = "#1E1E2E",    -- Mocha Dark Background
                gray = "#6C6C85",        -- Mocha Gray
                innerbg = 'NONE',        -- Transparent background for inner sections
                outerbg = "#1E1E2E",     -- Mocha Dark Background
                normal = "#F5C2E7",      -- Mocha Normal Mode Color
                insert = "#B9FBC0",      -- Mocha Insert Mode Color
                visual = "#F5A7B8",      -- Mocha Visual Mode Color
                replace = "#F6D7E7",     -- Mocha Replace Mode Color
                command = "#F9E2AF",     -- Mocha Command Mode Color
            }

            -- Theme configuration for Lualine
            local theme = {
                inactive = {
                    a = { fg = colors.gray, bg = colors.outerbg, gui = "bold" },
                    b = { fg = colors.gray, bg = colors.outerbg },
                    c = { fg = colors.gray, bg = colors.innerbg },
                },
                visual = {
                    a = { fg = colors.darkgray, bg = colors.visual, gui = "bold" },
                    b = { fg = colors.gray, bg = colors.outerbg },
                    c = { fg = colors.gray, bg = colors.innerbg },
                },
                replace = {
                    a = { fg = colors.darkgray, bg = colors.replace, gui = "bold" },
                    b = { fg = colors.gray, bg = colors.outerbg },
                    c = { fg = colors.gray, bg = colors.innerbg },
                },
                normal = {
                    a = { fg = colors.darkgray, bg = colors.normal, gui = "bold" },
                    b = { fg = colors.gray, bg = colors.outerbg },
                    c = { fg = colors.gray, bg = colors.innerbg },
                },
                insert = {
                    a = { fg = colors.darkgray, bg = colors.insert, gui = "bold" },
                    b = { fg = colors.gray, bg = colors.outerbg },
                    c = { fg = colors.gray, bg = colors.innerbg },
                },
                command = {
                    a = { fg = colors.darkgray, bg = colors.command, gui = "bold" },
                    b = { fg = colors.gray, bg = colors.outerbg },
                    c = { fg = colors.gray, bg = colors.innerbg },
                },
            }

            -- Setup Lualine with the custom theme
            require("lualine").setup({
                options = {
                    theme = theme,
                },
                sections = {
                    lualine_c = {
                        { "filename", path = 1 }, -- 0 = just filename, 1 = relative path, 2 = absolute path
                    },
                },
            })
        end,
    },
}

