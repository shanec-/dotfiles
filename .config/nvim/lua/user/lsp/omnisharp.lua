-- omnisharp lsp config
require'lspconfig'.omnisharp.setup {
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
  on_attach = function(_, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- local bufopts = { noremap=true, silent=true, buffer=bufnr }
    -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  end,
  cmd = { vim.fn.expand("$HOME/.local/share/nvim/mason/bin/omnisharp"), "--languageserver" , "--hostPID", tostring(pid) },

}
