local options = {
    ensure_installed = {
        "python",
        "c",
        "cpp",
        "javascript",
        "typescript",
        "bash",
        "lua",
        "luadoc",
        "markdown",
        "printf",
        "toml",
        "vim",
        "vimdoc",
        "yaml",
        "latex",
    },

    highlight = {
        enable = true,
        use_languagetree = true,
    },

    indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)
