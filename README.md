# Selene configuration for CC: Tweaked

This is a standard library for use with [Selene](https://kampfkarren.github.io/selene/selene.html) on [CC: Tweaked](https://computercraft.cc).

Selene is an extensible Lua linter written in Rust.

## Usage

Copy `cc-tweaked.yaml` and `selene.toml` to the root of your project.
Optionally, copy the provided `Justfile` to allow easily running Selene.

## Design decisions

Any globals defined in `cc-tweaked.yaml` are set as read-only to prevent accidents.
You probably don't want this if you're writing an operating system that replaces these globals.
