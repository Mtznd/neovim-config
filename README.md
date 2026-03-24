# Prerequisites

* nushell. Since I set the neovim shell to be 'nu.exe' you should have nushell installed
* tree-sitter.
    * `scoop install tree-sitter`
* C compiler
    * tree-sitter requires a C compiler to work. If you have MS Visual Studio then you don't have to do anything here since it should come with the Visual Studio C compiler `cl.exe`
    * I use the `cc` compiler from `mingw-64`
      * `scoop install mingw`
      * then you need to set the environment variable `CC` to point to the compiler
        * by default, scoop should have installed it to `C:\Users\<user>\scoop\apps\mingw\current\bin\cc.exe`
