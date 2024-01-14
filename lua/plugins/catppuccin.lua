return {
   'catppuccin/nvim', priority=1000,
   config = function()
      require('catppuccin').setup({
         flavour = 'mocha',
         integrations = {
            cmp = true,
            gitsigns = true,
            neotree = false,
            treesitter = true,
            mason = false,
         },
      })
      vim.cmd.colorscheme 'catppuccin'
   end
}
