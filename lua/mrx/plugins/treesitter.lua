require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all" (the five listed parsers should always be installed)
	ensure_installed = {
		"python",
		"lua",
		"javascript",
		"typescript",
		"c_sharp",
		"gitcommit",
		"gitignore",
		"html",
		"json",
		"markdown",
		"markdown_inline",
	},

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	auto_install = true,

	autotag = {
		enable = true,
	},

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})
