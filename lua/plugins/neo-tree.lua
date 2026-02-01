-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
keys = {
  {
    "<C-e>",
    function()
      local ft = vim.bo.filetype

      if ft == "neo-tree" then
        -- Cursor is inside Neo-tree → close it
        vim.cmd("Neotree close")
      else
        -- Cursor is in a file → jump to Neo-tree
        vim.cmd("Neotree focus")
      end
    end,
    desc = "Focus Neo-tree or close if already focused",
    silent = true,
  },
},
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
