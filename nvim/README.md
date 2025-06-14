# Hi Anton 🤦‍♂️

If you're reading this, you obviously forgot how to use your own Neovim setup again. Here are the commands you previously set up:

## ⌨️ Your Keymaps (Leader = `\`)

### Basic Movement & Actions
| Key | What It Does |
|-----|--------------|
| `\s` | Save file (because you're lazy) |
| `\q` | Clear search highlights + close quickfix/loclist |
| `<C-h/j/k/l>` | Move between windows (left/down/up/right) |

### File Explorer (Neo-tree)
| Key | What It Does |
|-----|--------------|
| `\ee` | Show Neo-tree file explorer |
| `\ef` | Focus on Neo-tree |
| `\ec` | Close Neo-tree |

### Finding Stuff (Telescope)
| Key | What It Does |
|-----|--------------|
| `\ff` | Find files (fuzzy search) |
| `\fg` | Live grep - search inside files |
| `\fb` | Browse open buffers |
| `\fh` | Search help documentation |

### Code Formatting
| Key | What It Does |
|-----|--------------|
| `\f` | Format current buffer (works for JS/TS/Lua/HTML/CSS/etc.) |

### LSP (Language Server) - The Smart Stuff
| Key | What It Does |
|-----|--------------|
| `<space>e` | Show error/diagnostic popup |
| `[d` | Go to previous error |
| `]d` | Go to next error |
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `K` | Show hover info (like documentation) |
| `gi` | Go to implementation |
| `<C-k>` | Show function signature |
| `<space>rn` | Rename symbol |
| `<space>ca` | Code actions (fix stuff) |
| `gr` | Find references |

### Autocompletion (nvim-cmp)
| Key | What It Does |
|-----|--------------|
| `<C-n>` | Next completion |
| `<C-p>` | Previous completion |
| `<C-Space>` | Trigger completion manually |
| `<Enter>` | Accept completion |
| `<Tab>` | Next item OR expand snippet |
| `<S-Tab>` | Previous item OR go back in snippet |
| `<C-f/b>` | Scroll documentation up/down |

## 📁 Neo-tree File Operations

### Creating New Files in Neovim Config
1. Open Neo-tree: `\ee`
2. Navigate to your nvim config folder (`~/.config/nvim/`)
3. **Right-click** on the folder where you want to create file
4. Select **"Add"** from context menu
5. Choose **"file"** or **"directory"**
6. Type the filename (e.g., `new-plugin.lua`)
7. Press `<Enter>`

### Alternative Neo-tree File Operations
- `a` - Add file/directory (while cursor on folder)
- `d` - Delete file/directory
- `r` - Rename file/directory
- `c` - Copy file/directory
- `x` - Cut file/directory
- `p` - Paste file/directory
- `<Enter>` - Open file
- `o` - Open file (same as Enter)

## 🎨 Your Current Setup

**Colorscheme:** `catppuccin-latte` (the light one, because you're weird)

**Plugin Manager:** Lazy.nvim (it auto-installs everything)

**Languages You Can Work With:**
- JavaScript/TypeScript (with React/TSX)
- Lua
- HTML/CSS
- Kotlin
- Bash/Shell
- Markdown

## 🔧 Quick Commands You'll Forget

| Command | Purpose |
|---------|---------|
| `:Lazy` | Open plugin manager |
| `:Mason` | Install/manage language servers |
| `:TSUpdate` | Update syntax highlighting |
| `:ConformInfo` | Check what formatters are available |
| `:checkhealth` | Check if everything is working |

## 🛠️ If Something Breaks

1. **Restart Neovim** - fixes 80% of problems
2. **Run `:checkhealth`** - shows what's broken
3. **Run `:Lazy sync`** - updates/fixes plugins
4. **Check this README again** - you probably forgot something obvious

## 📁 Your Config Structure

~/.config/nvim/
├── init.lua              # Main file that loads everything
├── options.lua           # All your Vim settings
├── mappings.lua          # Custom keymaps + Ukrainian keyboard support
├── bootstrap.lua         # Lazy.nvim bootstrap
├── lazy-lock.json        # Plugin versions (don't touch)
└── lua/plugins/          # All your plugins (each in separate file)
    ├── colorschemes.lua
    ├── conform.lua       # Formatting
    ├── lspconfig.lua     # Language servers
    ├── nvim-cmp.lua      # Autocompletion
    ├── telescope.lua     # Fuzzy finder
    ├── nvim-neo-tree.lua # File explorer
    └── ... (and more)
```

## 🔌 Your Installed Plugins

### Core Stuff
- **Lazy.nvim** - Plugin manager
- **LSP Config + Mason** - Language servers that make you look smart
- **nvim-cmp** - Autocomplete (with LuaSnip for snippets)
- **Conform** - Code formatting (prettier, stylua, etc.)

### File Management
- **Neo-tree** - File explorer (better than NERDTree)
- **Telescope** - Fuzzy finder for everything

### Code Enhancement
- **Treesitter** - Syntax highlighting that doesn't suck
- **Comment.nvim** - Easy commenting
- **nvim-autopairs** - Auto-close brackets
- **nvim-ts-autotag** - Auto-close HTML tags

### UI/Visual
- **Lualine** - Status line (minimal config)
- **Catppuccin** - Your current colorscheme
- **indent-blankline** - Shows indentation lines
- **nvim-web-devicons** - Pretty file icons

## 🏃‍♂️ Quick Start After Fresh Install

1. Clone your dotfiles to `~/.config/nvim/`
2. Open Neovim: `nvim`
3. Lazy will auto-install everything
4. Restart Neovim
5. Run `:checkhealth` to make sure everything works
6. **Stop reading and start coding, you procrastinating genius!** 🚀

---

*P.S. - Next time you forget this stuff, just read this file instead of asking ChatGPT again 😉*
