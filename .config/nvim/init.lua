require("aaron")
require("aaron.lazy")

require('notebook').setup()

-- you have gotta move this to a different file
require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'auto',
    component_separators = { left = '|', right = '|'},
    --component_separators = { left = '', right = ''},
    --component_separators = { left = '', right = '█'},
    section_separators = { left = '', right = '█'},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
      refresh_time = 16, -- ~60fps
      events = {
        'WinEnter',
        'BufEnter',
        'BufWritePost',
        'SessionLoadPost',
        'FileChangedShellPost',
        'VimResized',
        'Filetype',
        'CursorMoved',
        'CursorMovedI',
        'ModeChanged',
      },
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = false,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

vim.o.background = "dark"
--vim.o.background = "light"

-- vim.api.nvim_create_autocmd("VimEnter", {callback=function()require"lazy".update()end})

--vim.api.nvim_set_keymap('c', 'man', 'Man', {noremap = true, silent = true})
--

vim.cmd([[
"colorscheme"
colorscheme gruvbox
"colorscheme quiet
"colorscheme vim

" disable insert because you have a kewl plugin statusbar
set noshowmode

"line numbers"
set number relativenumber
set nu rnu

"nice line number highlighting"
set cursorline
set cursorlineopt=number
"highlight CursorLineNr guifg=#fabd2f guibg=GruvboxBackground
highlight CursorLineNr NONE
highlight link CursorLineNr GruvboxYellowBold

"tab length"
set tabstop=4
set shiftwidth=4

"find rule"
set ignorecase

"clears screen of highlighted objects"
noremap <Esc> :noh<CR><C-L>

"Telescope"
noremap <leader>o :Telescope find_files<CR>

"Buffer switching"
nnoremap<Tab> :bnext<CR>
nnoremap<S-Tab> :bprev<CR>

"faster ctrl-e ctrl-y"
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

"faster vertical cursor"
nnoremap <C-k> 3k
nnoremap <C-j> 3j

"word wrap"
set nowrap
noremap <leader>w :set wrap!<CR>

"using semicolon for commands
noremap ; :

"toggle margins
nnoremap <leader>m :if &textwidth == 0 \| setlocal textwidth=80 formatoptions+=t \| else \| setlocal textwidth=0 \| endif<CR>

"keep cursor 2 lines buffed from edge of screen"
set scrolloff=2

"get rid of the annoying auto comment new lines"
set formatoptions-=cro

"print invisible characters"
"set listchars=tab:\|··,trail:·,extends:>,precedes:<,lead:·
"set listchars=tab:--\|,trail:·,extends:>,precedes:<,lead:·"
"set listchars=tab:Tab,trail:·,extends:>,precedes:<,lead:·"
"set list

"splits"
set splitright
set splitbelow

"abberivate Man as man because who tf wants to type `Man` "
cab man Man

]])
