return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
        filesystem = {
          follow_current_file = { enabled = true, leave_dirs_open = false },
        },
      })

      vim.keymap.set("n", "<leader>tn", ":tabnext<CR>")
      vim.keymap.set("n", "<leader>tr", ":Neotree filesystem reveal left<CR>")
      vim.keymap.set("n", "<leader>tp", ":tabprevious<CR>")
    end,
  },
}
