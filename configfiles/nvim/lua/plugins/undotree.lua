return {
  {
    "mbbill/undotree",
    opts = {},
    config = function()
      vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<cr>", { desc = "Toggel Undotree" })
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
