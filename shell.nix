with (import <nixpkgs> {});
with pkgs.haskell-ng.lib;

let hspkgs = haskell-ng.packages.ghc7101.override { overrides = self: super: {
           purescript =  doJailbreak(self.callPackage ./purescript.nix {});
           };    };
    nodePkgs = pkgs.nodePackages;
    env = hspkgs.ghcWithPackages (p: with p; [purescript ]);

in rec {
   pursEnv = stdenv.mkDerivation rec { name = "purescript-env";  version = "1.1.1.1"; src = ./.;
       buildInputs = [ env nodePkgs.bower nodePkgs.grunt-cli  git ]; };
}

