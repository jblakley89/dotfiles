return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require('telescope.builtin')
      local keymap = vim.keymap

      --keymap.set('n', '<C-p>', builtin.find_files, {})
      keymap.set('n', '<C-p>', '<CMD>Telescope find_files find_command=rg,--files,--hidden,--glob=!**/.git/*<cr>', {})
    end
}
