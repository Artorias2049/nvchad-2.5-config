local M = {}

M.setup = function()
    -- Configure Codeium for basic completions
    vim.keymap.set("i", "<C-g>", function()
        return vim.fn["codeium#Accept"]()
    end, { expr = true, silent = true })

    -- Additional Codeium keymaps to complement Avante
    vim.keymap.set("i", "<C-;>", function()
        return vim.fn["codeium#CycleCompletions"](1)
    end, { expr = true, silent = true })

    vim.keymap.set("i", "<C-,>", function()
        return vim.fn["codeium#CycleCompletions"](-1)
    end, { expr = true, silent = true })

    vim.keymap.set("i", "<C-x>", function()
        return vim.fn["codeium#Clear"]()
    end, { expr = true, silent = true })

    -- Disable TAB for accepting Codeium suggestions (preserve for other uses)
    vim.g.codeium_no_map_tab = true
    
    -- Lower priority for Codeium when Avante is active
    vim.g.codeium_manual = false
    vim.g.codeium_filetypes = {
        ["*"] = true,
        ["avante"] = false, -- Disable in Avante buffers
    }
end

return M
