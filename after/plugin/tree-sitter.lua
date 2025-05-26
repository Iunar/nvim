require('nvim-treesitter.configs').setup {
    auto_install = false,
    ensure_installed = {
	"c", "lua", "odin", "toml", "markdown", "markdown_inline", "bash"
    },
    highlight = {
	enable = true,
    },
}
