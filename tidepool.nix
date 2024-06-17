{ ... }:
let
  # <nixpkgs> is set to the value designated by the nixpkgs input of the
  # jobset configuration.
  tidepool = (import <aux-labs/tidepool> {});
in tidepool.packages
