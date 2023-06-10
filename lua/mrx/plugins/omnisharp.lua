local pid = vim.fn.getpid()

local omnisharp_bin = "/home/mrx/.cache/omnisharp-vim/omnisharp-roslyn"

require("lspconfig").omnisharp.setup({
	cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
	-- Additional config can be added here
})

vim.g.OmniSharp_server_use_net6 = 1
vim.g.OmniSharp_server_use_mono = 0
