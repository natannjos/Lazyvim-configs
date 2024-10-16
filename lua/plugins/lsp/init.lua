local nvim_lsp = require("lspconfig")

nvim_lsp.denols.setup({
  on_attach = function(client, bufnr)
    -- Your on_attach function here
  end,
  root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
  settings = {
    deno = {
      enable = true,
      lint = true,
      unstable = true,
    },
  },
})
