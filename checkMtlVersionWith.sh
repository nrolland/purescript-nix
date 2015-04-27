#!/bin/sh

# usage ./checkMtlVersionWith.sh 710cabal.nix
nix-store -q --references $(nix-store -q --references $(nix-instantiate $1) |grep ghc) | grep mtl
