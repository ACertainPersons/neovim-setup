-- This is actually my custom config

-- This part was taken from the documentation, Just allows me to change the config much easier
--[[require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        telescope = {
            enabled = true,
        },
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})]]--

require("autoclose").setup({
    keys = {
      ["("] = { escape = false, close = true, pair = "()" },
      ["["] = { escape = false, close = true, pair = "[]" },
      ["{"] = { escape = false, close = true, pair = "{}" },

      [">"] = { escape = true, close = false, pair = "<>" },
      [")"] = { escape = true, close = false, pair = "()" },
      ["]"] = { escape = true, close = false, pair = "[]" },
      ["}"] = { escape = true, close = false, pair = "{}" },

      ['"'] = { escape = true, close = true, pair = '""' },
      ["'"] = { escape = true, close = true, pair = "''" },
      ["`"] = { escape = true, close = true, pair = "``" },
   },
   options = {
      disabled_filetypes = { "text" },
      disable_when_touch = true,
      touch_regex = "[%w(%[{]",
      pair_spaces = false,
      auto_indent = true,
      disable_command_mode = false,
   },
})

-- empty setup using defaults
require("nvim-tree").setup(
    {
        view = {
            side = 'left',
            width = 40,
        }
    }
)

-- Mostly from the documentation, but slightly modified
require('lualine').setup {
    options = {
        theme = "everforest",
        component_separators = { left = '', right = ''},
        always_divide_middle = true,
        globalstatus = true,
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filetype', {'filename', path = 3, shorting_target = 100}}, -- path = 3: Absolute path with tilde
        lualine_x = {'encoding', 'filetype'},
        lualine_y = {'location'},
        lualine_z = {{'datetime', style = "%Y/%m/%d %H:%M:%S"}}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
}

require('dashboard').setup {
    theme = 'hyper',
    config = {
      header = {
		"",
		"",
		"  ⠀⢀⣴⣦⠀⠀⠀⠀⢰⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ",
		"  ⣰⣿⣿⣿⣷⡀⠀⠀⢸⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ",
		"  ⣿⣿⣿⣿⣿⣿⣄⠀⢸⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ",
		"  ⣿⣿⣿⠈⢿⣿⣿⣦⢸⣿⣿⡇⠀⣠⠴⠒⠢⣄⠀⠀⣠⠴⠲⠦⣄⠐⣶⣆⠀⠀⢀⣶⡖⢰⣶⠀⢰⣶⣴⡶⣶⣆⣴⡶⣶⣶⡄  ",
		"  ⣿⣿⣿⠀⠀⠻⣿⣿⣿⣿⣿⡇⢸⣁⣀⣀⣀⣘⡆⣼⠁⠀⠀⠀⠘⡇⠹⣿⡄⠀⣼⡿⠀⢸⣿⠀⢸⣿⠁⠀⢸⣿⡏⠀⠀⣿⣿  ",
		"  ⠹⣿⣿⠀⠀⠀⠙⣿⣿⣿⡿⠃⢸⡀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⢀⡏⠀⢻⣿⣸⣿⠁⠀⢸⣿⠀⢸⣿⠀⠀⢸⣿⡇⠀⠀⣿⣿  ",
		"  ⠀⠈⠻⠀⠀⠀⠀⠈⠿⠋⠀⠀⠈⠳⢤⣀⣠⠴⠀⠈⠧⣄⣀⡠⠞⠁⠀⠀⠿⠿⠃⠀⠀⢸⣿⠀⢸⣿⠀⠀⠸⣿⡇⠀⠀⣿⡿  ",
		"",
		"",
      },
      shortcut = {
        { desc = '󰊳 Update ', group = '@property', action = 'Lazy update', key = 'u' },
        {
          desc = ' LSP Setup ',
          action = 'Mason',
          key = 'm',
        },
        {
          desc = ' Terminal ',
          action = 'terminal',
          group = 'term',
          key = 't',
        },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Find ',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          desc = ' Files ',
          group = 'Number',
          action = 'NvimTreeOpen',
          key = 'o',
        },
      },
      project = {
            enable = false,
      },
      mru = {
            limit = 5,
            label = 'Last Opened Files',
            cwd_only = true,
      },
      footer = {
        "",
        "Help poor children in Uganda!",
        "",
        "Everforest branch - Switch the branch if you want to use catppuccin",
        "",
        "Not to worry, we are still flying half a ship. – Obi-wan Kenobi",
        "",
      },
    },
}

-- setup must be called before loading
-- vim.cmd.colorscheme "catppuccin"
vim.cmd.colorscheme "everforest"

-- To disable indent lines for dashboard
require("ibl").setup {
    exclude = {
        filetypes = {
            'dashboard',
        }
    }
}

-- To launch nvimtree on launch
-- vim.cmd('NvimTreeOpen')

-- To map
vim.cmd.tnoremap "<Esc> <C-\\><C-n>" -- For easy escape from the terminal
vim.cmd.map "<C-X> <C-W>o:q!<CR>"
vim.cmd.map "<C-Q> <C-W>o:wq<CR>" -- The wq to quit the editor then the q! to quit the file explorer
vim.cmd.map "<C-T> <C-W>s:w<CR><C-W>j:terminal<CR><C-W>-<C-W>-<C-W>-<C-W>-<C-W>-<C-W>-<C-W>-<C-W>-<C-W>-<C-W>-<C-W>-<C-W>-<C-W>-<C-W>-<C-W>-<C-W>-<C-W>-" -- 17 times
vim.cmd.map "<C-F> :NvimTreeToggle<CR>" -- f for file
