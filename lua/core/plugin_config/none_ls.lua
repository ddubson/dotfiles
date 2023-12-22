local none_ls = require("null-ls")

none_ls.setup({
    sources = {
        none_ls.builtins.formatting.stylua,
        none_ls.builtins.diagnostics.eslint,
        none_ls.builtins.completion.spell,
        none_ls.builtins.code_actions.eslint_d,
        none_ls.builtins.code_actions.proselint,
        none_ls.builtins.code_actions.shellcheck,
        none_ls.builtins.code_actions.xo
    },
})
