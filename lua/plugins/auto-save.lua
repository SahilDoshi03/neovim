return {
	"pocco81/auto-save.nvim",
	config = function()
		require("auto-save").setup({
			enabled = true, -- start auto-save when the plugin is loaded
			execution_message = {
				message = function()
  				return ("")
				end,
				dim = 0.18, -- dim the color of `message`
				cleaning_interval = 1250, -- automatically clean MsgArea after displaying `message`
			},
			trigger_events = { "InsertLeave", "TextChanged" }, -- events that trigger auto-save
			condition = function(buf)
				local fn = vim.fn
				local utils = require("auto-save.utils.data")

				if fn.getbufvar(buf, "&modifiable") == 1 and utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
					return true -- met condition(s), can save
				end
				return false -- can't save
			end,
			write_all_buffers = false, -- write all buffers when the current one meets `condition`
			debounce_delay = 135, -- saves the file at most every `debounce_delay` milliseconds
			callbacks = { -- functions to be executed at different intervals
				enabling = nil, -- ran when enabling auto-save
				disabling = nil, -- ran when disabling auto-save
				before_asserting_save = nil, -- ran before checking `condition`
				before_saving = nil, -- ran before doing the actual save
				after_saving = nil, -- ran after doing the actual save
			},
		})
		vim.keymap.set("n", "<leader>n", ":ASToggle<CR>", {})
	end,
}
