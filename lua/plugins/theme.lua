return {
    -- 以广受欢迎的 tokyonight 主题为例
    {
        "folke/tokyonight.nvim",
        lazy = false, -- 设置 lazy = false 确保主题在启动时加载
        priority = 1000, -- 设置高优先级，确保主题被正确应用
        opts = {
            style = "night", -- 主题风格: "storm", "moon", "night", "day"
            transparent = true, -- 开启透明背景
            -- 终端配色：让内置终端使用 TokyoNight 的颜色方案[reference:10]
            terminal_colors = true,
            -- 设置文本样式[reference:11][reference:12]
            styles = {
                comments = { italic = false, fg = "#006090" }, -- 注释：不使用斜体
                keywords = { bold = true, fg = "#f070b0" }, -- 关键字：不使用斜体
                functions = { bold = true,  fg = "#b05050" }, -- 函数名：使用粗体
                variables = { fg = "#e0e0e0" }, -- 变量：无特殊样式}
            },
        },
        config = function(_, opts)
            -- 这一步是必须的，用于根据上面的 opts 配置来设置主题
            require("tokyonight").setup(opts)
            -- 应用主题颜色
            vim.cmd.colorscheme("tokyonight")
        end,
    },
}
