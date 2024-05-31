
{ ... }:
let
  # <nixpkgs> is set to the value designated by the nixpkgs input of the
  # jobset configuration.
  pkgs = (import <nixpkgs> {});
in {
  simplest = pkgs.stdenv.mkDerivation rec {
    name = "test-environment";

    buildCommand = ''
       echo foo4 >$out
    '';
  };
}
