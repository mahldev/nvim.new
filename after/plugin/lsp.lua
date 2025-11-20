local language_server_names = require("mahl.config.lsp_names")

vim.lsp.config('lua-language-server', {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_markers = {
    ".luarc.json",
    ".luarc.jsonc",
    ".luacheckrc",
    ".stylua.toml",
    "stylua.toml",
    "selene.toml",
    "selene.yml",
    ".git",
  },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = vim.split(package.path, ";"),
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = {
					"${3rd}/luv/library",
                    unpack(vim.api.nvim_get_runtime_file("", true)),
                },
      },
      telemetry = {
        enable = false,
      },
    },
  },
})

vim.lsp.config('jdtls', {
	cmd = {
        "jdtls",
        "--jvm-arg=" .. string.format("-javaagent:%s", vim.fn.expand("$HOME/.local/share/java/lombok.jar")),
    }
})

vim.lsp.config('clangd', {})
vim.lsp.config('fennel-language-server', {})
vim.lsp.config('qmlls', {})

for _, server_name in ipairs(language_server_names) do
    vim.lsp.enable(server_name)
end

require("mason").setup({})
