# Neovim Builder

Build a .deb file for neovim in a docker container.

## Motivation

The version of neovim on debian is too old for the plugins that I often use, so I need to build it on my system. The problem is that means I need to install dependencies. I like to keep my installed package list very small and don't want build systems that I don't use cluttering up my system, especially to avoid the need for different versions of the same build system. This is why I am using docker to build the .deb file and installing it with dpkg.

## Usage

I tried to make the system as frictionless as possible. To build the image and neovim, invoke the compile script:

```bash
./compile
```

And to install it, run:

```bash
./install
```

Since this project is made for the sole purpose of building on my own machine, I am going to say that (for now) if you want to use this project to have a custom build of neovim, you will have to modify the `compile` and/or `build/entrypoint` files.


