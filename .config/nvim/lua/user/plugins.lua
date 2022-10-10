return require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- so packer can update itself
  use { 
      'neovim/nvim-lspconfig', -- native LSP support
      requires = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim'
      }
  } 

  -- mason / dap / linters
  use 'hrsh7th/nvim-cmp' -- autocompletion framework
  use 'hrsh7th/cmp-nvim-lsp' -- LSP autocompletion provider
  use 'hrsh7th/cmp-nvim-lsp-signature-help'

  -- use 'mfussenegger/nvim-dap'
  -- use {
  --   'jose-elias-alvarez/null-ls.nvim',
  --   config = function() 
  --       require("null-ls").setup({
  --           sources = {
  --               require("null-ls").builtins.formatting.stylua,
  --               require("null-ls").builtins.diagnostics.eslint,
  --               require("null-ls").builtins.completion.spell,
  --           },
  --       })
  --   end
  -- }
    

  -- commentary
  use 'tpope/vim-commentary'

  -- color-scheme
  use 'gruvbox-community/gruvbox'

  -- lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'BurntSushi/ripgrep'
  use 'sharkdp/fd'
  use 'nvim-treesitter/nvim-treesitter'
  use 'kyazdani42/nvim-web-devicons'

  --zenmode
  use {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {}
    end
  }

  use {
    "folke/twilight.nvim",
    config = function()
      require("twilight").setup {}
    end
  }
  

end)
