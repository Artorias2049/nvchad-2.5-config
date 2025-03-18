local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettier" },
        html = { "prettier" },
        python = { "isort", "black" },
    },

    formatters = {
        -- Python
        black = {
            prepend_args = {
                "--fast",
                "--line-length",
                "80",
            },
        },
        isort = {
            prepend_args = {
                "--profile",
                "black",
            },
        },
        -- -- C & C++
        ["clang-format"] = {
            prepend_args = {
                "-style={ \
                        IndentWidth: 4, \
                        TabWidth: 4, \
                        UseTab: Never, \
                        AccessModifierOffset: 0, \
                        IndentAccessModifiers: true, \
                        PackConstructorInitializers: Never}",
            },
        },
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 2000,
        lsp_fallback = true,
    },
}

return options
