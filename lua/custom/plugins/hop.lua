return {
  'smoka7/hop.nvim',
  version = '*',
  config = function()
    local hop = require 'hop'
    hop.setup()

    local directions = require('hop.hint').HintDirection

    -- Jump to words (like EasyMotion 's')
    vim.keymap.set('', 's', function()
      hop.hint_words { current_line_only = false }
    end, { remap = true, desc = 'Hop to word' })

    -- Jump to next char ('f')
    vim.keymap.set('', 'f', function()
      hop.hint_char1 { direction = directions.AFTER_CURSOR, current_line_only = true }
    end, { remap = true, desc = 'Hop to next char' })

    -- Jump to previous char ('F')
    vim.keymap.set('', 'F', function()
      hop.hint_char1 { direction = directions.BEFORE_CURSOR, current_line_only = true }
    end, { remap = true, desc = 'Hop to previous char' })
  end,
}
