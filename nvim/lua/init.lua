pasteFilename = function(selected, opts)
    vim.cmd([[put=']] .. selected[1] .. [[']])
    return true
end

local actions = require'fzf-lua.actions'
require 'fzf-lua'.setup({
  actions = {
    files = {
      -- instead of the default action 'actions.file_edit_or_qf'
      -- it's important to define all other actions here as this
      -- table does not get merged with the global defaults
      ["default"]       = actions.file_edit,
      ["ctrl-s"]        = actions.file_split,
      ["ctrl-v"]        = actions.file_vsplit,
      ["ctrl-t"]        = actions.file_tabedit,
      ["alt-q"]         = actions.file_sel_to_qf,
      ["ctrl-space"]    = pasteFilename,
    },
  },
})

vim.api.nvim_set_keymap('n', '<c-P>',
    "<cmd>lua require('fzf-lua').files()<CR>",
    { noremap = true, silent = true })
    
require('gitsigns').setup()
