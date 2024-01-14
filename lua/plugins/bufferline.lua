return {
   {
      'akinsho/bufferline.nvim',
      version = '*',
      dependencies = 'nvim-tree/nvim-web-devicons',
      config = function()
         vim.opt.termguicolors = true
         require('bufferline').setup({
            options = {
               offsets = {
                  {
                     filetype = 'Neo-tree',
                     text = function()
                        return vim.fn.geetcwd()
                     end,
                     highlight = 'Directory',
                     text_align = 'left',
                     seperator = true,
                  }
               }
            }
         })
      end,
   },
}
