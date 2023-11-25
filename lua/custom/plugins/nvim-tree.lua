return {
     -- Tree-view
  'nvim-tree/nvim-tree.lua',
   config = function ()
		require("nvim-tree").setup({
			renderer = {
				group_empty = true
			}
		})
   end
}
