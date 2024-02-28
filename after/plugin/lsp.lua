local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({buffer = bufnr})
end)

-- here you can setup the language servers 
require("mason").setup()

require('lspconfig').clangd.setup({}) -- C/C++ LSP
require('lspconfig').lua_ls.setup({}) -- Lua LSP
require('lspconfig').pylsp.setup({}) -- Python LSP
require('lspconfig').tsserver.setup({}) -- Javascript/Typescript LSP
require('lspconfig').html.setup({}) -- HTML LSP
require('lspconfig').cssls.setup({}) -- CSS LSP
require('lspconfig').intelephense.setup({}) -- PHP Intelephense please work

-- Autocompletion
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		-- `Tab` key to confirm completion
		['<Tab>'] = cmp.mapping.confirm({select = false}),

		-- Ctrl+Space to trigger completion menu
		['<C-Space>'] = cmp.mapping.complete(),

		-- Navigate between snippet placeholder
		['<C-f>'] = cmp_action.luasnip_jump_forward(),
		['<C-b>'] = cmp_action.luasnip_jump_backward(),

		-- Scroll up and down in the completion documentation
		['<C-u>'] = cmp.mapping.scroll_docs(-4),
		['<C-d>'] = cmp.mapping.scroll_docs(4),
	})
})
