local ok, lualine = pcall(require, 'lualine')

if not ok then
  vim.notify('lualine not found', vim.log.levels.ERROR)
  return
end

lualine.setup({
  options = {
    theme = 'onedark',
    section_separators = '',
    component_separators = '',
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
})
