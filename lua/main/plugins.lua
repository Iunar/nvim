-- Setup lazy.nvim
require("lazy").setup({
    spec = {
	-- import your plugins
	{ -- Theme
	    "catppuccin/nvim",
	    name = "catppuccin",
	    priority = 1000,
	    opts = {
		color_overrides = {
		    all = {
			base = "#000000"
		    },
		},
	    },
	    init = function()
		vim.cmd("colorscheme catppuccin-mocha")
	    end
	},
	{ -- Plenary
	    "nvim-lua/plenary.nvim",
	},
	{ -- Telescope
	    "nvim-telescope/telescope.nvim",
	    dependencies = {
		"nvim-lua/plenary.nvim"
	    },
	},
	{ -- Treesitter
	    "nvim-treesitter/nvim-treesitter",
	    branch = "master",
	    lazy = false,
	    build = ":TSUpdate",
	},
	{ -- Dev icons
	    "nvim-tree/nvim-web-devicons",
	},
	{ -- Lualine
	    "nvim-lualine/lualine.nvim",
	    dependencies = { "nvim-tree/nvim-web-devicons" },
	    lazy = false
	},
	{ -- Oil dependency
	    "echasnovski/mini.icons"
	},
	{ -- Oil
	    "stevearc/oil.nvim",
	    opts = {},
	    -- Optional dependencies
	    dependencies = { { "echasnovski/mini.icons", opts = {} } },
	    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	    lazy = false,
	},
	--{
	--},

    },
})
