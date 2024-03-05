-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- automatically configure lsp plugins installed w/ Mason
require("mason-lspconfig").setup_handlers({
  function(server_name)
    require("lspconfig")[server_name].setup({})
  end,
})

vim.o.cmdheight = 2
vim.o.laststatus = 3

require("firenvim")
