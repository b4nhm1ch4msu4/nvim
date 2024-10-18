return {
  "nvimdev/dashboard-nvim",
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
  event = "VimEnter",
  config = function()
    local db = require("dashboard")
    local today = os.date("%A, %Y-%m-%d")
    db.setup({
      theme = "doom",
      config = {
        header = {
          "",
          "",
          "",
          "",
          "",
          " ▄▄   ▄▄ ▄▄▄ ▄▄▄   ▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ",
          "█  █▄█  █   █   █ █ █       █       █",
          "█       █   █   █▄█ █    ▄▄▄█    ▄  █",
          "█       █   █      ▄█   █▄▄▄█   █▄█ █",
          "█       █   █     █▄█    ▄▄▄█    ▄▄▄█",
          "█ ██▄██ █   █    ▄  █   █▄▄▄█   █    ",
          "█▄█   █▄█▄▄▄█▄▄▄█ █▄█▄▄▄▄▄▄▄█▄▄▄█    ",
          "",
          "",
          "",
        },
        center = {
          {
            icon = " ",
            icon_hl = "Title",
            desc = "Recent Files",
            desc_hl = "String",
            key = "r",
            key_format = " %s",
            action = "Telescope oldfiles",
          },
          {
            icon = " ",
            icon_hl = "Title",
            desc = "Find File           ",
            desc_hl = "String",
            key = "f",
            -- keymap = "SPC f f",
            key_hl = "Number",
            key_format = " %s",
            action = "Telescope find_files",
          },
          {
            icon = " ",
            icon_hl = "Title",
            desc = "Live Grep",
            desc_hl = "String",
            key = "g",
            key_format = " %s",
            action = "Telescope live_grep",
          },
        },
        footer = {
          "",
          "",
          today,
          "",
          "󰸼󰸼󰸼 Welcome Master! 󰸼󰸼󰸼",
          "",
        },
      },
    })
  end
}
