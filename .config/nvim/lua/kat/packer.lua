-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`

vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
      -- packer config options
      depth = 1
      auto_clean = true
      compile_on_sync = true
      display = {
          working_sym   = '⟳', -- The symbol for a plugin being installed/updated
          error_sym     = '✗', -- The symbol for a plugin with an error in installation/updating
          done_sym      = '✓', -- The symbol for a plugin which has completed installation/updating
          removed_sym   = '-', -- The symbol for an unused plugin which was removed
          moved_sym     = '→', -- The symbol for a plugin which was moved (e.g. from opt to start)
          header_sym    = '━', -- The symbol for the header line in packer's display
          show_all_info = true, -- Should packer show all update details automatically?
          prompt_border = 'double', -- Border style of prompt popups.
          keybindings   = { -- Keybindings for the display window
              quit = 'q',
              toggle_update = 'u', -- only in preview
              continue = 'c', -- only in preview
              toggle_info = '<CR>',
              diff = 'd',
              prompt_revert = 'r',
          }
      }

      use('wbthomason/packer.nvim')
      use("ellisonleao/gruvbox.nvim")
      use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
      use {
          'nvim-telescope/telescope.nvim', tag = '0.1.1',
          requires = { { 'nvim-lua/plenary.nvim' } }
      }
      use {
          'VonHeikemen/lsp-zero.nvim',
          branch = 'v1.x',
          requires = {
              -- LSP Support
              { 'neovim/nvim-lspconfig' },
              { 'williamboman/mason.nvim' },
              { 'williamboman/mason-lspconfig.nvim' },

              -- Autocompletion
              { 'hrsh7th/nvim-cmp' }, -- Required
              { 'hrsh7th/cmp-nvim-lsp' }, -- Required
              { 'hrsh7th/cmp-buffer' }, -- Optional
              { 'hrsh7th/cmp-path' }, -- Optional
              { 'saadparwaiz1/cmp_luasnip' }, -- Optional
              { 'hrsh7th/cmp-nvim-lua' }, -- Optional

              -- Snippets
              { 'L3MON4D3/LuaSnip' }, -- Required
              { 'rafamadriz/friendly-snippets' }, -- Optional
          }
      }

      use { 'mbbill/undotree' }
      use {
          "windwp/nvim-autopairs",
          config = function() require("nvim-autopairs").setup {} end
      }
      use("folke/zen-mode.nvim")
      use("eandrju/cellular-automaton.nvim")
      use { "williamboman/mason.nvim" }
      use("theprimeagen/harpoon")
      use("tpope/vim-fugitive")
      use { "NvChad/nvterm" }
      use {
          'numToStr/Comment.nvim',
          config = function()
            require('Comment').setup()
          end
      }
    end)
