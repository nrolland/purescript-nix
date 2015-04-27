# nix-shell environment for purescript #

Run the following to drop into a `nix-shell` sandbox with purescript installed

    git clone https://github.com/boothead/purescript-nix.git
    ln -s path/to/nixpkgs/checkout
    nix-shell -I . --pure -A pursEnv

I think you can omit the `-I .` and link to a nixpkgs checkout,
however my work flow uses a local nixpkgs with ghc 7.8.3.

You can now install the starter project:

    git clone https://github.com/purescript/starter-kit.git
    cd starter-kit
    npm install
    bower update
    grunt

## Note for future self  :

I could not figure out why referring to purescript from haskellngPackages worked but not from the cabal2nix extract

    Setup: At least the following dependencies are missing:
    file-embed ==0.0.7.*, utf8-string ==1.*

Strong hint with 

    nix-store -q --references $(nix-store -q --references $(nix-store -q --references $(nix-instantiate shellwithscript.nix) G ghc) G purescript)

I retrieve ghc then purescript then get the references, and could pinpoint a missing jailbreak-cabal-1.3.drv in the extract

Adding a doJailbreak as [gridaphobe](https://github.com/gridaphobe/dotfiles/blob/master/nixpkgs/config.nix)  does made it.


also always use an environment made with ghcWithPackages, unless one targets a specific package
