# ⚡ Archived

I am too lazy to maintain separate projects, now I've moved these code back to my [neovim config extras](https://github.com/2nthony/dotfiles/tree/main/.config/nvim/lua/plugins/extras), copy the source code if you need.

---

# lazyvimp

**LazyVim P**resets, **PERSONAL** LazyVim extras, may change often, to avoid breaking, should always override the options or copy the source code to become your own one.

My purpose is make it more like vscode.

## Usage

```lua
-- lua/config/lazy.lua, should under LazyVim and above your plugins
require('lazy').setup({
  spec = {
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    { "2nthony/lazyvimp" },
    { import = "plugins" },
  }
})
```

## cmp-supertab

```lua
{ import = "lazyvimp.cmp-supertab" }
```

Unlike [lazyvim receipes supertab](https://www.lazyvim.org/configuration/recipes#supertab) or nvim-cmp wiki supertab.  
If in a snippet, `tab` jump to next, `s-tab` will jump back; if NOT in a snippet and cmp menu visible, `tab` will map to the `enter`; otherwise is just a `tab`.

## cmp-esc-unlink-snippet

```lua
{ import = "lazyvimp.cmp-esc-unlink-snippet" }
```

When in a snippet, `esc`(back to normal mode) will unlink/break the snippet actions, means no more jump next action.

## project

```lua
{ import = "lazyvimp.project" }
```

Unlike [lazyvim.extras.util.project](https://www.lazyvim.org/plugins/extras/util.project).  
I use my forked [project.nvim](https://github.com/2nthony/project.nvim) to make this like vscode, press the `enter` button will restore the sessions.

## Copy lines action

```lua
{ import = "lazyvimp.copy-lines-action" }
```

Simliar to [vscode Copy line up / down](https://code.visualstudio.com/docs/getstarted/tips-and-tricks#_copy-line-up-down).  
But map to `s-a-j` and `s-a-k`, support visual mode.

## Credits

- lazyvim
- [2nthony/project.nvim](https://github.com/2nthony/project.nvim)

## License

MIT
