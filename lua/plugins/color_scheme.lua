return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
    style = "moon",
    transparent = true,
    terminal_colors = true,
    },

    config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd.colorscheme("tokyonight")

    -- Make line numbers white
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#51B3EC', bold=true })
    vim.api.nvim_set_hl(0, 'LineNr', { fg='white', bold=true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#FB508F', bold=true })
  end,
}
