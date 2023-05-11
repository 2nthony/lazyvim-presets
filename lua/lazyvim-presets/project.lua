-- https://www.lazyvim.org/plugins/extras/util.project
-- https://github.com/coffebar/project.nvim

local cmd = ":Telescope projects<cr>"

return {
  {
    "telescope.nvim",
    dependencies = {
      "2nthony/project.nvim",
      event = "VeryLazy",
      opts = {
        patterns = {
          "!>home",
          "!=tmp",
          ".git",
          "_darcs",
          ".hg",
          ".bzr",
          ".svn",
          "Makefile",
          "composer.json",
          "package.json",
          "Cargo.toml",
          "README.md",
        },
        exclude_dirs = {
          "~/.local/*",
          "~/.cache/*",
          "~/.cargo/*",
          "~/.node_modules/*",
        },
      },
      config = function(_, opts)
        require("project_nvim").setup(opts)
        require("telescope").load_extension("projects")
      end,
      keys = {
        { "<leader>fp", cmd, desc = "Projects" },
      },
    },
  },
  {
    "alpha-nvim",
    opts = function(_, dashboard)
      local button = dashboard.button("p", " " .. " Projects", cmd)
      button.opts.hl = "AlphaButtons"
      button.opts.hl_shortcut = "AlphaShortcut"
      table.insert(dashboard.section.buttons.val, 4, button)
    end,
  },
}
