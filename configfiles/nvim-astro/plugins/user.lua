return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },

  {
    "mbbill/undotree",
    event = "User AstroFile",
  },
  {
    "folke/todo-comments.nvim",
    event = "User AstroFile",
    dependencies = "nvim-lua/plenary.nvim",
    config = function() require("todo-comments").setup {} end,
  },
  {
    "eandrju/cellular-automaton.nvim",
    cmd = "CellularAutomaton",
  },
}
