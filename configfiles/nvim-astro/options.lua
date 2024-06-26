-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    breakindent = true,
    wrap = false,
    showbreak="↪",
    shiftround = true,

    confirm = true,

    cursorline = true,
    colorcolumn = "80",

    list = true,
    mouse = "a",

    number = true,
    relativenumber = true,

    sidescrolloff = 5,
    scrolloff = 5,

    signcolumn = "yes",

    ignorecase = true,
    smartcase = true,
    smartindent = true,

    expandtab = true,
    shiftwidth = 4,
    softtabstop = 4,
    tabstop = 4,

    spelllang = { "en","de" },

    splitbelow = true,
    splitright = true,

    undofile = true,

    updatetime = 200,
    timeoutlen = 300,

    termguicolors = true,
  },
  g = {
    mapleader = " ", -- sets vim.g.mapleader
    autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = true, -- enable autopairs at start
    diagnostics_mode = 3, -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
  },
}
-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end
