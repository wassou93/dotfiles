function ColorMyPencils(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)

  --vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  --vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  --vim.api.nvim_set_hl(0, "CursorLine", { bg = "#21202e" })
  -- vim.api.nvim_set_hl(0, "Cursor", { fg = '#eb6f92', bg = '#eb6f92' }) -- this didn't work for me
end

return {
  {
    "folke/tokyonight.nvim",
    config = function()
      local bg = "#011628"
      local bg_dark = "#011423"
      local bg_highlight = "#143652"
      local bg_search = "#0A64AC"
      local bg_visual = "#275378"
      local fg = "#CBE0F0"
      local fg_dark = "#B4D0E9"
      local fg_gutter = "#627E97"
      local border = "#547998"
      require("tokyonight").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        transparent = false, -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
        styles = {
          -- Style to be applied to different syntax groups
          -- Value is any valid attr-list value for `:help nvim_set_hl`
          comments = { italic = false },
          keywords = { italic = false },
          -- Background styles. Can be "dark", "transparent" or "normal"
          sidebars = "dark", -- style for sidebars, see below
          floats = "dark", -- style for floating windows
        },
        on_colors = function(colors)
          colors.bg = bg
          colors.bg_dark = bg_dark
          colors.bg_float = bg_dark
          colors.bg_highlight = bg_highlight
          colors.bg_popup = bg_dark
          colors.bg_search = bg_search
          colors.bg_sidebar = bg_dark
          colors.bg_statusline = bg_dark
          colors.bg_visual = bg_visual
          colors.border = border
          colors.fg = fg
          colors.fg_dark = fg_dark
          colors.fg_float = fg
          colors.fg_gutter = fg_gutter
          colors.fg_sidebar = fg_dark
        end,
      })
      -- load colorscheme here
      -- vim.cmd.colorscheme("tokyonight")
    end,
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        disable_background = true,
        styles = {
          bold = true,
          italic = true,
          transparency = true,
        },
        highlight_groups = {
          -- Comment = { fg = "foam" },
          -- VertSplit = { fg = "muted", bg = "muted" },
          -- Cursor = { fg = '#000000', bg = '#000000' } -- this didn't work for me
        },
      })

      vim.cmd("colorscheme rose-pine")
      ColorMyPencils()
    end,
  },

  {
    "tiagovla/tokyodark.nvim",
    priority = 1000,
    opts = {
      -- custom options here
      transparent_background = false,
      terminal_colors = true,
      sidebars = { "qf", "vista_kind", "terminal", "lazy" },
    },
    config = function(_, opts)
      require("tokyodark").setup(opts) -- calling setup is optional
      --ColorMyPencils()
      --vim.cmd.colorscheme("tokyodark")
    end,
  },
}
