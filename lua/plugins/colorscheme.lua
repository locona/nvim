-- Colorscheme configuration
return {
  {
    "tomasr/molokai",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("molokai")

      -- Link treesitter highlight groups to standard Vim groups for molokai
      local links = {
        -- Identifiers
        ["@variable"] = "Identifier",
        ["@variable.builtin"] = "Special",
        ["@variable.parameter"] = "Identifier",
        ["@variable.member"] = "Identifier",

        -- Constants
        ["@constant"] = "Constant",
        ["@constant.builtin"] = "Special",
        ["@constant.macro"] = "Define",

        -- Strings
        ["@string"] = "String",
        ["@string.escape"] = "SpecialChar",
        ["@string.regexp"] = "String",

        -- Numbers & Booleans
        ["@number"] = "Number",
        ["@boolean"] = "Boolean",
        ["@float"] = "Float",

        -- Functions
        ["@function"] = "Function",
        ["@function.builtin"] = "Special",
        ["@function.call"] = "Function",
        ["@function.macro"] = "Macro",
        ["@function.method"] = "Function",
        ["@function.method.call"] = "Function",

        -- Keywords
        ["@keyword"] = "Keyword",
        ["@keyword.conditional"] = "Conditional",
        ["@keyword.repeat"] = "Repeat",
        ["@keyword.return"] = "Keyword",
        ["@keyword.function"] = "Keyword",
        ["@keyword.operator"] = "Operator",
        ["@keyword.import"] = "Include",
        ["@keyword.export"] = "Include",

        -- Operators & Punctuation
        ["@operator"] = "Operator",
        ["@punctuation.delimiter"] = "Delimiter",
        ["@punctuation.bracket"] = "Delimiter",
        ["@punctuation.special"] = "Special",

        -- Types
        ["@type"] = "Type",
        ["@type.builtin"] = "Type",
        ["@type.definition"] = "Typedef",
        ["@type.qualifier"] = "Type",

        -- Misc
        ["@constructor"] = "Special",
        ["@property"] = "Identifier",
        ["@comment"] = "Comment",
        ["@tag"] = "Tag",
        ["@tag.attribute"] = "Identifier",
        ["@tag.delimiter"] = "Delimiter",

        -- JSX/TSX specific
        ["@tag.tsx"] = "Statement",
        ["@tag.builtin.tsx"] = "Special",
        ["@constructor.tsx"] = "Statement",
      }

      for newgroup, oldgroup in pairs(links) do
        vim.api.nvim_set_hl(0, newgroup, { link = oldgroup })
      end
    end,
  },
}
