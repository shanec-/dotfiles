local gOptions = {
  loaded_netrw = 1, -- nvim-tree
  loaded_netrwPlugin = 1 -- nvim-tree
}

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
  showmode = false,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

for k, v in pairs(gOptions) do
  vim.g[k] = v
end

