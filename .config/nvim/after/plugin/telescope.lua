local builtin = require('telescope.builtin')
local telescope = require("telescope")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

telescope.setup {
    defaults = {
        theme = "dropdown"
    },
    pickers = {
    },
    find_files = {
      theme = "dropdown",
    }
}
