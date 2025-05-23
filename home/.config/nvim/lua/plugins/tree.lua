-- DONE
return {
    "kyazdani42/nvim-tree.lua",
    dependencies = {
        "kyazdani42/nvim-web-devicons",
    },
    lazy = false,
    opts = {
        disable_netrw = true,
        hijack_netrw = true,
        respect_buf_cwd = true,
        sync_root_with_cwd = true,
        filters = {
            custom = { ".git", "node_modules", ".vscode", ".d.ts", ".d.ts.map" }
        },
        git = {
            ignore = true
        },
        view = {
            relativenumber = true,
            float = {
                enable = true,
                open_win_config = function()
                    local HEIGHT_RATIO = 0.8 -- You can change this
                    local WIDTH_RATIO = 0.5  -- You can change this too
                    local screen_w = vim.opt.columns:get()
                    local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
                    local window_w = screen_w * WIDTH_RATIO
                    local window_h = screen_h * HEIGHT_RATIO
                    local window_w_int = math.floor(window_w)
                    local window_h_int = math.floor(window_h)
                    local center_x = (screen_w - window_w) / 2
                    local center_y = ((vim.opt.lines:get() - window_h) / 2)
                        - vim.opt.cmdheight:get()
                    return {
                        border = "rounded",
                        relative = "editor",
                        row = center_y,
                        col = center_x,
                        width = window_w_int,
                        height = window_h_int,
                    }
                end,
            },
            width = function()
                local WIDTH_RATIO = 0.8 -- You can change this
                return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
            end,
        },
    },
    keys = {
        { "<C-n>", "<cmd>NvimTreeToggle<cr>", desc = "Toggle window" },
    },
}
