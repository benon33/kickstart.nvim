return {
  {
    -- NEOVIM DEVELOPMENT SETUP
    "folke/neodev.nvim"
  }, {
  -- MAPPING IDENTIFIER
  "folke/which-key.nvim",
  config = function()
    local wk = require("which-key")
    wk.register({
      ["<leader>d"] = { name = "TODO" },
      ["<leader>l"] = { name = "lsp" },
      ["<leader><leader>d"] = { name = "dap" },
      ["<leader><leader>g"] = { name = "git" },
      ["<leader><leader>l"] = { name = "lsp" },
      -- ["<leader><leader>n"] = {name = "noice"},
      ["<leader><leader>o"] = { name = "outline" },
      ["<leader><leader>p"] = { name = "plugins" },
      ["<leader><leader>q"] = { name = "quickfix" },
      ["<leader><leader>r"] = { name = "rust lsp" },
      ["<leader><leader>t"] = { name = "terminal" }
    })
  end
}, {
  -- COLORSCHEME
  "kanagawa.nvim",
  lazy = false,    -- make sure we load this during startup as it is our main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function() vim.cmd("colorscheme kanagawa-dragon") end
}
}
