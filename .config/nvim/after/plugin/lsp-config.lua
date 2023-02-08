-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

-- (Optional) Configure lua language server for neovim
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_attach = function(client, bufnr)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {buffer = bufnr})
  -- More keybindings and commands....
end

require('lspconfig').tsserver.setup({
  on_attach = lsp_attach,
  capabilities = lsp_capabilities
})

lsp.nvim_workspace()
lsp.setup()
