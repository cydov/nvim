return {
   "catppuccin/nvim",
   config = function()
      require ("catppuccin").setup({
         integrations = {
            cmp = true,
            gitsigns = true,
            neotree = false,
            treesitter = true,
            mason = false,
         },
      })
      vim.cmd.colorscheme "catppuccin"
   end
}
