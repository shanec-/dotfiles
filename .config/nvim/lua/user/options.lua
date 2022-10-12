local options = {
  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
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

