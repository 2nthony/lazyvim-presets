# LazyVim Presets

**Personal** LazyVim presets.

## Usage

```lua
-- lua/config/lazy.lua, should under LazyVim and above your plugins
require('lazy').setup({
  spec = {
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    { "2nthony/lazyvim-presets", lazy = true },
    { import = "plugins" },
  }
})
```

## supertab

```lua
{ import = "lazyvim-presets.supertab" }
```

Unlike [lazyvim receipes supertab](https://www.lazyvim.org/configuration/recipes#supertab) or nvim-cmp wiki supertab.  
This is vscode like supertab, if in a snippet, `tab` jump to next, `s-tab` will jump back; if NOT in a snippet and cmp menu visible, `tab` will map to the `enter`; otherwise is just a `tab`.

## project

```lua
{ import = "lazyvim-presets.project" }
```

Unlike [lazyvim.extras.util.project](https://www.lazyvim.org/plugins/extras/util.project).  
I use my forked [project.nvim](https://github.com/2nthony/project.nvim) to make this like vscode, press the `enter` button will restore the sessions.

## License

MIT
