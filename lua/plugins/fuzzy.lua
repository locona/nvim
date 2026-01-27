-- Telescope (replaces ctrlp)
return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    cmd = "Telescope",
    keys = {
      -- File search (sf is defined in config for project root support)
      { "sa", "<cmd>Telescope find_files<cr>", desc = "Find files (cwd)" },
      -- Buffer list (sb -> buffers)
      { "sb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
      -- Recent files (sm -> oldfiles)
      { "sm", "<cmd>Telescope oldfiles<cr>", desc = "Recent files" },
      -- Line search (sl -> current_buffer_fuzzy_find)
      { "sl", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Search in buffer" },
      -- Grep (ss, C-g -> live_grep, literal/fixed string search)
      { "ss", function()
        require("telescope.builtin").live_grep({
          additional_args = function() return { "--fixed-strings" } end,
        })
      end, desc = "Live grep (literal)" },
      { "<C-g>", function()
        require("telescope.builtin").live_grep({
          additional_args = function() return { "--fixed-strings" } end,
        })
      end, desc = "Live grep (literal)" },
      -- Regex grep
      { "sS", "<cmd>Telescope live_grep<cr>", desc = "Live grep (regex)" },
      -- Mixed search
      { "sc", "<cmd>Telescope resume<cr>", desc = "Resume last search" },
      -- Git
      { "sg", "<cmd>Telescope git_files<cr>", desc = "Git files" },
      -- Help
      { "sh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
      -- Diagnostics
      { "sd", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics" },
      -- LSP
      { "gr", "<cmd>Telescope lsp_references<cr>", desc = "LSP references" },
      { "gd", "<cmd>Telescope lsp_definitions<cr>", desc = "LSP definitions" },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = function()
          return vim.fn.executable("make") == 1
        end,
      },
    },
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")

      -- Find project root (.git, package.json, etc.)
      local function get_project_root()
        local root_markers = { ".git", "package.json", "Cargo.toml", "go.mod", "Makefile", ".project_root" }
        local root = vim.fs.find(root_markers, { upward = true, path = vim.fn.expand("%:p:h") })[1]
        if root then
          return vim.fn.fnamemodify(root, ":h")
        end
        return vim.fn.getcwd()
      end

      -- Custom find_files from project root
      vim.keymap.set("n", "sf", function()
        require("telescope.builtin").find_files({ cwd = get_project_root() })
      end, { desc = "Find files (project root)" })

      telescope.setup({
        defaults = {
          prompt_prefix = " ",
          selection_caret = " ",
          path_display = { "truncate" },
          sorting_strategy = "ascending",
          layout_config = {
            horizontal = {
              prompt_position = "top",
              preview_width = 0.55,
            },
            width = 0.87,
            height = 0.80,
          },
          mappings = {
            i = {
              ["<C-n>"] = actions.cycle_history_next,
              ["<C-p>"] = actions.cycle_history_prev,
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
              ["<ESC>"] = actions.close,
            },
          },
          file_ignore_patterns = {
            "node_modules",
            ".git/",
            "%.lock",
            "vendor/",
            "%.cache",
          },
        },
        pickers = {
          find_files = {
            hidden = true,
          },
          live_grep = {
            additional_args = function()
              return { "--hidden" }
            end,
          },
        },
      })

      -- Load fzf extension if available
      pcall(telescope.load_extension, "fzf")
    end,
  },
}
