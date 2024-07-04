{ ... }:
let
  # <nixpkgs> is set to the value designated by the nixpkgs input of the
  # jobset configuration.
  pkgs = (import <nixpkgs> { config.allowUnfree = true; });
in {
  zerotierone = pkgs.zerotierone;
}
