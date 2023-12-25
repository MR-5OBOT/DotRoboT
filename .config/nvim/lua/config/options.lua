------------------------------------------------------------------
-- ███████╗███████╗████████╗████████╗██╗███╗   ██╗ ██████╗ ███████╗
-- ██╔════╝██╔════╝╚══██╔══╝╚══██╔══╝██║████╗  ██║██╔════╝ ██╔════╝
-- ███████╗█████╗     ██║      ██║   ██║██╔██╗ ██║██║  ███╗███████╗
-- ╚════██║██╔══╝     ██║      ██║   ██║██║╚██╗██║██║   ██║╚════██║
-- ███████║███████╗   ██║      ██║   ██║██║ ╚████║╚██████╔╝███████║
-- ╚══════╝╚══════╝   ╚═╝      ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝


-- local opt = vim.opt
-- local g = vim.g

local options = {
  -- disable nvim intro
  shortmess = "sI",
  number = true,                           -- Displays the absolute line number of the cursor line,
  autoindent = true,                       -- Copies the indentation from the current line when starting a new line
  -- background = "dark",                     --  Sets the background color for color schemes that support both light and dark variants
  backspace = "indent,eol,start",          -- Determines the behavior of the Backspace key
  -- autowrite = true,                        -- cmd = 'aw' automatically write file if changed
  iskeyword = "-",                         -- Specifies which characters are considered part of a keyword
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  cursorline = true,                       -- highlight the current line
  swapfile = false,                        -- creates a swapfile
  backup = false,                          -- creates a backup file
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  virtualedit = "block",                   -- make visual mode "block" make text selection more fancy
  inccommand = "split",
  -- autochdir	= true,                        -- auto change directory to the open file
  cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  conceallevel = 0,                        -- so that `` is visible in markdown files
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "",                              -- allow the mouse to be used in neovim
  confirm = true,                          -- Ask for confirmation when handling unsaved or read-only files
  showtabline = 2,                         -- always show tabs
  smartcase = true,                        -- smart case
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  undofile = true,                         -- enable persistent undo
  fileencoding = "utf-8",                  -- encoding files
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  relativenumber = true,                   -- set relative numbered lines
  numberwidth = 2,                         -- set number column width to 2 {default 4}
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  wrap = false,                            -- display lines as one long line
  linebreak = true,                        -- companion to wrap, don't split words
  scrolloff = 5,                           -- minimal number of screen lines to keep above and below the cursor
  sidescrolloff = 8,                       -- minimal number of screen columns either side of cursor if wrap is `false`
  hidden = true,
  showmode = false,
  pumheight = 10,
  smarttab = true,
  softtabstop = 2,
  smartindent = true,
  writebackup = false,
  completeopt = { "menu", "menuone", "noselect" }, -- for auto complition (cmp)
  timeoutlen = 100,
  updatetime = 300,
  wildignore = "*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*DS_STORE,*.db" -- inore some files
}

local builtins = {
	"2html_plugin",
	"getscript",
	"getscriptPlugin",
	"gzip",
	"logipat",
	"netrw",
	"netrwPlugin",
	"netrwSettings",
	"netrwFileHandlers",
	"tar",
	"tarPlugin",
	"rrhelper",
	"spellfile_plugin",
	"vimball",
	"vimballPlugin",
	"zip",
	"zipPlugin",
	"logipat",
	"matchit",
	"tutor",
	"rplugin",
	"syntax",
	"synmenu",
	"optwin",
	"compiler",
	"bugreport",
	"ftplugin",
	"archlinux",
	"tutor_mode_plugin",
	"sleuth",
	"vimgrep"
}

for _, plugin in ipairs(builtins) do
	vim.g["loaded_" .. plugin] = 1
end

for k, v in pairs(options) do
	vim.opt[k] = v
end

-- for k, v in pairs(globals) do
-- 	vim.g[k] = v
-- end