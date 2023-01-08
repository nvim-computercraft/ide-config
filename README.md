# IDE configuration for CC: Tweaked

This includes a standard library for use with [Selene](https://kampfkarren.github.io/selene/selene.html) on [CC: Tweaked](https://computercraft.cc), as well as globals definitions for the Lua Language Server.

Selene is an extensible Lua linter written in Rust, and Lua Language Server is the backend to the Lua plugin in VSCode (as well as being the de-facto language server for Lua in other editors and IDEs, such as Neovim and Emacs).

## Usage

Copy `cc-tweaked.yaml` and `selene.toml` to the root of your project.
Optionally, copy the provided `Justfile` to allow easily running Selene.

## Design decisions

Any globals defined in `cc-tweaked.yaml` are set as read-only to prevent accidents.
You probably don't want this if you're writing an operating system that replaces these globals.
