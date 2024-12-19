return {
  {
    'stevearc/conform.nvim',
    keys = {
      {
        "<leader><leader>f",
        function()
          require("conform").format({ async = true, lsp_fallback = true })
        end,
        mode = "",
        desc = "Format buffer",
      },
    },
    opts = {
      formatters_by_ft = {},
    },
  }
}
