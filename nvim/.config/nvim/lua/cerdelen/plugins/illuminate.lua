return {
    "RRethy/vim-illuminate",

    config = function()
        require('illuminate').configure({
            providers = {
                'lsp',
                'treesitter',
                'regex',
            },
            min_count_to_highlight = 2,
        })
        vim.cmd [[
            augroup IlluminateHighlight
                autocmd!
                autocmd VimEnter * highlight IlluminatedWordText guibg=#3c3836 gui=none
                autocmd VimEnter * highlight IlluminatedWordRead guibg=#3c3836 gui=none
                autocmd VimEnter * highlight IlluminatedWordWrite guibg=#504945 gui=none
            augroup END
        ]]
    end
}
