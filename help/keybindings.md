# Keybinding cheatsheet

Keys for the TUIs used daily on these machines. Bindings marked **★** are custom (set in this repo or in [nvim-config](https://github.com/moonstar-x/nvim-config)); everything else is the tool's default.

- [tmux](#tmux)
- [superfile](#superfile)
- [lazygit](#lazygit)
- [Neovim](#neovim)
- [jellyfin-tui](#jellyfin-tui)

Notation: `C-x` is Ctrl+x, `M-x` is Alt+x (left Option in Ghostty), `S-x` is Shift+x.

---

## tmux

Config: [`config/tmux/tmux.conf`](../config/tmux/tmux.conf). The prefix is **`C-Space`** ★ (press it twice to send `C-Space` to the app).

### Ghostty shortcuts ★

Every Ghostty window opens straight into the `main` tmux session. These send the prefix plus a key ([`config/ghostty/config`](../config/ghostty/config)).

| Key           | Action                                 |
| ------------- | -------------------------------------- |
| `Cmd+T`       | New window (`prefix c`)                |
| `Cmd+D`       | Split side by side (`prefix \|`)       |
| `Cmd+Shift+D` | Split top/bottom (`prefix -`)          |
| `Cmd+W`       | Close pane (`prefix x`)                |
| `Cmd+Shift+T` | Toggle Ghostty's quick terminal        |

### Without the prefix

| Key                 | Action                                                          |
| ------------------- | --------------------------------------------------------------- |
| `C-h/j/k/l` ★       | Move between panes **and** Neovim splits (vim-tmux-navigator)   |
| `C-\` ★             | Previous pane / split                                           |
| `M-1` … `M-9` ★     | Jump to window 1–9                                              |

### Windows and panes

| Key                 | Action                                                        |
| ------------------- | ------------------------------------------------------------- |
| `prefix c` ★        | New window in the current directory                           |
| `prefix \|` ★       | Split side by side (also `%`)                                 |
| `prefix -` ★        | Split top/bottom (also `"`)                                   |
| `prefix x` ★        | Kill pane (no confirmation)                                   |
| `prefix &`          | Kill window                                                   |
| `prefix z`          | Zoom / unzoom pane                                            |
| `prefix H/J/K/L` ★  | Resize pane by 5 (repeatable without the prefix)              |
| `prefix < / >` ★    | Move window left / right in the bar (repeatable)              |
| `prefix n / p`      | Next / previous window                                        |
| `prefix l`          | Last window                                                   |
| `prefix ;`          | Last pane                                                     |
| `prefix q`          | Show pane numbers (press a number to jump)                    |
| `prefix { / }`      | Swap pane with previous / next                                |
| `prefix Space`      | Cycle pane layouts                                            |
| `prefix !`          | Break pane out into its own window                            |
| `prefix ,`          | Rename window                                                 |
| `prefix S` ★        | Toggle synchronize-panes (type into every pane; bar shows SYNC) |

### Sessions

| Key              | Action                                                             |
| ---------------- | ------------------------------------------------------------------ |
| `prefix s` ★     | Fuzzy-pick a session to switch to                                  |
| `prefix o` ★     | Fuzzy-pick a git repo; open or switch to a session named after it  |
| `prefix w`       | Tree of sessions and windows                                       |
| `prefix $`       | Rename session                                                     |
| `prefix d`       | Detach                                                             |
| `prefix ( / )`   | Previous / next session                                            |
| `prefix C-s` ★   | Save sessions (tmux-resurrect)                                     |
| `prefix C-r` ★   | Restore sessions (tmux-resurrect; continuum also autosaves/restores) |

### Popups ★

| Key          | Opens                                                        |
| ------------ | ------------------------------------------------------------ |
| `prefix g`   | lazygit in the current directory                             |
| `prefix D`   | lazydocker                                                   |
| `prefix b`   | btop                                                         |
| `prefix f`   | superfile in the current directory                           |
| `prefix t`   | Scratch terminal that keeps running (press again to hide)    |
| `prefix u`   | Fuzzy-pick a URL from the pane and open it in the browser    |

### Copy mode (vi keys)

| Key                   | Action                                         |
| --------------------- | ---------------------------------------------- |
| `prefix [`            | Enter copy mode (scrolling with the mouse also works) |
| `v` ★                 | Start selection                                |
| `C-v` ★               | Toggle rectangle selection                     |
| `y` ★                 | Copy (reaches the macOS clipboard) and exit    |
| `/` / `?`             | Search forward / backward                      |
| `n` / `N`             | Next / previous match                          |
| `q`                   | Exit copy mode                                 |

### Other

| Key              | Action                                                  |
| ---------------- | ------------------------------------------------------- |
| `prefix C-l` ★   | Clear the screen (`C-l` alone is pane navigation)       |
| `prefix r` ★     | Reload the config                                       |
| `prefix \` ★     | tmux-menus (also `prefix Enter`)                        |
| `prefix F` ★     | tmux-fzf (sessions, windows, panes, commands)           |
| `prefix ?`       | List every binding                                      |
| `prefix :`       | Command prompt                                          |

---

## superfile

Config: [`config/superfile/hotkeys.toml`](../config/superfile/hotkeys.toml). Open it with `spf` (or `prefix f` in tmux). Press `?` inside for the full list.

### Navigation

| Key                 | Action                                 |
| ------------------- | -------------------------------------- |
| `j` / `k`           | Down / up                              |
| `l` / `Enter`       | Open file or enter directory           |
| `h` / `Backspace`   | Parent directory                       |
| `PgDn` / `PgUp`     | Page down / up                         |
| `/`                 | Search the current panel               |
| `z`                 | Jump with zoxide                       |
| `P`                 | Pinned directories                     |
| `.`                 | Toggle hidden files                    |

### Panels and focus

| Key               | Action                                     |
| ----------------- | ------------------------------------------ |
| `n`               | New file panel                             |
| `N`               | Split file panel                           |
| `w`               | Close file panel                           |
| `Tab` / `L`       | Next file panel                            |
| `S-Left` / `H`    | Previous file panel                        |
| `f`               | Toggle preview panel                       |
| `s` / `m` / `p`   | Focus sidebar / metadata / process bar     |
| `o`               | Sort options                               |
| `R`               | Reverse sort                               |
| `F`               | Toggle footer                              |

### Files

| Key                  | Action                                                   |
| -------------------- | -------------------------------------------------------- |
| `C-n`                | Create file or directory (end the name with `/` for a directory) |
| `C-r`                | Rename                                                   |
| `C-c` / `C-x`        | Copy / cut                                               |
| `C-v` (or `C-w`)     | Paste                                                    |
| `C-d` / `Delete`     | Move to trash                                            |
| `D`                  | **Delete permanently**                                   |
| `C-a`                | Compress to zip                                          |
| `C-e`                | Extract archive                                          |
| `e` / `E`            | Open file / current directory in the editor              |
| `C-p`                | Copy the file's path                                     |
| `c`                  | Copy the current directory's path                        |

### Selection mode

| Key              | Action                                   |
| ---------------- | ---------------------------------------- |
| `v`              | Toggle between browse and select mode    |
| `J` / `K`        | Extend selection down / up               |
| `A`              | Select all                               |

### Other

| Key       | Action                                                        |
| --------- | ------------------------------------------------------------- |
| `q` / `Esc` | Quit                                                        |
| `Q`       | Quit and `cd` the shell into the current directory            |
| `:`       | Run a shell command here                                      |
| `>`       | spf prompt (superfile's own commands)                         |
| `?`       | Help                                                          |

---

## lazygit

Config: [`config/lazygit/config.yml`](../config/lazygit/config.yml). Open it with `lg` / `lzg` (the shell follows lazygit into another repo on quit) or `prefix g` in tmux. Press `?` in any panel for its keys.

### Global

| Key                     | Action                                           |
| ----------------------- | ------------------------------------------------ |
| `1`–`5`                 | Focus Status / Files / Branches / Commits / Stash |
| `h` / `l`, `Tab`        | Previous / next panel                            |
| `[` / `]`               | Previous / next tab inside a panel               |
| `p` / `P`               | Pull / push                                      |
| `f`                     | Fetch (Files panel)                              |
| `z` / `Z`               | Undo / redo                                      |
| `R`                     | Refresh                                          |
| `C-r`                   | Switch to a recent repo                          |
| `+` / `_`               | Bigger / smaller screen mode                     |
| `J` / `K`, `C-d` / `C-u` | Scroll the diff view                            |
| `{` / `}`               | Less / more diff context                         |
| `C-w`                   | Toggle whitespace in diffs                       |
| `/`                     | Search or filter the current view                |
| `:`                     | Run a shell command                              |
| `m`                     | Merge / rebase options (continue, abort, skip)   |
| `@`                     | Command log options                              |
| `?`                     | Keybindings for the current panel                |
| `q`                     | Quit                                             |

### Files

| Key        | Action                                              |
| ---------- | --------------------------------------------------- |
| `Space`    | Stage / unstage file                                |
| `a`        | Stage / unstage all                                 |
| `Enter`    | Open the diff to stage individual lines or hunks    |
| `c`        | Commit (a ticket ID from branches like `feat/ABC-123-…` is prefilled ★) |
| `C-k` ★    | Conventional commit (pick a type, then type the message) |
| `C`        | Commit using the git editor                         |
| `w`        | Commit without the pre-commit hook                  |
| `A`        | Amend the last commit                               |
| `d`        | Discard changes                                     |
| `D`        | Reset options (soft, hard, nuke)                    |
| `s` / `S`  | Stash / stash options                               |
| `e` / `o`  | Edit / open the file                                |
| `i`        | Add to `.gitignore`                                 |
| `` ` ``    | Toggle tree view                                    |
| `M`        | Merge conflict options                              |

> `C-k` probably doesn't reach lazygit when it runs in a normal tmux pane (`lg`), because tmux catches `C-k` for pane navigation. It should work from the `prefix g` popup.

### Staging lines (after `Enter` on a file)

| Key        | Action                                |
| ---------- | ------------------------------------- |
| `Space`    | Stage / unstage the line or selection |
| `v`        | Range select                          |
| `a`        | Select the whole hunk                 |
| `h` / `l`  | Previous / next hunk                  |
| `Tab`      | Switch between staged and unstaged    |
| `E`        | Edit the hunk                         |
| `d`        | Discard                               |
| `Esc`      | Back to the Files panel               |

### Branches

| Key        | Action                                    |
| ---------- | ----------------------------------------- |
| `Space`    | Check out                                 |
| `n`        | New branch                                |
| `c`        | Check out by name                         |
| `-`        | Check out the previous branch             |
| `R`        | Rename                                    |
| `d`        | Delete                                    |
| `M`        | Merge into the current branch             |
| `r`        | Rebase the current branch onto this one   |
| `f`        | Fast-forward                              |
| `u`        | Upstream options                          |
| `o` / `G`  | Create / open the pull request            |
| `Enter`    | View its commits                          |

### Commits

| Key              | Action                                       |
| ---------------- | -------------------------------------------- |
| `Enter`          | View the commit's files                      |
| `r` / `R`        | Reword / reword in the editor                |
| `s`              | Squash into the commit below                 |
| `f`              | Fixup into the commit below                  |
| `d`              | Drop                                         |
| `e`              | Edit (start an interactive rebase here)      |
| `i`              | Start an interactive rebase                  |
| `C-j` / `C-k`    | Move the commit down / up                    |
| `A`              | Amend with the staged changes                |
| `F` / `S`        | Create fixup commit / apply fixup commits    |
| `C` / `V`        | Copy (cherry-pick) / paste                   |
| `t`              | Revert                                       |
| `T`              | Tag                                          |
| `g`              | Reset options                                |
| `b`              | Bisect options                               |
| `n`              | New branch from this commit                  |
| `Space`          | Check out the commit                         |
| `o`              | Open in the browser                          |
| `y`              | Copy hash, message, URL, …                   |

### Stash

| Key       | Action           |
| --------- | ---------------- |
| `Space`   | Apply            |
| `g`       | Pop              |
| `d`       | Drop             |
| `n`       | New branch       |
| `r`       | Rename           |

---

## Neovim

Config: [moonstar-x/nvim-config](https://github.com/moonstar-x/nvim-config), cloned to `~/.config/nvim` by `scripts/setup-nvim.sh`. Everything below is custom ★ unless noted as built in. **Leader is `Space`**. Press `<leader>?` (or wait after `Space`) for which-key.

### General

| Key                     | Action                                        |
| ----------------------- | --------------------------------------------- |
| `C-s`                   | Save (any mode)                               |
| `Esc`                   | Clear search highlight                        |
| `M-j` / `M-k`           | Move the line or selection down / up          |
| `<` / `>` (visual)      | Indent, keeping the selection                 |
| `<leader>-` / `<leader>\|` | Split below / right                        |
| `C-h/j/k/l`             | Move between splits **and** tmux panes        |
| `C-Arrows`              | Resize the split                              |
| `<leader>U`             | Undo tree                                     |
| `C-/`                   | Floating terminal                             |
| `<leader>l`             | Lazy (plugin manager)                         |
| `<leader>?` / `<leader>sk` | Search keymaps                             |

### Finding things

| Key                | Action                       |
| ------------------ | ---------------------------- |
| `<leader><space>`  | Find files (smart)           |
| `<leader>ff`       | Files                        |
| `<leader>fg`       | Git files                    |
| `<leader>fr`       | Recent files                 |
| `<leader>fb`       | Buffers                      |
| `<leader>fc`       | Config files                 |
| `<leader>/`        | Grep the project             |
| `<leader>sw`       | Grep the word or selection   |
| `<leader>sb`       | Lines in the buffer          |
| `<leader>sr`       | Resume the last search       |
| `<leader>sh`       | Help pages                   |
| `<leader>sc`       | Command history              |
| `<leader>sn`       | Notification history         |
| `<leader>st`       | TODOs                        |
| `<leader>sR`       | Search & replace (grug-far)  |
| `<leader>e`        | File explorer                |
| `-`                | Oil: edit the parent directory as a buffer |

### Moving around

| Key                   | Action                                                |
| --------------------- | ----------------------------------------------------- |
| `s`                   | Flash jump (type the characters, then the label)      |
| `S`                   | Flash select a Treesitter node                        |
| `r` (operator pending) | Remote flash, e.g. `yr` to yank somewhere else       |
| `]f` / `[f`           | Next / previous function                              |
| `]k` / `[k`           | Next / previous class                                 |
| `]]` / `[[`           | Next / previous reference to the word                 |
| `]t` / `[t`           | Next / previous TODO                                  |
| `<leader>H`           | Add the file to Harpoon                               |
| `<leader>h`           | Harpoon menu                                          |
| `<leader>1`–`5`       | Jump to Harpoon file 1–5                              |

### Editing

| Key                     | Action                                               |
| ----------------------- | ---------------------------------------------------- |
| `gsa` / `gsd` / `gsr`   | Add / delete / replace surrounding (e.g. `gsaiw"`)   |
| `a…` / `i…` + `f` `c` `o` `t` `u` `a` `q` `b` | Text objects (mini.ai): function, class, block/loop/conditional, HTML tag, function call, argument, quote, bracket |
| `ih`                    | Inside git hunk (text object)                        |
| `<leader>cf`            | Format                                               |
| `<leader>u…`            | Toggles: `f` format on save, `w` wrap, `s` spelling, `h` inlay hints, `d` diagnostics, `b` inline blame, `r` Markdown rendering |

### LSP and diagnostics

| Key                 | Action                                                  |
| ------------------- | ------------------------------------------------------- |
| `gd` / `gD`         | Go to definition / declaration                          |
| `gy`                | Go to type definition                                   |
| `K`                 | Hover (built in)                                        |
| `grr`               | References (built in)                                   |
| `gri`               | Implementation (built in)                               |
| `gra`               | Code action (built in)                                  |
| `grn`               | Rename with live preview                                |
| `<leader>ss` / `sS` | Symbols in the file / workspace                         |
| `<leader>sd`        | Diagnostics picker                                      |
| `<leader>cd`        | Line diagnostics                                        |
| `]d` / `[d`         | Next / previous diagnostic (built in)                   |
| `]e` / `[e`         | Next / previous error                                   |
| `]w` / `[w`         | Next / previous warning                                 |
| `<leader>xx` / `xX` | Trouble: project / buffer diagnostics                   |
| `<leader>xs`        | Trouble: symbols outline                                |

### Git

| Key                       | Action                               |
| ------------------------- | ------------------------------------ |
| `<leader>gg`              | lazygit                              |
| `<leader>gs`              | Git status                           |
| `<leader>gl` / `gL`       | Log / log for this file              |
| `<leader>gb`              | Branches                             |
| `<leader>gB`              | Open on GitHub                       |
| `<leader>gd` / `gq`       | Diffview open / close                |
| `<leader>gf` / `gF`       | File / repo history                  |
| `]c` / `[c`               | Next / previous hunk                 |
| `]C` / `[C`               | Last / first hunk                    |
| `<leader>ghs` / `ghr`     | Stage / reset the hunk (or selection) |
| `<leader>ghS` / `ghR`     | Stage / reset the buffer             |
| `<leader>ghp`             | Preview the hunk                     |
| `<leader>ghb` / `ghB`     | Blame the line / buffer              |

### Tests, debugging, tasks

| Key                       | Action                                    |
| ------------------------- | ----------------------------------------- |
| `<leader>tr` / `tt` / `tT` | Run nearest / file / all tests           |
| `<leader>tl` / `td` / `tw` | Run last / debug nearest / watch file    |
| `<leader>ts` / `to`       | Summary panel / test output               |
| `]T` / `[T`               | Next / previous failed test               |
| `<leader>db` / `dB`       | Breakpoint / conditional breakpoint       |
| `<leader>dc` / `dC`       | Start or continue / run to cursor         |
| `<leader>do` / `di` / `dO` | Step over / into / out                   |
| `<leader>de`              | Evaluate                                  |
| `<leader>du` / `dt`       | Toggle the debug UI / terminate           |
| `<leader>oo` / `ow`       | Run a task / task list                    |
| `<leader>ol`              | Restart the last task                     |

### AI and sessions

| Key                       | Action                                    |
| ------------------------- | ----------------------------------------- |
| `<leader>acc` / `acf`     | Toggle / focus Claude Code                |
| `<leader>acs` (visual)    | Send the selection to Claude              |
| `<leader>acb`             | Add the current file to Claude            |
| `<leader>acy` / `acn`     | Accept / reject Claude's diff             |
| `C-.` / `<leader>aa`      | Toggle the AI CLI (sidekick)              |
| `<leader>ap`              | Pick a prompt                             |
| `<leader>qs` / `ql`       | Restore this directory's / the last session |
| `<leader>qS`              | Pick a session                            |

---

## jellyfin-tui

Config: [`config/jellyfin-tui/config.yaml`](../config/jellyfin-tui/config.yaml) (no key overrides; these are the defaults). Personal machines only. Press `?` inside for the bindings of your installed version.

### Navigation

| Key                     | Action                                            |
| ----------------------- | ------------------------------------------------- |
| `1`–`4`                 | Switch tab                                        |
| `j` / `k`               | Down / up                                         |
| `C-d` / `C-u`           | Jump down / up 20                                 |
| `g` / `G`               | First / last item                                 |
| `a` / `A`               | Jump to the next / previous album or letter       |
| `l` / `h`               | Next / previous pane                              |
| `Tab` / `S-Tab`         | Cycle the primary / secondary panes               |
| `/`                     | Search the current pane                           |
| `Enter`                 | Play / open                                       |
| `Esc`                   | Cancel (close popup, clear search)                |

### Playback

| Key               | Action                                       |
| ----------------- | -------------------------------------------- |
| `Space`           | Play / pause                                 |
| `n` / `N`         | Next / previous track                        |
| `←` / `→`         | Seek −5s / +5s                               |
| `,` / `.`         | Seek −60s / +60s                             |
| `+` / `-`         | Volume up / down                             |
| `x`               | Stop                                         |
| `s`               | Shuffle                                      |
| `S`               | Global shuffle (whole library)               |
| `r`               | Cycle repeat (off → all → one → radio)       |
| `R`               | Cycle radio mode                             |
| `T`               | Toggle transcoding                           |

### Queue

| Key                 | Action                                          |
| ------------------- | ----------------------------------------------- |
| `e` / `S-Enter`     | Add to the end of the temporary queue           |
| `C-e` / `C-Enter`   | Add to the front of the temporary queue         |
| `M-Enter`           | Play all (discography, album or playlist)       |
| `E`                 | Clear the temporary queue                       |
| `J` / `K`           | Move the item down / up                         |
| `Delete`            | Remove from the queue                           |

### Library and UI

| Key           | Action                                              |
| ------------- | --------------------------------------------------- |
| `f`           | Toggle favorite                                     |
| `d` / `D`     | Download / remove the download                      |
| `v`           | Select mode (`Space` toggles tracks, `Esc` exits)   |
| `o` / `O`     | Collapse the album / all albums                     |
| `p`           | Context popup (actions for the selected item)       |
| `P`           | Global popup (settings)                             |
| `z`           | Zen mode (fullscreen player)                        |
| `C-h/j/k/l`   | Resize panes (also `C-Arrows`)                      |
| `C-x`         | Reset state                                         |
| `?`           | Help                                                |
| `C-c`         | Quit                                                |
