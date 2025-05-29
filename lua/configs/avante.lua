local M = {}

M.setup = function()
    require("avante").setup({
        provider = "gemini",
        gemini = {
            endpoint = "https://generativelanguage.googleapis.com/v1beta/models",
            model = "gemini-2.0-flash",
            temperature = 0,
            max_tokens = 4096,
        },
        behaviour = {
            auto_suggestions = false,
            auto_set_highlight_group = true,
            auto_set_keymaps = false, -- We handle keymaps in mappings.lua
            auto_apply_diff_after_generation = false,
            support_paste_from_clipboard = false,
        },
        hints = { enabled = true },
        windows = {
            width = 30,
            wrap = true,
            main = {
                border = "rounded",
                winblend = 5,
            },
            edit = {
                border = "rounded",
                start_insert = true,
            },
        },
        highlights = {
            diff = {
                current = "DiffText",
                incoming = "DiffAdd",
            },
        },
        diff = {
            autojump = true,
            debug = false,
            list_opener = "copen",
        },
        -- Integration with conform.nvim for post-edit formatting
        post_edit_hook = function()
            local conform_ok, conform = pcall(require, "conform")
            if conform_ok then
                conform.format({
                    bufnr = vim.api.nvim_get_current_buf(),
                    lsp_fallback = true,
                    quiet = true,
                })
            end
        end,
        -- Context strategy integration
        context_strategy = {
            lsp = true,
            treesitter = true,
            dap = true,
            git = true,
        },
        max_context_files = 5,
    })
end

return M
