vim.g.mapleader = " "
			-- lsp --
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end)

			-- common --
vim.keymap.set("n", "<C-l>", function() vim.api.nvim_command('bnext') end)
vim.keymap.set("n", "<C-h>", function() vim.api.nvim_command('bprevious') end)
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set({"n", "v"}, "<leader>p", "\"+p")

vim.keymap.set({"n", "v", "i"}, "<C-c>", "<Esc>")
vim.keymap.set("n", "<leader>v", function() vim.api.nvim_command("!scripts/build.sh") end)

vim.keymap.set("n", "<C-[>", function() vim.api.nvim_command("bd") end)

			-- harpoon -- 	
vim.keymap.set("n", "<leader>a", function() require("harpoon"):list():add() end)
vim.keymap.set("n", "<C-e>", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end)

vim.keymap.set("n", "<C-u>", function() require("harpoon"):list():select(1) end)
vim.keymap.set("n", "<C-i>", function() require("harpoon"):list():select(2) end)
vim.keymap.set("n", "<C-o>", function() require("harpoon"):list():select(3) end)
vim.keymap.set("n", "<C-p>", function() require("harpoon"):list():select(4) end)

vim.keymap.set("n", "<leader>h", function() require("harpoon"):list():prev() end)
vim.keymap.set("n", "<leader>l", function() require("harpoon"):list():next() end)

			-- dap --
vim.keymap.set('n', '<leader>r', function() require('dap').continue() end)
vim.keymap.set('n', '<leader>o', function() require('dap').step_over() end)
vim.keymap.set('n', '<leader>i', function() require('dap').step_into() end)
vim.keymap.set('n', '<leader>p', function() require('dap').step_out() end)
vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end)
vim.keymap.set('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
	require('dap.ui.widgets').hover()
end)
vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
	require('dap.ui.widgets').preview()
end)
vim.keymap.set('n', '<Leader>df', function()
local widgets = require('dap.ui.widgets')
	widgets.centered_float(widgets.frames)
end)
vim.keymap.set('n', '<Leader>ds', function()
	local widgets = require('dap.ui.widgets')
	widgets.centered_float(widgets.scopes)
end)
			-- toggle --
-- vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
-- vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
-- vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
-- vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
-- vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
-- vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)
















-- 
-- local function generate_gl_define()
--     -- Read the contents of the default register
--     local register_content = vim.fn.getreg('"')
-- 
--     -- Split the register content into lines
--     local lines = vim.split(register_content, '\n')
-- 
--     -- Iterate over each line and generate the #define line
--     for _, line in ipairs(lines) do
--         -- Check if the line is not empty
--         if line ~= '' then
--             -- Construct the #define line
--             local function_name = line:gsub('%s+', '') -- Remove any whitespace
--             local define_line = string.format("#define %s ((PFN%sPROC)\"%s\")", function_name, function_name:upper(), function_name)
-- 
--             -- Put the #define line into the current buffer
--             vim.api.nvim_put({define_line}, 'l', true, true)
--         end
--     end
-- 
--     -- Move the cursor to the last line
--     vim.cmd("$")
--     -- Enter insert mode
--     vim.cmd("startinsert!")
-- end
-- 
-- vim.keymap.set("n", "<leader>d", function() generate_gl_define() end)

