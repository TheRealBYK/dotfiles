local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end
return {
    {
        "folke/tokyonight.nvim",
        config = function()
            vim.cmd.colorscheme "pywal16"
            enable_transparency()
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            theme = 'pywal16',
        }
    },
    {
        'uZer/pywal16.nvim',
        -- for local dev replace with:
        -- dir = '~/your/path/pywal16.nvim',
        config = function()
            vim.cmd.colorscheme("pywal16")
        end,
    },
}
