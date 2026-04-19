return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        c = { "astyle" },
        cpp = { "astyle" },
      },
      formatters = {
        astyle = {
          --prepend_args = { "--style=allman", "--indent=spaces=4", "--pad-oper" },
          -- 也可以指定全局配置文件
          prepend_args = { "--options=/home/jiayi/.astylerc" },
        },
      },
    },
  },
}
