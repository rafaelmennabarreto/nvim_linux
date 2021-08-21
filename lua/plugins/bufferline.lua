require("bufferline").setup{
  options = {
    right_mouse_command = "bdelete! %d",
    left_mouse_command = "buffer %d",
    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
  }
}