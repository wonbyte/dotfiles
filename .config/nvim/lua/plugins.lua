return require('packer').startup(function()

  -- packer can manage itself
  use 'wbthomason/packer.nvim'

  -- nice status line
  use 'itchyny/lightline.vim'

  -- code completion
  use {'neoclide/coc.nvim', branch = 'release'}

  -- theme
  use 'morhetz/gruvbox'

  -- syntactic language support
  use 'cespare/vim-toml'
  use 'stephpy/vim-yaml'
  use 'rust-lang/rust.vim'
  use 'plasticboy/vim-markdown'
  use 'kevinoid/vim-jsonc'

end)
