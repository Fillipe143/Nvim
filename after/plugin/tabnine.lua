require('tabnine').setup({
    disable_auto_comment=true,
    accept_keymap="<TAB>",
    dismiss_keymap = "<C-TAB>",
    debounce_ms = 800,
    suggestion_color = {gui = "#808080", cterm = 244},
    exclude_filetypes = {"TelescopePrompt", "NvimTree"},
    log_file_path = nil, -- absolute path to Tabnine log file
})
