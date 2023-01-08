# IDE configuration for CC: Tweaked

This includes a standard library for use with [Selene](https://kampfkarren.github.io/selene/selene.html) on [CC: Tweaked](https://computercraft.cc), as well as globals definitions for the Lua Language Server.

Selene is an extensible Lua linter written in Rust, and Lua Language Server is the backend to the Lua plugin in VSCode (as well as being the de-facto language server for Lua in other editors and IDEs, such as Neovim and Emacs).

You might also be interested in [StyLua](https://github.com/JohnnyMorganz/StyLua), a Lua formatter written in Rust. Its configuration is not included here because formatting configurations are typically highly opinionated.

## Screenshots

<details><summary>Neovim</summary>
<img src="doc/assets/neovim-dracula-lualine.png" alt="Neovim with the Dracula theme and the Lualine plugin.">
Neovim with the Dracula theme and Lualine plugin.
</details>

*Do you have a screenshot of your editor with this configuration? Open an issue to get it added here!*

## Usage

### New project
Press the "Use this template" button in the top right of the GitHub page. You probably want to replace the README.md and LICENSE files with your own.

The `Justfile` file is not strictly necessary for this configuration to work; it is merely for convinience.

When cloning, make sure to pass the `--recurse-submodules` flag. (If you forgot to do that, run `git submodule sync`.)

### Existing project

Copy `.gitmodules`, `.luarc.json`, `cc-tweaked.yaml`, and `selene.toml` to the root of your project.

Update your submodules with `git submodule sync`.

Optionally, copy the provided `Justfile` to allow easily running Selene.

## Design decisions

Any globals defined in `cc-tweaked.yaml` are set as read-only to prevent accidents.
You probably don't want this if you're writing an operating system that replaces these globals.

## Credits
- [@carsakiller](https://github.com/carsakiller) for CC: Tweaked's Lua Language Server library.
- [@MasonGulu](https://github.com/MasonGulu) and [@Autist69420](https://github.com/Autist69420) for becoming early users of this configuration set.
- You, because you are awesome for reading that entire document.
