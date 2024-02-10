return {
  {
    "williamboman/mason.nvim",

    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "selene",
        "luacheck",
        "shellcheck",
        "shfmt",
        "tailwindcss-language-server",
        "typescript-language-server",
        "gopls",
        "goimports",
        "gofumpt",
        "impl",
        "gomodifytags",
        "css-lsp",
        "codelldb",
      })
    end,
  },
