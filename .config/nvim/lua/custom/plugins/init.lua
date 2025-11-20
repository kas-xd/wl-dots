return {
  -- 1. Oil.nvim (File Explorer)
  {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('oil').setup({
        view_options = { show_hidden = true },
        columns = { 'icon' },
      })
      vim.keymap.set('n', '<leader>e', '<cmd>Oil<CR>', { desc = 'Explorer (Oil)' })
    end,
  },

  -- 2. Undotree
  {
    'mbbill/undotree',
    config = function()
      vim.g.undotree_WindowLayout = 2
      vim.keymap.set('n', '<leader>u', '<cmd>UndotreeToggle<CR>', { desc = 'Undotree' })
    end,
  },

  -- 3. Git Blame
  {
    'f-person/git-blame.nvim',
    config = function()
      vim.g.gitblame_enabled = 1
      vim.g.gitblame_message_template = ' <author> • <date> • <summary> • <sha>'
      vim.g.gitblame_date_format = '%Y-%m-%d %H:%M'
      vim.g.gitblame_virtual_text_column = 0
      
      -- Set highlight group
      vim.api.nvim_set_hl(0, 'GitBlameVirtualText', { link = 'Comment' })
    end,
  },
}