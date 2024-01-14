return {
   {
      'williamboman/mason.nvim',
      config = function()
         require('mason').setup({})
      end
   },
   {
      'williamboman/mason-lspconfig.nvim',
      config = function()
         require('mason-lspconfig').setup({
            ensure_installed = {
               'lua_ls',
               "bashls",
               "biome",
               "marksman",
               "typos_lsp",
               "vimls",
            },
         })
      end
   },
   {
      'neovim/nvim-lspconfig',
      config = function()
         local lspconfig = require('lspconfig')
         local capabilities = require('cmp_nvim_lsp').default_capabilities()

         lspconfig.lua_ls.setup({
            capabilities = capabilities
         })
         lspconfig.bashls.setup({
            capabilities = capabilities
         })
         lspconfig.biome.setup({
            capabilities = capabilities
         })
         lspconfig.marksman.setup({
            capabilities = capabilities
         })
         lspconfig.typos_lsp.setup({
            capabilities = capabilities
         })
         lspconfig.vimls.setup({
            capabilities = capabilities
         })

         vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
         vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
         vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
         vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
      end
   },
}
