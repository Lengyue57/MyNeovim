require("nvim-lsp-installer").setup {
  automatic_installation = true,
  ui = {
    icons = {
      server_installed = "󰗠",
      server_pending = "󰅙",
      server_uninstalled = "󰳟"
    },
  },
}
local lspconfig = require("lspconfig")

local lsp_installer = require 'nvim-lsp-installer'

-- 安装列表
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
-- { key: 语言 value: 配置文件 }
local servers = {
  asm_lsp = require 'lsp.asm',
  clangd = require 'lsp.cpp',
  ccls = require 'lsp.cpp',
  cmake = require 'lsp.cmake',
  sumneko_lua = require 'lsp.lua', -- /lua/lsp/lua.lua
}

-- 自动安装 LanguageServers
for name, _ in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found then
    if not server:is_installed() then
      print('Installing ' .. name)
      server:install()
    end
  end
end

--[[
local rust_tool = require("rust-tools")
rust_tool.setup {
  server = { on_attach = on_attach }
}
]]

for name, config in pairs(servers) do
  if config ~= nil and type(config) == "table" then
    -- 自定义初始化配置文件必须实现on_setup 方法
    config.on_setup(lspconfig[name])
  else
    -- 使用默认参数
    lspconfig[name].setup({})
  end
end

lsp_installer.on_server_ready(function(server)
  local opts = servers[server.name]
  if opts then
    opts.on_attach = function(_, bufnr)
      local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
      end
      --[[
      local function buf_set_option(...)
        vim.api.nvim_buf_set_option(bufnr, ...)
      end
      ]]

      -- 绑定快捷键
      -- require('keybindings').maplsp(buf_set_keymap)
    end
    opts.flags = {
      debounce_text_changes = 150,
    }
    server:setup(opts)
  end
end)
