-- Dart/Flutter configuration
return {
  {
    "dart-lang/dart-vim-plugin",
    ft = "dart",
  },
  {
    "thosakwe/vim-flutter",
    ft = "dart",
    config = function()
      vim.g.flutter_hot_reload_on_save = 1
      vim.g.flutter_hot_restart_on_save = 0
    end,
  },
}
