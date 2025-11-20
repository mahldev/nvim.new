--require("kanagawa").setup({
--    transparent = true,
--    colors = {
--        theme = {
--            all = {
--                ui = {
--                    bg_gutter = "none"
--                }
--            }
--        }
--    },
--    overrides = function(colors)
--        local theme = colors.theme
--        return {
--            TelescopeTitle = { fg = theme.ui.special, bold = true },
--            TelescopePromptNormal = { bg = theme.ui.bg_p1 },
--            TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
--            TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
--            TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
--            TelescopePreviewNormal = { bg = theme.ui.bg_dim },
--            TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
--        }
--    end,
--})
--
--vim.cmd("color kanagawa-dragon")

--require("tokyonight").setup({
--    transparent = true,
--    styles = {
--       sidebars = "transparent",
--       floats = "transparent",
--    }
--})
--
--vim.cmd[[color tokyonight-night]]


-- require("catppuccin").setup({
--     transparent_background = false,
--     integrations = {
--                     bufferline = false,
--                     cmp = true,
--                     fidget = true,
--                     gitsigns = true,
--                     illuminate = true,
--                     indent_blankline = { enabled = true },
--                     lsp_trouble = true,
--                     markdown = true,
--                     mason = true,
--                     native_lsp = {
--                         enabled = true,
--                         underlines = {
--                             errors = { "undercurl" },
--                             hints = { "undercurl" },
--                             warnings = { "undercurl" },
--                             information = { "undercurl" },
--                         },
--                     },
--                     neotree = true,
--                     noice = true,
--                     notify = true,
--                     rainbow_delimiters = true,
--                     telescope = true,
--                     treesitter = true,
--                     treesitter_context = true,
--                 },
-- })
--
-- vim.cmd[[color catppuccin-mocha]]
--

--      styles = {
--           sidebars = "transparent",
--           floats = "transparent",
--         },
--         config = function()
--           --vim.cmd("TransparentEnable")
--           vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--           vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--           vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
--         end,
--         opts = {
--           transparent = true,
--           styles = {
--             sidebars = "transparent",
--             floats = "transparent",
--           },
--         },
--  }

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

vim.opt.background = "dark" -- set this to dark or light
vim.cmd[[colorscheme oxocarbon]]
