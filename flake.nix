{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
  };

  outputs = { self, nixpkgs }: rec {

    packages.x86_64-linux.default = (import ./simplest2.nix
            { pkgs = nixpkgs.legacyPackages.x86_64-linux; }).simplest;

    checks.x86_64-linux.packages-default = packages.x86_64-linux.default;
  };
}
