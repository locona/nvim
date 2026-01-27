lua << EOF
local ok, autopairs = pcall(require, "nvim-autopairs")
if ok then
  autopairs.setup {}
end
EOF
