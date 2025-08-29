-- Basic settings
vim.opt.number = true
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 8

-- Identation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Visual settings
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "100"
vim.opt.wrap = false 

-- Key mappings
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Quick file navigation
vim.keymap.set("n", "<leader>e", ":tabnew | Explore<CR>", { desc = "Open file explorer" })

-- Tabs
local function open_file_in_tab()
    vim.ui.input({ prompt = "File to open in new tab: ", completion = "file" }, function(input)
        if input and input ~= "" then
            vim.cmd("tabnew " .. input)
        end
    end)
end

vim.keymap.set("n", "<leader>tn", open_file_in_tab, { desc = "Open file in new tab" })
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close tab" })

vim.keymap.set("n", "<C-h>", ":tabp<CR>", { desc = "Move to previous tab" })
vim.keymap.set("n", "<C-l>", ":tabn<CR>", { desc = "Mode to next tab" })















