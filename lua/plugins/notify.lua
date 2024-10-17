-- return {
-- 	"rcarriga/nvim-notify",
-- 	opts = {
-- 		timeout = 1000,
-- 	},
-- 	init = function()
-- 		vim.notify = require("notify")
-- 		require("notify")("Hello wordl")
-- 	end,
-- 	-- config = function()
-- 	-- 	local notify = require("notify")
-- 	-- 	vim.notify = notify
-- 	-- 	notify.setup({
-- 	-- 		timeout = 1000,
-- 	-- 	})
-- 	-- end,
-- }
--
--
return {
	{
		"rcarriga/nvim-notify",
		keys = {
			{
				"<leader>un",
				function()
					require("notify").dismiss({ silent = true, pending = true })
				end,
				desc = "Dismiss All Notifications",
			},
		},
		opts = {
			stages = "static",
			timeout = 3000,
			max_height = function()
				return math.floor(vim.o.lines * 0.75)
			end,
			max_width = function()
				return math.floor(vim.o.columns * 0.75)
			end,
			on_open = function(win)
				vim.api.nvim_win_set_config(win, { zindex = 100 })
			end,
		},
		init = function()
			vim.notify = require("notify")
			require("notify")("Hello there")
		end,
	},
}
