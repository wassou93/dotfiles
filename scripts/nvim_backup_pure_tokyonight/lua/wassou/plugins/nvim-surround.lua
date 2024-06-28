return {
  "kylechui/nvim-surround",
  event = { "BufReadPre", "BufNewFile" },
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  config = true,
}

-- ys then motion then the character "/(/[/..."
-- ys - motion - t to add a surrounding tag
-- cst - change surrounding tag
