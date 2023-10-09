return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
    use 'sainnhe/everforest'
    use 'neovim/nvim-lspconfig'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/nvim-cmp'
    use 'ray-x/lsp_signature.nvim'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons',
		}
	}
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}}
    }
    use({
        'willothy/nvim-cokeline',
        commit = '8b877a972337623f3f28f85a71611b2a08911b3a',
        requires = {
          "nvim-lua/plenary.nvim",        -- Required for v0.4.0+
          "kyazdani42/nvim-web-devicons", -- If you want devicons
        },
        config = function()
          require("cokeline").setup()
        end
      })
    use 'kalvinpearce/ShaderHighlight'
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
end)
