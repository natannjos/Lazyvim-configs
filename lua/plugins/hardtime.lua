return {
  -- lazy.nvim
  "m4xshen/hardtime.nvim",
  event = "BufEnter",
  command = "HardTime",
  dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  opts = {
    disable_mouse = false,
  },
}
