require ("zen-mode").setup()
require("twilight").setup()

local keymap = vim.keymap

keymap.set("n", "<leader>zen", function()
  require("zen-mode").toggle({})
end, { noremap = true})

