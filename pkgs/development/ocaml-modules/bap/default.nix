{stdenv, lib, fetchFromGitHub, fetchurl,
 # Build Tools
 ocaml, findlib, ocaml_oasis, ounit, which,
 # OCaml Deps
 bitstring, camlzip, cmdliner, ppx_jane, core_kernel, ezjsonm, faillib,
 fileutils, frontc, ocamlgraph, ocurl, ocaml_optcomp, re, uri, utop, zarith,
 uuidm, piqi-ocaml, piqi,
 # Other Deps
 llvm_38,
 # Nix Build Deps
 makeWrapper,
 # Nix Lib Deps
 writeText}:


stdenv.mkDerivation rec {
  name = "bap";
  version = "master";
  src = fetchFromGitHub {
    owner  = "BinaryAnalysisPlatform";
    repo   = "bap";
    rev    = "fa6819380006161361116030290d682ba480d653";
    sha256 = "12xv407kcmyl2z4md2vp2vp3vyk0yswnsv0xyh0rhvd8z1z3riss";
  };

  ocaml_version = (builtins.parseDrvName ocaml.name).version;

  sigs = fetchurl {
     url = "https://github.com/BinaryAnalysisPlatform/bap/releases/download/v0.9.9/sigs.zip";
     sha256 = "0mpsq2pinbrynlisnh8j3nrlamlsls7lza0bkqnm9szqjjdmcgfn";
  };

  createFindlibDestdir = true;

  buildInputs = [ ocaml findlib ocaml_oasis ounit which piqi
                  llvm_38
                  makeWrapper ];
  propagatedBuildInputs =
   [ bitstring camlzip cmdliner ppx_jane core_kernel ezjsonm faillib
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
  ln -s $sigs $out/share/bap/sigs.zip
  '';

  configureFlags = "${if stdenv.isDarwin then "--with-cxxlibs=-lc++ " else ""}--with-llvm-config ${llvm_38}/bin/llvm-config --enable-everything --enable-tests --disable-ida-plugin";

  meta = with stdenv.lib; {
    description = "Platform for binary analysis. It is written in OCaml, but can be used from other languages.";
    homepage = https://github.com/BinaryAnalysisPlatform/bap/;
    license = licenses.mit;
  };
}
