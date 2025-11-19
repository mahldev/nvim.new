local cmp = require("cmp")
local languages_server_names = require("mahl.config.lsp_names")

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<C-y>"] = cmp.mapping.complete(),
		["<C-u>"] = cmp.mapping.scroll_docs(-4),
		["<C-d>"] = cmp.mapping.scroll_docs(4),
	}),
	window = {
		completion = cmp.config.window.bordered(),
		documention = cmp.config.window.bordered(),
	},
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "path" },
	}, {
		{ name = "buffer" },
	}),
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

for _, name in ipairs(languages_server_names) do
    vim.lsp.config(name, {
        capabilities = capabilities
  })
end

require("luasnip.loaders.from_vscode").lazy_load()
