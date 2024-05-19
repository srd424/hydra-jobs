{ ... }:
let
  # <nixpkgs> is set to the value designated by the nixpkgs input of the
  # jobset configuration.
  pkgs = (import <aux-core> {});
in {
  lix = pkgs.by-name.li.lix;
}
