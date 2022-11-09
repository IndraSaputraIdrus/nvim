local status_ok, colorscheme = pcall(vim.cmd, "colorscheme gruvbox")
if not status_ok then
  print("colorscheme not found!")
  return
end
