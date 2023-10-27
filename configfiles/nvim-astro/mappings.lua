local ui = require "astronvim.utils.ui"
-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- -- second key is the lefthand side of the map
    -- -- mappings seen under group name "Buffer"
    -- ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    -- ["<leader>bD"] = {
    --   function()
    --     require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
    --   end,
    --   desc = "Pick to close",
    -- },
    -- -- tables with the `name` key will be registered with which-key if it's installed
    -- -- this is useful for naming menus
    -- ["<leader>b"] = { name = "Buffers" },
    -- -- quick save
    -- -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    ["J"] = { "mzJ`z", desc = "Join lines" },
    ["<leader>uu"] = { "<cmd>UndotreeToggle<cr>", desc = "Toggle Undotree" },
    ["<leader>uU"] = { ui.toggle_url_match, desc = "Toggle URL highlight" },
    ["<leader>P"] = { function() require("telescope").extensions.projects.projects {} end, desc = "Projects Picker" },
    ["<leader>fj"] = {
      function() require("telescope.builtin").jumplist() end,
      desc = "Find in jumplist",
    },
    ["<leader>fT"] = {
      function() require("telescope.builtin").colorscheme { enable_preview = true } end,
      desc = "Find themes",
    },
    ["<leader>ft"] = {
      function() require("telescope._extensions.todo-comments").exports.todo() end,
      desc = "Find TODOs",
    },
    ["<leader>fF"] = {
      function() require("telescope.builtin").find_files { hidden = true, no_ignore = true, follow = true } end,
      desc = "Find all files",
    },
    ["<leader>G"] = { "<cmd>CellularAutomaton make_it_rain<CR>" },
  },
  v = {
    ["K"] = { ":m '<-2<CR>gv=gv", desc = "Move up" },
    ["J"] = { ":m '>+1<CR>gv=gv", desc = "Move down" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}

-- Other Keymappings
--
-- vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })
--
-- -- Better up/down
-- vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
-- vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
--
-- vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
-- vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
-- vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
-- vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })
--
--
-- -- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- -- vim.keymap.set("n", "<C-u>", "<C-u>zz")
--
--
-- -- Use "black hole" register
-- -- vim.keymap.set("x", "<leader>p", [["_dP]])
-- -- vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
--
-- -- Copy to system clipboard
-- vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])
--
--
-- -- -- Replace word under cursor
-- -- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
