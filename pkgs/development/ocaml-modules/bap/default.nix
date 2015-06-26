{stdenv, buildOcaml, fetchgit, fetchurl, camlp4, ocaml_oasis, bitstring, camlzip, cmdliner, cohttp, core_kernel, ezjsonm, faillib, fileutils, ocaml_lwt, ocamlgraph, ocurl, re, uri, zarith, piqi, piqi-ocaml, uuidm, llvm_34, ulex, easy-format, xmlm, utop, which, makeWrapper,
openssl, curl, libssh2}:
 
buildOcaml rec {
  name = "bap";
  version = "8d1a7c";
  src = fetchgit {
    url = "https://github.com/BinaryAnalysisPlatform/bap.git";    
    rev = "8d1a7ca938320802c784adfa54ff5d851d5251d3";
    sha256 = "04n50n22sbslijdcjlv0h1z5fwwxsj08bdw5n9lxrrfm6fakfpdv";
  };

  sigs = fetchurl {
     url = "https://github.com/BinaryAnalysisPlatform/bap/releases/download/v0.9.8/sigs.zip";
     sha256 = "0mpsq2pinbrynlisnh8j3nrlamlsls7lza0bkqnm9szqjjdmcgfn";
  };

  createFindlibDestdir = true;

  buildInputs = [ camlp4 ocaml_oasis bitstring camlzip cmdliner cohttp
                  core_kernel ezjsonm faillib fileutils ocaml_lwt
                  ocamlgraph ocurl re uri zarith piqi piqi-ocaml uuidm
                  llvm_34
                  #transdeps (trick to deal with ocaml issue on OSX)
                  #WARNING: These must be the same as what the libs
                  #were built with. This is not the right way.
                  openssl libssh2 curl
                  #rdeps
                  utop
                  #build tricks
                  which
                  makeWrapper
                  ];

  installPhase = ''
  cat <<EOF > baptop
  #!/bin/bash
  export OCAMLPATH=`echo $OCAMLPATH`:`echo $OCAMLFIND_DESTDIR`
  exec `which utop` -require bap.top "\$@"
  EOF
  make install
  wrapProgram $out/bin/bapbuild --set OCAMLPATH `echo $OCAMLPATH`:`echo $OCAMLFIND_DESTDIR` --set PATH `echo $PATH`
  ln -s $sigs $out/share/bap/sigs.zip
  '';

  preConfigurePhase = ''
    export NIX_LDFLAGS="$NIX_LDFLAGS -L${libssh2}/lib -L${curl}/lib -L${openssl}/lib"
  '';
  configureFlags = "--with-cxxlibs=-lc++ --with-llvm-config ${llvm_34}/bin/llvm-config";

  meta = with stdenv.lib; {
    description = "Platform for binary analysis. It is written in OCaml, but can be used from other languages.";
    homepage = https://github.com/BinaryAnalysisPlatform/bap/;
    license = licenses.mit;
  };
}
