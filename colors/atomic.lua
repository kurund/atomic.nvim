if vim.o.background == "light" then
	require("atomic.config").setup({ style = "light" })
end
require("atomic").load()
