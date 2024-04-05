lua << EOF
require('nvim-treesitter.configs').setup {

  ensure_installed = { "lua", "rust", "vim", "graphql", "go", "html", "javascript", "json", "python", "regex", "typescript", "yaml", "markdown", "dockerfile", "prisma", "sql", "terraform", "tsx", "dart" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,


  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  }
}
EOF
