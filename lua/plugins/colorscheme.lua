return {
  "folke/tokyonight.nvim",
  -- opts = {
  --   transparent = true,
  --   styles = {
  --     sidebars = "transparent",
  --     floats = "transparent",
  --   },
  -- },
  config = function()
    local colorscheme = "tokyonight-storm"

    -- pcall : protected call
    -- return boolean value to indicate its successful execution
    local is_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
    if not is_ok then
      vim.notify("colorscheme " .. colorscheme .. " not found! ")
      return
    end
  end
}
