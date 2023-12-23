return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = {'nvim-lua/plenary.nvim', {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },},
    config = function()
      --local builtin = require('telescope.builtin')
      --vim.keymap.set('n', '<leader>gf', builtin.find_files, {})
      --vim.keymap.set('n', '<leader>sg', builtin.live_grep, {})
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").setup({
        defaults = {
          mappings = {
            i = {
              ['<C-u>'] = false,
              ['<C-d>'] = false,
            },
          },
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  },
}
