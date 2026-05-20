return {
  {
    "LazyVim/LazyVim",
    opts = {
      news = {
        headlines = false,
      },
    }
  },
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "lua-language-server",
        "json-lsp",
        "bash-language-server",
        "stylua",
        "shfmt",
        "shellcheck",
      })
    end
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        sh = { "shellcheck" },
      },
    }
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        sh = { "shfmt" },
        ["*"] = { "trim_whitespace" },
      },
    }
  },
  {
    "RedsXDD/neopywal.nvim",
    name = "neopywal",
    lazy = false,
    priority = 1000,
    config = function()
      require("neopywal").setup({
        transparent_background = true,
        use_palette = {
          dark = "wallust",
          light = "wallust",
        }
      })
      vim.cmd.colorscheme("neopywal-dark")
    end
  },
}
