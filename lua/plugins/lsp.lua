-- lua/plugins/lsp.lua
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false, -- 关键设置：将 true 改为 false
      },
    },
  },
}
