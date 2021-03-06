return require('packer').startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Lspconfig
    use 'neovim/nvim-lspconfig'

    -- Autocompletion plugin
    use 'hrsh7th/nvim-compe'

    -- Lsp Saga
    use {'glepnir/lspsaga.nvim'}

    -- Highlight, edit, and navigate code using a fast incremental parsing library
    use 'nvim-treesitter/nvim-treesitter'
    -- Additional textobjects for treesitter
    use 'nvim-treesitter/nvim-treesitter-textobjects'

    -- UI to select things (files, grep results, open buffers...
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    -- Tokyo Night
    use 'folke/tokyonight.nvim'

    -- Fancier status line
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- Neoformat
    use 'sbdchd/neoformat'

    -- A Tree view for Symbols
    -- use 'simrat39/symbols-outline.nvim'

    -- LSP Color support
    use 'folke/lsp-colors.nvim'

    -- Snippets
    use {'hrsh7th/vim-vsnip', requires = {'rust-lang/vscode-rust'}}

    -- syntactic language support
    use 'rust-lang/rust.vim'
    use 'kevinoid/vim-jsonc'
    use 'plasticboy/vim-markdown'
    use 'cespare/vim-toml'
    use 'stephpy/vim-yaml'

end)
