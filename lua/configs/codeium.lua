local M = {}

M.setup = function()
    -- Configure Codeium
    vim.keymap.set("i", "<C-g>", function()
        return vim.fn["codeium#Accept"]()
    end, { expr = true, silent = true })

    -- Disable TAB for accepting Codeium suggestions
    vim.g.codeium_no_map_tab = true
end

return M
