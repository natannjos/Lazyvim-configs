return {
  "windwp/nvim-ts-autotag",
  event = "LazyFile",
  opts = {
    autotag = {
      enable = true,
      filetypes = { "html", "xml" },
      enable_rename = true,
      enable_close = true,
      enable_close_on_slash = true,
    },
  },
  config = function(_, opts)
    require("nvim-ts-autotag").setup(opts)
  end,
}
