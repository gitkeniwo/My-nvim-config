-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


require "user.launch"
require "user.options"
require "user.keymaps"
require "user.autocmds"
spec "user.colorscheme"
spec "user.devicons"
spec "user.treesitter"
spec "user.mason"
spec "user.schemastore"
spec "user.lspconfig"
spec "user.cmp"
spec "user.telescope"
spec "user.none-ls"
spec "user.illuminate"
spec "user.gitsigns"
spec "user.whichkey"
spec "user.nvimtree"
spec "user.comment"
spec "user.lualine"
spec "user.navic"
spec "user.breadcrumbs"
spec "user.harpoon"
spec "user.neotest"
spec "user.autopairs"
spec "user.neogit"
spec "user.alpha"
spec "user.project"
spec "user.indentline"
spec "user.toggleterm"
require "user.lazy"


-- always open the nvimtree at startup

local function open_nvim_tree()
    -- open the tree
    require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
-- 注意 lua的 function 要先声明后使用，也就是说要放在上一行的前面
-- 参照 https://github.com/nvim-tree/nvim-tree.lua/wiki/Open-At-Startup
    

-- auto close
vim.api.nvim_create_autocmd("BufEnter", {
nested = true,
callback = function()
    if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
    vim.cmd "quit"
    end
end
})