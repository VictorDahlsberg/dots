return {
    "nvimtools/none-ls.nvim",
    dependencies = { "mason.nvim" },
    opts = function(_, opts)
        local nls = require("null-ls")
        opts.sources = {
            nls.builtins.formatting.black,
            nls.builtins.formatting.isort,
            nls.builtins.formatting.stylua,
            nls.builtins.formatting.shfmt,
        }
    end
}
