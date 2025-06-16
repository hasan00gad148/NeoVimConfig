return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup()
      vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
    end,
  },


{
"folke/tokyonight.nvim", -- or use catppuccin, gruvbox, etc.
lazy = false,
priority = 1000,
config = function()
vim.cmd("colorscheme tokyonight")
end,
},
}

