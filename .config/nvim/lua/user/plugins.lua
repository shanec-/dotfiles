return require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- so packer can update itself
  use { 
      'neovim/nvim-lspconfig', -- native LSP support
      requires = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',

        -- Useful status updates for LSP
        'j-hui/fidget.nvim',
      }
  } 

  -- completion framework
  use 'hrsh7th/nvim-cmp' -- autocompletion framework

  -- completion sources
  use 'hrsh7th/cmp-nvim-lsp' -- LSP autocompletion provider
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'

  -- snippets
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  use 'simrat39/rust-tools.nvim'
  use { 
    "rcarriga/nvim-dap-ui", 
    requires = {"mfussenegger/nvim-dap"} 
  }
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

  -- nvim-tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

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

  --zenmode and twilight
  use {
    "folke/zen-mode.nvim",
    requires = { 
      "folke/twilight.nvim",
    }
  }
 
end)
