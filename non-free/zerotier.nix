{ ... }:
let
  # <nixpkgs> is set to the value designated by the nixpkgs input of the
  # jobset configuration.
  pkgs = (import <nixpkgs> {});
in {
  zerotierone = pkgs.zerotierone;
}
