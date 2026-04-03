return {
    -- 以广受欢迎的 tokyonight 主题为例
    {
        "folke/tokyonight.nvim",
        lazy = false, -- 设置 lazy = false 确保主题在启动时加载
        priority = 1000, -- 设置高优先级，确保主题被正确应用
        opts = {
            style = "night", -- 主题风格: "storm", "moon", "night", "day"
            transparent = true, -- 开启透明背景
        },
        config = function(_, opts)
            -- 这一步是必须的，用于根据上面的 opts 配置来设置主题
            require("tokyonight").setup(opts)
            -- 应用主题颜色
            vim.cmd.colorscheme("tokyonight")
            -- 将背景颜色改为灰色
            --vim.api.nvim_set_hl(0, "Normal", { fg = "#770777" })
            --vim.api.nvim_set_hl(0, "LineNr", { fg = "#7a0f70" }) -- 行号背景
            --vim.api.nvim_set_hl(0, "CursorLine", { fg = "#2c2c3a" }) -- 光标行背景
            --vim.api.nvim_set_hl(0, "SignColumn", { fg = "none" }) -- 符号列透明
        end,
    },
}
