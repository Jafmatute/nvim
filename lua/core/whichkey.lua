require("which-key").setup({
	plugins = {
		marks = true,
		registers = true,
		spelling = {
			enabled = false,
			suggestions = 20,
		},
		presets = {
			operators = true,
			motions = true,
			text_objects = true,
			windows = true,
			nav = true,
			z = true,
			g = true,
		},
	},
	operators = {
		gc = "Comments",
	},
	key_labels = {
		["<space>"] = "SPC",
		["<cr>"] = "RET",
		["<tab>"] = "TAB",
	},
	icons = {
		breadcrumb = "ยป", -- symbol used in the command line area that shows your active key combo
		separator = "โ", -- symbol used between a key and it's label
		group = "+", -- symbol prepended to a group
	},
	window = {
		border = "single", -- none, single, double, shadow
		position = "bottom", -- bottom, top
		margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
		padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
	},
	layout = {
		height = {
			min = 4,
			max = 25,
		}, -- min and max height of the columns
		width = {
			min = 20,
			max = 50,
		}, -- min and max width of the columns
		spacing = 4, -- spacing between columns
		align = "left", -- align columns left, center or right
	},
	ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
	hidden = {
		"<silent>",
		"<cmd>",
		"<Cmd>",
		"<CR>",
		"call",
		"lua",
		"^:",
		"^ ",
		"<C>",
	}, -- hide mapping boilerplate
	show_hColorelp = true, -- show help message on the command line when the popup is visible
	triggers = "auto", -- automatically setup triggers
	triggers_blacklist = {
		i = { "j", "k" },
		v = { "j", "k" },
	},
})
local wk = require("which-key")
wk.register({
	q= {":q<cr>", "Quit"},
	Q= {":wq<cr>", "Save & Quit"},
	w= {":w<cr>", "Save"},
	x= {":bdelete<cr>", "Close"},
	f = {
		name = "Files ๏",
		f = { "<cmd>Telescope find_files<cr>", "Find Files ๐" }, -- create a binding with label
		g = { "<cmd>Telescope live_grep<cr>", "Find Words ๐" },
		h = { "<cmd>Telescope help_tags<cr>", "Find tags ๐" },
	},
	n = {
		name = "Clean Search ๏",
	},
	m = {
		name = "Mouse Enable/Disable ๏กผ",
	},
	e = {
		name = "Explorer ๏ญ",
	},
	c = {
		name = "Comment ๏ข",
		["$"] = { "<cmd><Plug>NERDCommenterToEOL<cr>", "NERDCommenterToEOL" },
		["<space>"] = {
			"<cmd><Plug>NERDCommenterToggle<cr>",
			"NERDCommenterToggle",
		},
		A = { "<cmd><Plug>NERDCommenterAppend<cr>", "NERDCommenterAppend" },
		a = { "<cmd><Plug>NERDCommenterAltDelims<cr>", "NERDCommenterAltDelims" },
		b = { "<cmd><Plug>NERDCommenterAlignBoth<cr>", "NERDCommenterAlignBoth" },
		c = { "<cmd><Plug>NERDCommenterComment<cr>", "NERDCommenterComment" },
		i = { "<cmd><Plug>NERDCommenterInvert<cr>", "NERDCommenterInvert" },
		l = { "<cmd><Plug>NERDCommenterAlignLeft<cr>", "NERDCommenterAlignLeft" },
		m = { "<cmd><Plug>NERDCommenterMinimal<cr>", "NERDCommenterMinimal" },
		n = { "<cmd><Plug>NERDCommenterNested<cr>", "NERDCommenterNested" },
		s = { "<cmd><Plug>NERDCommenterSexy<cr>", "NERDCommenterMinimal" },
		u = { "<cmd><Plug>NERDCommenterUncomment<cr>", "NERDCommenterUncomment" },
		y = { "<cmd><Plug>NERDCommenterYank<cr>", "NERDCommenterYank" },
	},
	t = {
		name = "Terminal ๏?",
		f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
		h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
		v = { "<cmd>ToggleTerm size=50 direction=vertical<cr>", "Vertical" },
	},
	h = {
		name = "Gitsigns ๏",
	},
	b = {
		name = "Buffers ๏ต",
		d = { "<cmd>Bdelete<cr>", "Delete Buffer" },
	},
	g = {
		name = "Git Options ๏",
		s = { "<cmd>G<cr>", "Git" },
		m = { "<cmd><Plug>(git-messenger)<cr>", "Show git message" },
		d = { "<cmd>diffget<cr> //2", "cambios de la derecha" },
		i = { "<cmd>diffget<cr> //3", "cambios de la derecha" },
	},
	p = {
		name = "Preview ๏",
		o = {
			"<cmd>lua require('goto-preview').goto_preview_definition()<cr>",
			"Go to Preview",
		},
		i = {
			"<cmd>lua require('goto-preview').goto_preview_implementation()<cr>",
			"Go to Implementation",
		},
		c = {
			"<cmd>lua require('goto-preview').close_all_win()<CR>",
			"Close Preview",
		},
	},
	l = {
		name = "LSP ๏",
		h = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Docs" },
		p = {
			"<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>",
			"Go To prev Diagnostic",
		},
		n = { "<cmd>lua vim.lsp.diagnostic.goto_next()<cr>", "Go To Next Diagnostic" },
	},
}, {
	prefix = "<leader>",
})
