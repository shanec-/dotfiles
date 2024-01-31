-- omnisharp lsp config
require'lspconfig'.omnisharp.setup {
  on_attach = function (client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    -- buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
    local opts = { noremap = true, silent = true }

    buf_set_keymap('n', '<leader>gd', ':lua require"omnisharp_extended".telescope_lsp_definitions()<CR>', opts)
  end,
  handlers = {
    ["textDocument/definition"] = require('omnisharp_extended').handler,
  },
  cmd = { vim.fn.expand("omnisharp"), "--languageserver" , "--hostPID", tostring(pid) },
}
