with import <nixpkgs> {};

let
  # Use the let-in clause to assign the derivation to a variable
  myScript = pkgs.writeShellScriptBin "helloWorld" "echo Hello World";
in
stdenv.mkDerivation rec {
  name = "test-environment";

  # Add the derivation to the PATH
  buildInputs = [ myScript ];
}
