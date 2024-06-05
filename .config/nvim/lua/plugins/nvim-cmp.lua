return
{
    'hrsh7th/nvim-cmp',
    init = function()
        local cmp = require('cmp')

        cmp.setup({
            mapping = cmp.mapping.preset.insert({
                ['<Right>'] = cmp.mapping.confirm({ select = true }),
                ['<Left>'] = cmp.mapping.complete(),
            })
        })
    end
}
