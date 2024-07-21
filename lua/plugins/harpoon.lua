return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {"nvim-lua/plenary.nvim"},
	lazy = false,
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup()

		vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, {desc = "Harpoon: Add"})
		vim.keymap.set("n", "<leader>l", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, {desc = "Harpoon: Toggle Quick Menu"})
		vim.keymap.set("n", "<C-j>", function() harpoon:list():prev() end, {desc = "Harpoon: Previous"})
		vim.keymap.set("n", "<C-k>", function() harpoon:list():next() end, {desc = "Harpoon: Next"})
	end
}
