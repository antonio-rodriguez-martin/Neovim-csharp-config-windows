return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
        require("nvim-treesitter").setup()

        local languages = {
            "c_sharp",
            "lua",
            "vim",
            "vimdoc",
            "json",
            "yaml",
            "markdown",
        }

        for _, lang in ipairs(languages) do
            vim.cmd("TSInstall " .. lang)
        end
    end,
}
