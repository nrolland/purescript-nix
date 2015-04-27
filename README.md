
~/h/purescript-nix git:weird ❯❯❯ ./checkMtlVersionWith.sh 710cabal.nix

/nix/store/ay2067qp9kz3b2fjxvg290z772i4w63x-haskell-mtl-2.2.1.drv

~/h/purescript-nix git:weird ❯❯❯ ./checkMtlVersionWith.sh 710direct.nix                                             
/nix/store/ay2067qp9kz3b2fjxvg290z772i4w63x-haskell-mtl-2.2.1.drv

~/h/purescript-nix git:weird ❯❯❯ ./checkMtlVersionWith.sh 784cabal.nix                                              
/nix/store/p0m9djdfvhlwck27a2klbk3vkzc4dk0j-haskell-mtl-2.1.3.1.drv

~/h/purescript-nix git:weird ❯❯❯ ./checkMtlVersionWith.sh 784direct.nix                                             
/nix/store/faadb0sc9z8lr4ykbfxvpcmypg92d4fk-haskell-mtl-2.2.1.drv



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

