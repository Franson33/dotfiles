-- stylua: ignore
local langmap = { A = "Ф", B = "И", C = "С", D = "В", E = "У", F = "А", G = "П", H = "Р", I = "Ш", J = "О", K = "Л", L = "Д", M = "Ь", N = "Т", O = "Щ", P = "З", Q = "Й", R = "К", S = "Ы", T = "Е", U = "Г", V = "М", W = "Ц", X = "Ч", Y = "Н", Z = "Я", a = "ф", b = "и", c = "с", d = "в", e = "у", f = "а", g = "п", h = "р", i = "ш", j = "о", k = "л", l = "д", m = "ь", n = "т", o = "щ", p = "з", q = "й", r = "к", s = "ы", t = "е", u = "г", v = "м", w = "ц", x = "ч", y = "н", z = "я", }

--- Create keymapping
---@param mode string | table
---@param lhs string
---@param rhs string | function
---@param opts? table
function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)

  local char = langmap[string.match(lhs, "<C%-(%a)>")]
  if char then
    vim.keymap.set(mode, "<C-" .. char .. ">", rhs, options)
  end
end

-- better window movement
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- turn off search highlights until next search
-- and close quickfix and loclist windows
map("n", "<leader>q", ":noh<CR>:ccl<CR>:lcl<CR>")

map("n", "<leader>s", ":w<CR>")
