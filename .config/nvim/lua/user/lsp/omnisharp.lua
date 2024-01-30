-- omnisharp lsp config
require'lspconfig'.omnisharp.setup {
  handlers = {
    ["textDocument/definition"] = require('omnisharp_extended').handler,
  },
  cmd = { vim.fn.expand("omnisharp"), "--languageserver" , "--hostPID", tostring(pid) },
}
