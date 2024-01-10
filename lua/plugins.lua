return {
  {
    "tiagovla/tokyodark.nvim",
    opts = {
      transparent_background = true,
      gamma = 1.00, -- adjust the brightness of the theme
      styles = {
          comments = { italic = true }, -- style for comments
          keywords = { italic = true }, -- style for keywords
          identifiers = { italic = true }, -- style for identifiers
          functions = {}, -- style for functions
          variables = {}, -- style for variables
      },
      custom_highlights = {} or function(highlights, palette) return {} end, -- extend highlights
      custom_palette = {} or function(palette) return {} end, -- extend palette
      terminal_colors = true, -- enable terminal colors
    },
    config = function(_, opts)
        require("tokyodark").setup(opts)
        vim.cmd [[colorscheme tokyodark]]
    end, 
  },
  'editorconfig/editorconfig-vim',
  {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup {} end
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('config/lualine')
    end
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('config/gitsigns')
    end
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require('config/comment')
    end
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('config/nvim-tree')
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require('config/lspconfig')
    end
  },
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = true
  },
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
}