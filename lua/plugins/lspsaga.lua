local ok, lspsaga = pcall(require, "lspsaga")

if not ok then
  vim.notify("lspsaga not found", vim.log.levels.ERROR)
  return
end

lspsaga.init_lsp_saga {
  move_in_saga = { prev = "<Up>", next = "<Down>" },
  finder_action_keys = {
    open = "<CR>",
    vsplit = "<C-v>",
    split = "<C-h>",
    quit = "<Esc>",
    scroll_down = "<C-f>",
    scroll_up = "<C-b>",
  },
  code_action_keys = {
    quit = "<Esc>",
    exec = "<CR>",
  },
}

