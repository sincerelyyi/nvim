-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- tab键设置
vim.opt.tabstop = 4 -- 一个 <Tab> 在文件中显示为 4 个空格[reference:2]
vim.opt.softtabstop = 4 -- 按 Tab 键时，插入或删除 4 个空格[reference:3]
vim.opt.shiftwidth = 4 -- 使用 ">>" 缩进命令时，移动 4 个空格[reference:4]
vim.opt.expandtab = true -- 将输入的 <Tab> 自动替换为空格[reference:5]

--保存时不要自动格式化代码
vim.g.autoformat = false
