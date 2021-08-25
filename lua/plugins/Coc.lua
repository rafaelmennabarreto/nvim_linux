-- Coc config 
vim.g.ctrlp_user_command = {'.git', 'cd %s && git ls-files -co --exclude-standard'} -- "Hide files in .gitignore
vim.g.ctrlp_show_hidden = 1

vim.g.coc_global_extensions = {
	"coc-tsserver",
	"coc-lua",
	"coc-json",
	"coc-tabnine",
	"coc-eslint",
}
