vim.g.vim_markdown_fenced_languages = { "js=javascript" }

-- stylua: ignore start
local options = {
  title              =    true,                          -- Sets terminal window title
  titlestring        =    "%{split(getcwd(), '/')[-1]}", -- Show current directory in title
  termguicolors      =    true,
  splitbelow         =    true,              -- Horizontal splits below
  splitright         =    true,              -- Vertical splits to the right

  undofile           =    true,

  wrap               =    true,
  textwidth          =    120,
  linebreak          =    true,              -- Don't wrap in the middle of a word

  tabstop            =    2,                 -- Insert 2 spaces for a tab
  shiftwidth         =    2,                 -- Change the number of space characters inserted for indentation
  expandtab          =    true,              -- Converts tabs to spaces
  smartindent        =    true,              -- Makes indenting smart

  number             =    true,
  scrolloff          =    4,
  virtualedit        =    "block",           -- Visual block over non existing columns

  ignorecase         =    true,
  smartcase          =    true,

  winbar             =    "%m %t",
  signcolumn         =    "yes:1",

  colorcolumn        =    "+1",              -- Based off of textwidth value
  cursorline         =    true,              -- Enable highlighting of the current line
  cmdheight          =    1,

  list               =    true,              -- Show listchars
  listchars          =    "tab:> ,trail:•",

  pumheight          =    20,                -- Number of items in completion menu
  completeopt        =    { "menu", "preview", "noselect", "noinsert" },

  conceallevel       =    3,
  timeoutlen         =    700,

  inccommand         =    "split",           -- Show split preview window
  keywordprg         =    ":help",           -- open help when pressing K
  -- updatetime      =    300,               -- Faster completion
}
-- stylua: ignore end


for opt, value in pairs(options) do
  vim.opt[opt] = value
end
