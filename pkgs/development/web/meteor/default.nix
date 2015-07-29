{ stdenv, callPackage, nodePackages }:

let
  nodes = callPackage ./node-packages.nix { self = nodePackages // nodes; };
in
nodes.meteor
