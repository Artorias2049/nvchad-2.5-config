require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Avante AI mappings
map("n", "<leader>aa", function()
  require("avante.api").ask()
end, { desc = "Avante: Ask AI" })

map("v", "<leader>ae", function()
  require("avante.api").edit()
end, { desc = "Avante: Edit selection" })

map("n", "<leader>ar", function()
  require("avante.api").refresh()
end, { desc = "Avante: Refresh" })

map("n", "<leader>af", function()
  require("avante.api").focus()
end, { desc = "Avante: Focus chat" })

-- Debug integration with Avante
map("n", "<leader>ad", function()
  require("dapui").toggle()
  vim.defer_fn(function()
    require("avante.api").ask({
      question = "Help me debug this code. What might be causing issues?",
    })
  end, 500)
end, { desc = "Avante: Debug assistant" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
