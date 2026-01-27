-- UI components (neo-tree, lualine)
return {
  -- Neo-tree (replaces NERDTree)
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    cmd = "Neotree",
    keys = {
      { "<C-e>", "<cmd>Neotree toggle<cr>", desc = "Toggle Neo-tree" },
      { ",n", "<cmd>Neotree reveal<cr>", desc = "Reveal in Neo-tree" },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
        popup_border_style = "rounded",
        filesystem = {
          filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = false,
            hide_by_name = {
              ".git",
              "node_modules",
              ".cache",
            },
          },
          follow_current_file = {
            enabled = true,
          },
          use_libuv_file_watcher = true,
        },
        window = {
          width = 35,
          mappings = {
            ["<space>"] = "none",
            ["u"] = "navigate_up",
          },
        },
        default_component_configs = {
          indent = {
            with_expanders = true,
          },
        },
      })
    end,
  },

  -- Lualine (replaces airline)
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "auto",
          globalstatus = true,
          disabled_filetypes = { statusline = { "dashboard", "lazy" } },
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff", "diagnostics" },
          lualine_c = { { "filename", path = 1 } },
          lualine_x = { "encoding", "fileformat", "filetype" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
        extensions = { "neo-tree", "lazy" },
      })
    end,
  },

  -- Plenary (required by many plugins)
  {
    "nvim-lua/plenary.nvim",
    lazy = true,
  },

  -- Web devicons
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
  },
}
