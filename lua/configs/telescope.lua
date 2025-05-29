local options = {
    defaults = {
        prompt_prefix = "   ",
        selection_caret = " ",
        entry_prefix = " ",
        sorting_strategy = "ascending",
        layout_config = {
            horizontal = {
                prompt_position = "top",
                preview_width = 0.55,
            },
            width = 0.87,
            height = 0.80,
        },
        mappings = {
            n = { ["q"] = require("telescope.actions").close },
        },
    },

    pickers = {
        find_files = {
            hidden = true, -- Show hidden files
            no_ignore = true, -- Don't respect .gitignore
            no_ignore_parent = true, -- Don't respect parent .gitignore
        },
        live_grep = {
            additional_args = function()
                return { "--hidden", "--no-ignore", "--no-ignore-parent" }
            end,
        },
    },

    extensions_list = { "themes", "terms" },
    extensions = {},
}

return options

