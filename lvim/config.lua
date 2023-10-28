-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
vim.opt.wrap = true

-- Normal mode
lvim.keys.normal_mode["<C-e>"] = "A"
lvim.keys.normal_mode["<S-up>"] = "V"
lvim.keys.normal_mode["<S-down>"] = "V"
lvim.keys.normal_mode["<S-TAB>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-v>"] = ":vsplit<CR>"

-- Insert mode
lvim.keys.insert_mode["<C-e>"] = "<Esc>A"
lvim.keys.insert_mode["<C-a>"] = "<Esc>I"
lvim.keys.insert_mode["<C-l>"] = "<Esc>A<Space>{<Enter>}<Esc>O"
lvim.keys.insert_mode["<S-TAB>"] = "<Esc>:BufferLineCycleNext<CR>"
lvim.keys.insert_mode["<S-up>"] = "<Esc>ddkkpi"
lvim.keys.insert_mode["<S-down>"] = "<Esc>ddpi"

-- Visual mode
lvim.keys.visual_mode["<S-down>"] = false

-- Linters
lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = { "*.lua", "*.py" }

-- Fold Options
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false -- if this option is true and fold method option is other than normal, every time a document is opened everything will be folded.

-- Colorscheme and Visual
lvim.colorscheme = "tokyonight-night"
lvim.builtin.indentlines.options = {
  indent = {
    char = "│",
    tab_char = "│",
  },
  scope = { enabled = false },
  exclude = {
    filetypes = {
      "help",
      "alpha",
      "dashboard",
      "neo-tree",
      "Trouble",
      "trouble",
      "lazy",
      "mason",
      "notify",
      "toggleterm",
      "lazyterm",
    },
  },
}

lvim.plugins = {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
    },
  },
  {
    "echasnovski/mini.indentscope",
    config = function()
      require('mini.indentscope').setup({
        symbol = "│",
        options = { try_as_border = true },
      })
    end
  },
  {
    'andweeb/presence.nvim',
    config = function()
      require("presence").setup({
        main_image        = "file",
        neovim_image_text = "Editor de saco roxo",
        editing_text      = "Destruindo %s",
        file_assets       = {
          go = { "Go",
            "https://2.bp.blogspot.com/-5xvOsHhp-jw/WEdhxnTeN0I/AAAAAAAABbs/Xs_aOfeOx2wFFgLAH0_ZZwhFIiKb3WbvwCLcB/s1600/umaru%252Bgolang.png" },
          rs = { "Rust",
            "https://raw.githubusercontent.com/cat-milk/Anime-Girls-Holding-Programming-Books/master/Rust/Kikuchi_Makoto_Programming_In_Rust.png" },
          py = { "Python",
            "https://raw.githubusercontent.com/cat-milk/Anime-Girls-Holding-Programming-Books/master/Python/Komi_san_Python.png" }
        },
      })
    end
  },
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
  }
}

lvim.autocommands = {
  {
    "BufWritePost", {
    pattern = { "*.go" },
    callback = function()
      local format = require('go.format')
      format.gofmt()
      --format.goimport()
    end,
  }
  }
}
