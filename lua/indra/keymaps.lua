local keymap = vim.api.nvim_set_keymap
function default_opts(desc)
    desc = desc or "no description"
    return {
        noremap = true,
        silent = true,
        desc = desc
    }
end

-- set j+k to exit insert mode
keymap("i", "jk", "<ESC>", default_opts())

-- autocomplete
keymap('i', '<Tab>',   [[pumvisible() ? "\<C-n>" : "\<Tab>"]],   { expr = true })
keymap('i', '<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]], { expr = true })

-- files
keymap('n', '<C-n>', '<cmd>lua MiniFiles.open()<cr>', default_opts("Toggle menu files"))

-- pick
keymap('n', '<leader>ff', '<cmd>lua MiniPick.builtin.files()<cr>', default_opts("Search files"))

-- buffer
keymap('n', '<S-h>', '<cmd>bprev<cr>', default_opts("Go to prev buffer"))
keymap('n', '<S-l>', '<cmd>bprev<cr>', default_opts("Go to next buffer"))
