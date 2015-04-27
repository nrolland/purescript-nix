{ fynderConfig ? <fynder/config/fynder.conf.test> }:

with (import <nixpkgs> {}).pkgs;

let hspkgs = haskellngPackages.override {
      overrides = self: super: {
        purescript = self.callPackage ./purescript.nix {};
      };
    };
    nodePkgs = pkgs.nodePackages;
in rec {
   pursEnv = stdenv.mkDerivation rec {
       name = "purescript-env";
       version = "1.1.1.1";
       src = ./.;
       buildInputs = [ hspkgs.purescript nodePkgs.bower nodePkgs.grunt-cli  git ];
   };
}

