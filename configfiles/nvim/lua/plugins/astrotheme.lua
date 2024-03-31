-- FIXME: not working
return {
  {
    "AstroNvim/astrotheme",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "astrodark"
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
