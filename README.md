# Dotfiles

This repository contains my Hyprland configuration files for CachyOS.

## Screenshots

![Screenshot 1](https://github.com/wassou93/dotfiles/assets/8655283/df298d68-b35b-4993-8c8f-6f6a9155583c)
![Screenshot 2](https://github.com/wassou93/dotfiles/assets/8655283/64fca055-df4f-438b-95e8-9b3635425d8e)

## Troubleshooting

If your theme doesn't have consistent transparency, you can force more transparent fields using these highlight groups in your Neovim configuration:

```lua
vim.cmd([[
  highlight NvimTreeNormal guibg=NONE ctermbg=NONE
  highlight NvimTreeEndOfBuffer guibg=NONE ctermbg=NONE
  highlight NvimTreeVertSplit guibg=NONE ctermbg=NONE
  highlight NvimTreeStatusLine guibg=NONE ctermbg=NONE
  highlight NvimTreeStatusLineNC guibg=NONE ctermbg=NONE
  highlight NvimTreeWinSeparator guibg=NONE ctermbg=NONE
  highlight VertSplit guibg=NONE ctermbg=NONE
  highlight HorizontalSplit guibg=NONE ctermbg=NONE
  highlight NvimTreeCursorLine guibg=NONE ctermbg=NONE gui=underline
]])
