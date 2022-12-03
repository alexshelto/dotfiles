local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
	local opts = {
		on_attach = require("alex.lsp.handlers").on_attach,
		capabilities = require("alex.lsp.handlers").capabilities,
	}

  --
	 -- if server.name == "jsonls" then
	 	-- local jsonls_opts = require("user.lsp.settings.jsonls")
	 	-- opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
	 -- end


    -- require'lspconfig'.rust_analyzer.setup{}



	-- This setup() function is exactly the same as lspconfig's setup function.
	-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
	server:setup(opts)
end)
