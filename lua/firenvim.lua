if vim.g.started_by_firenvim == true then
  vim.o.laststatus = 0
  vim.o.guifont = "Iosevka Nerd Font:h16"

  vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = {
      "github.com_*.txt",
      "stackoverflow*.txt",
      "*stackexchange*.txt",
    },
    command = "set filetype=markdown",
  })

  vim.g.firenvim_config = {
    globalSettings = { alt = "all" },
    localSettings = {
      [".*"] = {
        cmdline = "neovim",
        content = "text",
        priority = 0,
        selector = "textarea",
        takeover = "always",
      },
    },
  }
end
