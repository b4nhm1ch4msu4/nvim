require("telescope").setup({
  pickers = {
    colorscheme = { enable_preview = true },
  },
  defaults = {
    layout_config = {
      horizontal = { preview_cutoff = 0 },
    },
  },
})
