with (import <nixpkgs> {}).pkgs;
let pkg = haskell-ng.packages.ghc784.purescript;
in
  pkg.env
