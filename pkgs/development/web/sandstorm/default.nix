{ stdenv, fetchurl, fetchFromGitHub, which, clang, nodejs,
  libcap, linuxHeaders, libuv, imagemagick, discount, meteor }:

# XXX WARNING XXX
# This package includes several others by source.
# * This should not be taken as a guideline of what to do in general packaging.
# * This package does not benefit from build caching.
# * This package needs versions updated separately in case of security issues.
# * Dependency build mechanisms cannot be easily overridden.

# In the long run, someone (possibly me (maurer)) should figure out how to
# convince sandstorm/ekam to build against provided libraries.

stdenv.mkDerivation rec {
  name = "sandstorm-${version}";
  version = "broken";
  capnproto = fetchFromGitHub {
    owner  = "sandstorm-io";
    repo   = "capnproto";
    rev    = "6bdd0aafe5a5b6c57c8e2d479edf97ce9960b0b9";
    sha256 = "15d8zwcmh4ww7hxafxjyhc7mdagcprnf1vk9n8f45gawjlq4091i";
  };
  ekam = fetchFromGitHub {
    owner  = "sandstorm-io";
    repo   = "ekam";
    rev    = "69255a4954aedad8ff9e576f402f2ebd33b58e6d";
    sha256 = "16bjpa6p57xiw2f6nkd2pljl8lnfhl1rjm8czhkns0wxzxbzigd1";
  };
  libseccomp = fetchFromGitHub {
    owner  = "seccomp";
    repo   = "libseccomp";
    rev    = "62c59aab8d72787c5055f704660a132a0b83386b";
    sha256 = "1nbms9zhapihfvb83pk4hfh68ws6jdb4b5rr1fhh8a9cd6ghvhdd";
  };
  libsodium = fetchFromGitHub {
    owner  = "jedisct1";
    repo   = "libsodium";
    rev    = "024b74c84995e68c804868b1189d75f571794ad7";
    sha256 = "0w891ac7x20afsyi496x19fdn68ybjk76jb1bvlxl04jaj014wvv";
  };
  node-capnp = fetchFromGitHub {
    owner  = "kentonv";
    repo   = "node-capnp";
    rev    = "c5207b697bd2581efd5b7073d2c3af8f71117abb";
    sha256 = "01idgys18hcrr6j3n18pdkkwj2gbdpj3hqrqr84av5m5lriq64jl";
  };
  es6-promise = fetchurl {
    url = "https://es6-promises.s3.amazonaws.com/es6-promise-2.0.1.min.js";
    sha256 = "173icn99hcfi9yigv6d35vrh0w7i3yyphd68avy19v8wdj8kwhjg";
  };
  sandstorm-rev = "07a098b6a9204e26849347890ccf1473fd441e6a";
  sandstorm-src = fetchFromGitHub {
    owner  = "sandstorm-io";
    repo   = "sandstorm";
    rev    = sandstorm-rev;
    sha256 = "08vk5q2rbcgxwjkmyfd3pr5d83vihd52v4ai8hxdfzh46aihb5xm";
  };
  srcs = [ capnproto ekam libseccomp libsodium node-capnp sandstorm-src ];
  buildInputs = [ nodejs libcap linuxHeaders clang which libuv imagemagick
                  discount meteor ];
  sourceRoot = "sandstorm-${sandstorm-rev}-src";
  postUnpack = ''
    # Load deps into deps folder.
    # Use cp instead of ln to avoid permission issues
    mkdir -p ${sourceRoot}/deps
    cp -r `realpath capnproto*`  ${sourceRoot}/deps/capnproto
    cp -r `realpath ekam*`       ${sourceRoot}/deps/ekam
    cp -r `realpath libseccomp*` ${sourceRoot}/deps/libseccomp
    cp -r `realpath libsodium*`  ${sourceRoot}/deps/libsodium
    cp -r `realpath node-capnp*` ${sourceRoot}/deps/node-capnp
    # Files are created in here, we need to make sources writeable
    chmod -R u+rw ${sourceRoot}/deps
    # Place es6-promise.js everywhere it will be needed,
    install -D ${es6-promise} ${sourceRoot}/src/node-capnp/es6-promise.js
    install -D ${es6-promise} ${sourceRoot}/tmp/node-capnp/es6-promise.js
    install -D ${es6-promise} ${sourceRoot}/node_modules/es6-promise.js
    # Then remove the curling rule
    rm ${sourceRoot}/src/node-capnp/download-es6-promise.ekam-rule
    mkdir -p tmp
    touch tmp/.deps
  '';
  postPatch = ''
    # We don't have traditional /usr/include
    sed -e 's#/usr/include/linux#${linuxHeaders}/include/linux#' \
      -i src/sandstorm/ip_tables.ekam-rule
    # Node includes reside inside a directory
    sed -e 's#include <node#include <node/node#' \
      -i src/node-capnp/capnp.cc
    # We don't have a /bin/true
    sed -e 's#/bin/true#${stdenv}/bin/true#' \
      -i src/sandstorm/util-test.c++
    # METEOR_DEV_BUNDLE is used to find node, so we point it at our nodejs
    sed -e 's#$(METEOR_DEV_BUNDLE)#${nodejs}#' \
      -i Makefile
    # This test fails due to an interaction between our node and ekam
    rm src/node-capnp/capnp-test.js
  '';
  # Ekam uses "intercept.so", a trick for fake filesystems. NIX_ENFORCE_PURITY
  # prevents this, so we disable purity during building.
  buildPhase = "NIX_ENFORCE_PURITY=0 make";
}
