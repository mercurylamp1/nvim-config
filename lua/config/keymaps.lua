vim.keymap.set("n", "<C-l>", function() vim.api.nvim_command('bnext') end, {desc = "bnext"})
vim.keymap.set("n", "<C-h>", function() vim.api.nvim_command('bprevious') end, {desc = "bprevious"})

vim.keymap.set("n", "<leader>d", function() vim.api.nvim_command('bd') end, {desc = "bd"})

vim.keymap.set("n", "<leader>v", function() vim.api.nvim_command("!.\\scripts\\build.ps1") end, {desc = "build.sh"})
vim.keymap.set("n", "<leader>r", function() vim.api.nvim_command("!.\\build\\debug.exe") end, {desc = "run"})

-- vim.keymap.set({"n", "v"}, "<leader>p", ":set paste <CR> <bar> ", {desc = "Paste Windows"})
vim.keymap.set("v", "<leader>y", "\"+y", {desc = "System Clipboard"})

   
-- vim.keymap.set({"n", "v", "i"}, "<C-c>", "<Esc>")
-- vim.keymap.set("n", "<C-[>", function() vim.api.nvim_command("bd") end)
