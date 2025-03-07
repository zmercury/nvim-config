# Neovim Configuration Documentation

Welcome to my Neovim configuration! This README provides a comprehensive guide to all the keymaps and functionalities available in this setup.

## Table of Contents
- [Core Controls](#core-controls)
- [Search and Navigation](#search-and-navigation)
- [LSP Features](#lsp-language-server-protocol)
- [Git Integration](#git-integration-gitsigns)
- [Harpoon](#harpoon-file-marking)
- [Debugging](#debugging)
- [Code Completion](#code-completion-and-snippets)
- [Terminal and Git](#terminal-and-git-commands)
- [Formatting and Comments](#formatting-and-comments)

## 🎯 Core Controls

### Leader Key
- **Space** (`<Space>`) is the primary leader key

### Basic Movement and Window Navigation
| Keybinding | Description |
|------------|-------------|
| `<C-h/j/k/l>` | Navigate between windows (left/down/up/right) |
| Arrow keys | Disabled in normal mode (use `h`, `j`, `k`, `l`) |
| `<C-j>` | Scroll down 10 lines |
| `<C-k>` | Scroll up 10 lines |

### File and Buffer Management
| Keybinding | Description |
|------------|-------------|
| `<leader>ww` | Open Telescope file browser |
| `<leader>e` | Open Netrw file explorer |
| `<leader><leader>` | Show buffer list |
| `\` | Toggle NeoTree file explorer |
| `<C-a>` | Select all text in buffer |

## 🔍 Search and Navigation

### Telescope Commands
| Keybinding | Description |
|------------|-------------|
| `<leader>sh` | Search help tags |
| `<leader>sk` | Search keymaps |
| `<leader>ff` | Find files |
| `<leader>fs` | Select Telescope search |
| `<leader>fg` | Search current word |
| `<leader>sg` | Live grep search |
| `<leader>sd` | Search diagnostics |
| `<leader>sr` | Resume last search |
| `<leader>s.` | Search recent files |
| `<leader>/` | Fuzzy find in current buffer |
| `<leader>s/` | Live grep in open files |
| `<leader>sn` | Search Neovim config files |

## 💻 LSP (Language Server Protocol)

### Code Navigation
| Keybinding | Description |
|------------|-------------|
| `gd` | Go to definition |
| `gr` | Go to references |
| `gI` | Go to implementation |
| `gD` | Go to declaration |
| `<leader>D` | Type definition |

### Code Actions and Symbols
| Keybinding | Description |
|------------|-------------|
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `<leader>ds` | Document symbols |
| `<leader>ws` | Workspace symbols |
| `<leader>th` | Toggle inlay hints |

## 📝 Git Integration (Gitsigns)

### Navigation
| Keybinding | Description |
|------------|-------------|
| `]c` | Next git change |
| `[c` | Previous git change |

### Actions
| Keybinding | Description |
|------------|-------------|
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hS` | Stage buffer |
| `<leader>hu` | Undo stage hunk |
| `<leader>hR` | Reset buffer |
| `<leader>hp` | Preview hunk |
| `<leader>hb` | Blame line |
| `<leader>hd` | Diff against index |
| `<leader>hD` | Diff against last commit |

### Toggles
| Keybinding | Description |
|------------|-------------|
| `<leader>tb` | Toggle git blame line |
| `<leader>tD` | Toggle show deleted |

## 🔖 Harpoon (File Marking)

| Keybinding | Description |
|------------|-------------|
| `<leader>h` | Toggle Harpoon quick menu |
| `<leader>1-9` | Jump to marked file 1-9 |
| `<leader>0` | Jump to marked file 10 |
| `<leader>a` | Add current file to Harpoon |
| `<C-p>` | Previous Harpoon file |
| `<C-n>` | Next Harpoon file |

## 🐛 Debugging

| Keybinding | Description |
|------------|-------------|
| `<F5>` | Start/Continue debugging |
| `<F1>` | Step into |
| `<F2>` | Step over |
| `<F3>` | Step out |
| `<leader>b` | Toggle breakpoint |
| `<leader>B` | Set conditional breakpoint |
| `<F7>` | Toggle debug UI |

## ✨ Code Completion and Snippets

### Completion (nvim-cmp)
| Keybinding | Description |
|------------|-------------|
| `<C-n>` | Select next item |
| `<C-p>` | Select previous item |
| `<C-b>` | Scroll docs backward |
| `<C-f>` | Scroll docs forward |
| `<C-y>` or `<CR>` | Confirm selection |
| `<Tab>` | Next item |
| `<S-Tab>` | Previous item |
| `<C-Space>` | Complete |
| `<C-l>` | Expand or jump forward in snippet |
| `<C-h>` | Jump backward in snippet |

## 🖥️ Terminal and Git Commands

| Keybinding | Description |
|------------|-------------|
| `<leader>wt` | Open new terminal session |
| `<leader>ga` | Git add command |
| `<leader>gc` | Git commit command |
| `<leader>gp` | Git push command |

## 🎨 Formatting and Comments

| Keybinding | Description |
|------------|-------------|
| `<leader>f` | Format buffer |
| `<leader>c` | Add comment at start of line (C# specific) |

## 📝 Notes

- Most commands are organized around the leader key (Space)
- The configuration follows common Vim conventions while adding modern IDE-like functionality
- All keymaps are customizable through the Neovim configuration files
- Many commands have additional options that can be explored through the help system (`:help`)
