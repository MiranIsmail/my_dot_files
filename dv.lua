return {
  {
    "sindrets/diffview.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      {
        "dv",
        function()
          if next(require("diffview.lib").views) == nil then
            vim.cmd("DiffviewOpen")
          else
            vim.cmd("DiffviewClose")
          end
        end,
        desc = "Toggle Diffview window",
      },
    },
  },

  {
    "akinsho/git-conflict.nvim",
    version = "*",
    event = "BufReadPost",
    config = function()
      require("git-conflict").setup({
        default_mappings = true, -- enable default keymaps
        highlights = {
          incoming = "DiffAdd",
          current = "DiffText",
        },
      })
    end,
  },
}
