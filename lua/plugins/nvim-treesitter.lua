return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup({
      highlight = {
        enable = true,
      },
      ensure_installed = {
        "vimdoc",
        "luadoc",
        "vim",
        "lua",
        "markdown",
      },
      modules = {
        -- list of parsers to run. For example:
        -- "bash",
        -- "python",
        -- "typescript",
        -- "typescriptreact",
        -- "tsx",
        -- "javascript",
        -- "javascriptreact",
        -- "json",
        -- "json5",
        -- "jsonc",
        -- "yaml",
        "lua",
        "vimdoc",
        "markdown",
      },
      auto_install = true,
      sync_install = false,
      ignore_install = { "" },
      parser_install_dir = vim.fn.stdpath("cache") .. "/treesitter",
    })
  end,
}
