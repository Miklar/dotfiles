-- Update with :PackerUpdate 
return require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- so packer can update itself
  use { -- nice interface for LSP functions (among other things)
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'neovim/nvim-lspconfig' -- native LSP support
  use 'hrsh7th/nvim-cmp' -- autocompletion framework
  use 'hrsh7th/cmp-nvim-lsp' -- LSP autocompletion provider
  use 'morhetz/gruvbox' -- theme
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use 'hashivim/vim-terraform'

  -- autocomplete config
  local cmp = require 'cmp'
  cmp.setup {
    mapping = {
      ['<Tab>'] = cmp.mapping.select_next_item(),
      ['<S-Tab>'] = cmp.mapping.select_prev_item(),
      ['<CR>'] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
      })
    },
    sources = {
      { name = 'nvim_lsp' },
    }
  }

  -- omnisharp lsp config
  require'lspconfig'.omnisharp.setup {
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    on_attach = function(_, bufnr)
      vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    end,
    -- cmd = { "/usr/local/opt/omnisharp-roslyn/bin/omnisharp/run", "--languageserver" , "--hostPID", tostring(pid) },
    cmd = { "/users/miklar/.local/omnisharp/omnisharp", "--languageserver" , "--hostPID", tostring(pid) },
    --/Users/miklar/.OMNISHARP/OMNISHARP-OSX-X64-NET6.0/oMNIsHARP
  }

  -- lualine config
  require('lualine').setup {
    options = { theme = 'gruvbox' }
  }

  require('nvim-tree').setup { }
end)

