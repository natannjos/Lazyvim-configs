return {
  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true,
        contrast = "soft",
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        background = {
          light = "latte",
          dark = "macchiato",
        },
        pallete_overrides = {
          bright_green = "#990000",
        },
        transparent_background = true,
        show_end_of_buffer = true,
        term_colors = false,
        dim_inactive = {
          enabled = false,
          shade = "dark",
          percentage = 0.15,
        },
        no_italic = false,
        no_bold = false,
        no_underline = false,
        styles = {
          comments = { "italic", "altfont" },
          conditionals = { "italic" },
          loops = {},
          functions = { "bold", "italic", "altfont" },
          keywords = { "bold" },
          strings = { "altfont", "italic" },
          variables = { "bold", "altfont" },
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        color_overrides = {},
        custom_highlights = {},
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = true,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
        },
      })
    end,
  },
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    config = function()
      local dracula = require("dracula")
      dracula.setup({
        -- customize dracula color palette
        colors = {
          bg = "#282A36",
          fg = "#F8F8F2",
          selection = "#44475A",
          comment = "#6272A4",
          red = "#FF5555",
          orange = "#FFB86C",
          yellow = "#F1FA8C",
          green = "#50fa7b",
          purple = "#BD93F9",
          cyan = "#8BE9FD",
          pink = "#FF79C6",
          bright_red = "#FF6E6E",
          bright_green = "#69FF94",
          bright_yellow = "#FFFFA5",
          bright_blue = "#D6ACFF",
          bright_magenta = "#FF92DF",
          bright_cyan = "#A4FFFF",
          bright_white = "#FFFFFF",
          menu = "#21222C",
          visual = "#3E4452",
          gutter_fg = "#4B5263",
          nontext = "#3B4048",
          white = "#ABB2BF",
          black = "#191A21",
        },
        -- show the '~' characters after the end of buffers
        show_end_of_buffer = true, -- default false
        -- use transparent background
        transparent_bg = false, -- default false
        -- set custom lualine background color
        lualine_bg_color = "#44475a", -- default nil
        -- set italic comment
        italic_comment = true, -- default false
        -- overrides the default highlights with table see `:h synIDattr`
        overrides = {},
        -- You can use overrides as table like this
        -- overrides = {
        --   NonText = { fg = "white" }, -- set NonText fg to white
        --   NvimTreeIndentMarker = { link = "NonText" }, -- link to NonText highlight
        --   Nothing = {} -- clear highlight of Nothing
        -- },
        -- Or you can also use it like a function to get color from theme
        -- overrides = function (colors)
        --   return {
        --     NonText = { fg = colors.white }, -- set NonText fg to white of theme
        --   }
        -- end,
      })
    end,
  },
  {
    "navarasu/onedark.nvim",
    config = function()
      -- Lua
      require("onedark").setup({
        -- Main options --
        style = "deep", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
        transparent = false, -- Show/hide background
        term_colors = true, -- Change terminal color as per the selected theme style
        ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
        cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

        -- toggle theme style ---
        toggle_style_key = "<leader>ts", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
        toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between

        -- Change code style ---
        -- Options are italic, bold, underline, none
        -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
        code_style = {
          comments = "italic",
          keywords = "bold",
          functions = "italic,bold",
          strings = "none",
          variables = "none",
        },

        -- Lualine options --
        lualine = {
          transparent = false, -- lualine center bar transparency
        },

        -- Custom Highlights --
        colors = {}, -- Override default colors
        highlights = {}, -- Override highlight groups

        -- Plugins Config --
        diagnostics = {
          darker = true, -- darker colors for diagnostic
          undercurl = true, -- use undercurl instead of underline for diagnostics
          background = true, -- use background color for virtual text
        },
      })
    end,
  },
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.everforest_enable_italic = true
      vim.g.everfores_background = "hard"
    end,
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        -- Enable transparent background
        transparent = true,

        -- Enable italics comments
        italic_comments = true,

        -- Replace all fillchars with ' ' for the ultimate clean look
        hide_fillchars = false,

        -- Modern borderless telescope theme - also applies to fzf-lua
        borderless_telescope = true,

        -- Set terminal colors used in `:terminal`
        terminal_colors = true,

        theme = {
          variant = "default", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`
          highlights = {
            -- Highlight groups to override, adding new groups is also possible
            -- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values

            -- Example:
            Comment = { fg = "#696969", bg = "NONE", italic = true },

            -- Complete list can be found in `lua/cyberdream/theme.lua`
          },

          -- Override a highlight group entirely using the color palette
          overrides = function(colors) -- NOTE: This function nullifies the `highlights` option
            -- Example:
            return {
              Comment = { fg = colors.green, bg = "NONE", italic = true },
              ["@property"] = { fg = colors.magenta, bold = true },
            }
          end,

          -- Override a color entirely
          colors = {
            -- For a list of colors see `lua/cyberdream/colours.lua`
            -- Example:
            -- bg = "#000000",
            green = "#00ff00",
            -- magenta = "#ff00ff",
          },
        },

        -- Disable or enable colorscheme extensions
        extensions = {
          telescope = true,
          notify = true,
          mini = true,
        },
      })
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        --
        -- comments = { "italic", "altfont" },
        -- conditionals = { "italic" },
        -- loops = {},
        -- functions = { "bold", "italic", "altfont" },
        -- keywords = { "bold" },
        -- strings = { "altfont", "italic" },
        -- variables = { "bold", "altfont" },
        compile = false, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true, altfont = true },
        functionStyle = {
          bold = true,
          italic = true,
          altfont = true,
        },
        keywordStyle = {
          bold = true,
        },
        statementStyle = { bold = true, altfont = true },
        typeStyle = {
          altfont = true,
        },
        transparent = false, -- do not set background color
        dimInactive = false, -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = { -- add/modify theme and palette colors
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        theme = "wave", -- Load "wave" theme when 'background' option is not set
        background = { -- map the value of 'background' option to a theme
          dark = "wave", -- try "dragon" !
          light = "lotus",
        },
      })
    end,
  },
  { "savq/melange-nvim" },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,

    config = function()
      require("rose-pine").setup({
        variant = "moon", -- auto, main, moon, or dawn
        dark_variant = "moon", -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true, -- Handle deprecated options automatically
        },

        styles = {
          bold = true,
          italic = true,
          transparency = false,
        },
        highlight_groups = {
          Comment = { fg = "foam" },
          VertSplit = { fg = "muted", bg = "muted" },
          CursorLine = { bg = "surface" },
          CursorLineNr = { fg = "foam" },
          LineNr = { fg = "muted" },
          SignColumn = { bg = "surface" },
          ColorColumn = { bg = "surface" },
          Normal = { fg = "foam", bg = "surface" },
          NormalNC = { fg = "foam", bg = "surface" },
          Pmenu = { bg = "surface" },
          PmenuSel = { bg = "foam" },
          PmenuSbar = { bg = "surface" },
          WildMenu = { bg = "foam" },
          TabLine = { bg = "surface", fg = "foam" },
          TabLineSel = { bg = "foam", fg = "surface" },
          TabLineFill = { bg = "surface" },
          StatusLine = { bg = "surface", fg = "foam" },
          StatusLineNC = { bg = "surface", fg = "muted" },
          Visual = { bg = "surface" },
          Directory = { fg = "foam" },
          DiffAdd = { bg = "surface" },
          DiffChange = { bg = "surface" },
          DiffDelete = { bg = "surface" },
          DiffText = { bg = "surface" },
          ErrorMsg = { fg = "rose", bg = "surface" },
          WarningMsg = { fg = "flamingo", bg = "surface" },
          MoreMsg = { fg = "foam", bg = "surface" },
          ModeMsg = { fg = "foam", bg = "surface" },
          Question = { fg = "foam", bg = "surface" },
          Todo = { fg = "foam", bg = "surface" },
          Search = { bg = "foam" },
          IncSearch = { bg = "foam" },
          MatchParen = { fg = "foam", bg = "surface" },
          NonText = { fg = "muted" },
          Whitespace = { fg = "muted" },
          SpecialKey = { fg = "muted" },
        },
      })
    end,
  },
  {
    {
      "maxmx03/fluoromachine.nvim",
      lazy = false,
      priority = 1000,
      config = function()
        local fm = require("fluoromachine")

        fm.setup({
          glow = false,
          theme = "fluoromachine",
          transparent = true,
        })
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      background_colour = "#282828",
    },
  },
}
