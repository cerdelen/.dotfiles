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
            vim.cmd [[
              highlight IlluminatedWordText guibg=#3c3836 gui=none
              highlight IlluminatedWordRead guibg=#3c3836 gui=none
              highlight IlluminatedWordWrite guibg=#504945 gui=none
            ]]
        })
    end
}
