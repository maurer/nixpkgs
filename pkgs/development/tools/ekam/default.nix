{ stdenv, fetchFromGitHub }:

# This package cannot easily be built separately from capnproto sources.
# It uses gtest.h and capnpc.ekam-rule which are not present in the release
# tarball, nor are they installed.

stdenv.mkDerivation rec {
  name = "ekam-${version}";
  # Ekam is unreleased
  version = "master";
  ekam-rev = "69255a4954aedad8ff9e576f402f2ebd33b58e6d";
  ekam = fetchFromGitHub {
    owner  = "sandstorm-io";
    repo   = "ekam";
    rev    = ekam-rev;
    sha256 = "16bjpa6p57xiw2f6nkd2pljl8lnfhl1rjm8czhkns0wxzxbzigd1";
  };
  capnproto = fetchFromGitHub {
    owner  = "sandstorm-io";
    repo   = "capnproto";
    rev    = "6bdd0aafe5a5b6c57c8e2d479edf97ce9960b0b9";
    sha256 = "15d8zwcmh4ww7hxafxjyhc7mdagcprnf1vk9n8f45gawjlq4091i";
  };
  srcs = [ ekam capnproto ];
  sourceRoot = "ekam-${ekam-rev}-src";
  preConfigure = ''
    mkdir -p deps
    ln -s `realpath ../capnproto*` deps/capnproto
  '';
  # Ekam uses "intercept.so", a trick for fake filesystems. NIX_ENFORCE_PURITY
  # prevents this, so we disable purity during building.
  buildPhase = "NIX_ENFORCE_PURITY=0 make";
  installPhase = ''
    install -D bin/ekam $out/bin/ekam
  '';
}
