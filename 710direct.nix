with (import <nixpkgs> {}).pkgs;
let pkg = haskell-ng.packages.ghc7101.purescript;
in
  pkg.env
