-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		'windwp/nvim-autopairs',
		config = function()
			require("nvim-autopairs").setup {}
		end,
	},
	{
		'phaazon/hop.nvim',
		branch = 'v2', -- optional but strongly recommended
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
			-- place this in one of your configuration file(s)
			local hop = require('hop')
			local directions = require('hop.hint').HintDirection
			vim.keymap.set('', 'f', function()
				hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
			end, { remap = true })
			vim.keymap.set('', 'F', function()
				hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
			end, { remap = true })
			vim.keymap.set('', 't', function()
				hop.hint_char1({
					direction = directions.AFTER_CURSOR,
					current_line_only = true,
					hint_offset = -1
				})
			end, { remap = true })
			vim.keymap.set('', 'T', function()
				hop.hint_char1({
					direction = directions.BEFORE_CURSOR,
					current_line_only = true,
					hint_offset = 1
				})
			end, { remap = true })
		end
	},
	{
		'lervag/vimtex',
		config = function()
		end
	},
}
