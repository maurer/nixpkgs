{stdenv, lib, fetchFromGitHub, fetchurl,
 # Build Tools
 ocaml, findlib, ocaml_oasis, ounit, which,
 # OCaml Deps
 bitstring, camlzip, cmdliner, ppx_jane, core_kernel, ezjsonm, faillib,
 fileutils, frontc, ocamlgraph, ocurl, ocaml_optcomp, re, uri, utop, zarith,
 uuidm, piqi-ocaml, piqi,
 # Other Deps
 llvm_34,
 # Nix Build Deps
 makeWrapper,
 # Nix Lib Deps
 writeText}:


stdenv.mkDerivation rec {
  name = "bap";
  version = "master";
  src = fetchFromGitHub {
    owner  = "maurer";
    repo   = "bap";
    rev    = "0bb2580b08374b3d1c1ba8b0930684c7dc525d52";
    sha256 = "0rbndzf1jb45n22y4zrda8w6bf66ba9ah4jhma6i25ckp7j10ikp";
  };

  ocaml_version = (builtins.parseDrvName ocaml.name).version;

  sigs = fetchurl {
     url = "https://github.com/BinaryAnalysisPlatform/bap/releases/download/v1.0.0/sigs.zip";
     sha256 = "0mpsq2pinbrynlisnh8j3nrlamlsls7lza0bkqnm9szqjjdmcgfn";
  };

  createFindlibDestdir = true;

  patchPhase = ''
    sed -i configure -e s#-quiet##
    sed -i oasis/common -e s#-j\ 2#-j\ 0#
  '';

  buildInputs = [ ocaml findlib ocaml_oasis ounit which piqi
                  llvm_34
                  makeWrapper ];
  propagatedBuildInputs =
   [ camlzip cmdliner ppx_jane core_kernel ezjsonm faillib
     fileutils frontc ocamlgraph ocurl ocaml_optcomp re uri utop zarith
     uuidm piqi-ocaml ];

  setupHook = writeText "setupHook.sh" ''
    export CAML_LD_LIBRARY_PATH="''${CAML_LD_LIBRARY_PATH}''${CAML_LD_LIBRARY_PATH:+:}''$1/lib/ocaml/${ocaml_version}/site-lib/${name}/"
  '';

#TODO Exporting OCAMLPATH and PATH like this massively bloats the package, making it unsuitable for non-dev systems
  installPhase = ''
  export OCAMLPATH=`echo $OCAMLPATH`:`echo $OCAMLFIND_DESTDIR`
  export PATH=$PATH:$out/bin
  mkdir -p $out/lib/bap
  cat <<EOF > tools/baptop
  #!/bin/bash
  export OCAMLPATH=`echo $OCAMLPATH`
  exec ${utop}/bin/utop -ppx ppx-bap -short-paths -require "bap.top" "$@"
  EOF
  make install
  wrapProgram $out/bin/bapbuild --prefix PATH : ${ lib.makeBinPath [ ocaml findlib ] } --set OCAMLPATH $OCAMLPATH
  mkdir -p $out/share/bap/
  ln -s $sigs $out/share/bap/sigs.zip
  '';

  configureFlags = "${if stdenv.isDarwin then "--with-cxxlibs=-lc++ " else ""}--with-llvm-config ${llvm_34}/bin/llvm-config --enable-future --enable-regular --enable-frontend --enable-graphlib --enable-llvm --enable-bap-std --enable-byteweight --enable-byteweight-frontend --enable-arm --enable-c --enable-abi --enable-api";

  meta = with stdenv.lib; {
    description = "Platform for binary analysis. It is written in OCaml, but can be used from other languages.";
    homepage = https://github.com/BinaryAnalysisPlatform/bap/;
    license = licenses.mit;
  };
}
