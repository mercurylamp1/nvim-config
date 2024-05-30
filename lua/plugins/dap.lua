return {
	'mfussenegger/nvim-dap',
	config = function()
		local dap = require("dap")

		dap.adapters.gdb = {
		type = "executable",
		command = "gdb",
		args = { "-i", "dap" }
}
		dap.configurations.c = {
  {
		name = "Launch",
		type = "gdb",
		request = "launch",
		program = "build/debug",
		cwd = "${workspaceFolder}",
		console = "integratedTerminal",
		stopAtBeginningOfMainSubprogram = false,
  }
}
	end,
}
