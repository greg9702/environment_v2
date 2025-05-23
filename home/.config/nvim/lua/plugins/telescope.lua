return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
    },
    lazy = false,
    opts = {
        pickers = {
            find_files = {
                hidden = true,
            },
            git_files = {
                hidden = true,
            },
        },
        defaults = {
            layout_strategy = 'vertical',
            layout_config = { width = 0.99, height = 0.99 },
            file_ignore_patters = { "yarn.lock", "node_modules/*" },
            vimgrep_arguments = {
                'rg', '--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case',
                '--fixed-strings'
            }
        },
    },
    config = function(_, opts)
        require("telescope").setup(opts)
    end,
    keys = {
        { "<C-p>",      "<cmd>Telescope git_files<cr>",  desc = "Find files" },
        { "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "Find all files" },
        { "<C-f>",      "<cmd>Telescope live_grep<cr>",  desc = "Find in files" },
    },
}
