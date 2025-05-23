return {
    "ThePrimeagen/harpoon",
    keys = function()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        return {
            {
                "<leader>a",
                function()
                    mark.add_file()
                end,
                desc = "Add to harpoon",
            },
            {
                "<C-e>",
                function()
                    ui:toggle_quick_menu()
                end,
                desc = "Toggle harpoon menu",
            },
            {
                "<F1>",
                function()
                    ui.nav_file(1)
                end,
                desc = "Go to 1",
            },
            {
                "<F2>",
                function()
                    ui.nav_file(2)
                end,
                desc = "Go to 2",
            },
            {
                "<F3>",
                function()
                    ui.nav_file(3)
                end,
                desc = "Go to 3",
            },
            {
                "<F4>",
                function()
                    ui.nav_file(4)
                end,
                desc = "Go to 4",
            },
        }
    end,
}
