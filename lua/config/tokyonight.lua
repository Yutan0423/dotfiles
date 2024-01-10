vim.cmd[[colorscheme tokyonight]]

require('tokyonight').setup({
  -- use the night style
  style = "moon",
  -- disable italic for functions
  transparent = true,
  styles = {
    functions = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  on_colors = function(colors)
    colors.hint = colors.orange
    colors.error = "#ff0000"
  end
})