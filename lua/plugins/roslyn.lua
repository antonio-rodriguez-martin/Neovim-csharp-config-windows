return {
    "seblyng/roslyn.nvim",
    ft = "cs",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
    },
    opts = {
        filewatching = "roslyn",
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
    },
}
