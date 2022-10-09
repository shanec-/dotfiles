local options = {
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    relativenumber = true,
    nu = true,
    hlsearch = false,
    wrap = false,
    smartindent = true,
    colorcolumn = "100",
    scrolloff = 8,
    showmode = false
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

