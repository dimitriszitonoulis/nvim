require("which-key").setup({
    preset = "helix",
    -- win = {
    --     border = "rounded",
    --     padding = { 1, 2 },
    -- },
    --
    -- layout = {
    --     spacing = 4,
    --     align = "left",
    -- },
    --
})

require("which-key").add({
    { "<leader>b", group = "Buffer" },
    { "<leader>c", group = "Code" },
    { "<leader>g", group = "Git" },
    { "<leader>f", group = "Telescope" },
    { "<leader>m", group = "Markdown" },
    { "<leader>w", group = "Window" },
    { "<leader>x", group = "Diagnostics" },

})
