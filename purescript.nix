{ mkDerivation, base, boxes, containers, directory, file-embed
, filepath, haskeline, mtl, nodejs, optparse-applicative, parsec
, pattern-arrows, process, stdenv, time, transformers
, unordered-containers, utf8-string
}:
mkDerivation {
  pname = "purescript";
  version = "0.6.9.5";
  sha256 = "196iq0jaryna4cgg7f07axccbnl5h82fvrjlry6839q05ndl83vf";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    base boxes containers directory file-embed filepath haskeline mtl
    optparse-applicative parsec pattern-arrows process time
    transformers unordered-containers utf8-string
  ];
  testDepends = [
    base containers directory filepath mtl parsec process transformers
  ];
  buildTools = [ nodejs ];
  homepage = "http://www.purescript.org/";
  description = "PureScript Programming Language Compiler";
  license = stdenv.lib.licenses.mit;
}
