local status_ok, colorscheme = pcall(vim.cmd, "colorscheme dracula")
if not status_ok then
  print("colorscheme not found!")
  return
end
