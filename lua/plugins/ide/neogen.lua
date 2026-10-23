require("neogen").setup({
    enabled = true,
    snippet_engine = "nvim",
    languages = {
        python = {
            annotation_convention = "google_docstrings"
        }
    }
})
