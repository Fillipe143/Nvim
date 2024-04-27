function ColorMyPencils(color)
    color = color or 'lupper'
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    -- vim.cmd('highlight LineNr guifg=#ff0000 ctermfg=red')
end

ColorMyPencils()
