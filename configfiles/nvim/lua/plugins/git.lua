--: Here is a more advanced example where we pass configuration
-- options to `gitsigns.nvim`. This is equivalent to the following Lua:
--    require('gitsigns').setup({ ... })
--
-- See `:help gitsigns` to understand what the configuration keys do
return {
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "+" },
        change = { text = "┃" },
        delete = { text = "x" },
        topdelete = { text = "x" },
        changedelete = { text = "~" },
        untracked = { text = "┆" },
      },

      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        -- Navigation
        vim.keymap.set("n", "]g", function()
          if vim.wo.diff then
            return "]g"
          end
          vim.schedule(function()
            gs.next_hunk()
          end)
          return "<Ignore>"
        end, { expr = true })

        vim.keymap.set("n", "[g", function()
          if vim.wo.diff then
            return "[g"
          end
          vim.schedule(function()
            gs.prev_hunk()
          end)
          return "<Ignore>"
        end, { expr = true })

        -- Actions
        vim.keymap.set("n", "<leader>gp", gs.preview_hunk_inline)
        vim.keymap.set("n", "<leader>gb", gs.toggle_current_line_blame)
      end,
    },
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration

      "nvim-telescope/telescope.nvim", -- optional
    },
    config = function()
      local neogit = require "neogit"
      neogit.setup {
        disable_hint = true,
        signs = {
          hunk = { "", "" },
          item = { " ", " " },
          section = { " ", " " },
        },
      }

      vim.keymap.set("n", "<leader>gg", neogit.open, { desc = "Go to previous [D]iagnostic message" })
    end,
  },
  {
    "tpope/vim-fugitive",
  },
}
-- vim: ts=2 sts=2 sw=2 et
