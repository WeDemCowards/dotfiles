require("aaron")
require("aaron.lazy")

vim.cmd([[
"line numbers"
set number relativenumber
set nu rnu

"find rule"
set ignorecase

"clears screen of highlighted objects"
noremap <Esc> :noh<CR><C-L>

"word wrap"
set nowrap
]])
