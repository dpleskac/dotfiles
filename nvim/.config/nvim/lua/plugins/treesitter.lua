return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
        local treesitter = require('nvim-treesitter.configs')
        treesitter.setup({
            ensure_installed = { "lua", "javascript", "yaml", "python", "bash", "go", "terraform", "helm", "sql" },
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
