require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- MarkdownViewr
vim.keymap.set("n", "<leader>s", "<CMD>Markview splitToggle<CR>", { desc = "Toggles `splitview` for current buffer." })

-- 快速保存文件 (普通模式和插入模式都可用)
map("n", "<C-s>", ":w<CR>", { desc = "保存文件" })
map("i", "<C-s>", "<ESC>:w<CR>a", { desc = "保存文件" })

-- 清除搜索高亮 (按 ESC 两次)
map("n", "<ESC><ESC>", ":nohlsearch<CR>", { desc = "清除搜索高亮" })

-- 更好的光标移动（折行处理：按行视觉移动而非逻辑行）
map("n", "j", "v:count ? 'j' : 'gj'", { expr = true, desc = "下移（处理折行）" })
map("n", "k", "v:count ? 'k' : 'gk'", { expr = true, desc = "上移（处理折行）" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
