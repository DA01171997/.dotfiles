if vim.g.vscode then
    -- VSCode extension
    vim.g.mapleader = ' '

    vim.opt.clipboard = { "unnamedplus" }

    -- Yank to system clipboard in normal & visual mode
    vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })
    vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Yank line to system clipboard" })

    -- Paste from system clipboard
    vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from system clipboard" })
    vim.keymap.set({ "n", "v" }, "<leader>P", '"+P', { desc = "Paste before from clipboard" }

    -- Ctrl+A in normal mode: select entire buffer
    vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })

    -- Ctrl+A in insert mode: leave insert, select all
    vim.keymap.set("i", "<C-a>", "<Esc>ggVG", { desc = "Select all from insert mode" })
else
    -- Ordinary Neovim
    -- Bootstrap lazy.nvim, LazyVim, and your plugins
    require("config.lazy")
end
