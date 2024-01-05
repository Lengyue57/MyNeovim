-- utf8
set.encoding = 'UTF-8'
set.fileencoding = 'utf-8'

set.guifont="UbuntuMono Nerd Font,Microsoft YaHei:h10"

-- jk移动时光标下上方保留8行
set.scrolloff = 8
set.sidescrolloff = 8

-- 使用相对号
set.number = T
set.relativenumber = T

-- 高亮所在行
set.cursorline = T

-- 显示左侧图标指示列
set.signcolumn = 'yes'

-- 右侧参考线，超过表示代码太长了，考虑换行
set.colorcolumn = '80'

-- 缩进2个空格等于一个Tab
set.tabstop = 2
set.softtabstop = 2
set.shiftround = T

-- >> << 时移动长度
set.shiftwidth = 2

-- 新行对齐当前行，空格替代tab
set.expandtab = T
set.autoindent = T
set.smartindent = T

-- 搜索大小写敏感
set.ignorecase = F
set.smartcase = T

-- 搜索高亮
set.hlsearch = T

-- 边输入边搜索
set.incsearch = T

-- 使用增强状态栏后依然需要 vim 的模式提示
set.showmode = T

-- 命令行高为1
set.cmdheight = 1

-- 当文件被外部程序修改时，自动加载
set.autoread = T

-- 折行
set.wrap = T

-- 行结尾可以跳到下一行
set.whichwrap = 'b,s,<,>,[,],h,l'

-- 允许隐藏被修改过的buffer
set.hidden = T

-- 鼠标支持
set.mouse = ""

-- 禁止创建备份文件
set.backup = F
set.writebackup = F
set.swapfile = F

-- smaller updatetime 
set.updatetime = 300

-- 等待mappings
set.timeoutlen = 100

-- split window 从下边和右边出现
set.splitbelow = T
set.splitright = T

-- 自动补全不自动选中
set.completeopt = "menu,menuone,noselect,noinsert"

-- 样式
set.background = "dark"
set.termguicolors = F

-- 不可见字符的显示，这里只把空格显示为一个点
set.list = T
set.listchars = "space:·"

-- 补全增强
set.wildmenu = T

-- Dont' pass messages to |ins-completin menu|
set.shortmess = vim.o.shortmess .. 'c'
set.pumheight = 10

-- always show tabline
set.showtabline = 2

--set.encoding = utf-8
