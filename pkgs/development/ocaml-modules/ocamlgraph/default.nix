{stdenv, fetchurl, ocaml, findlib, ocamlPackages }:

let
  ocaml_version = (builtins.parseDrvName ocaml.name).version;
  version = "1.8.7";
in

stdenv.mkDerivation {
  name = "ocamlgraph-${version}";

  src = fetchurl {
    url = "http://ocamlgraph.lri.fr/download/ocamlgraph-${version}.tar.gz";
    sha256 = "1845r537swjil2fcj7lgbibc2zybfwqqasrd2s7bncajs83cl1nz";
  };

  buildInputs = [ ocaml findlib ocamlPackages.lablgtk ];

  patches = ./destdir.patch;

  # some patching is required so that the lablgtk2 library is taken into account. It
  # does not reside in a subdirectory of the default library path, hence:
  # * configure looked in the wrong path
  # * ocaml needs that directory and the stubs directory as -I flag
  postPatch = ''
    sed -i 's@$(DESTDIR)$(OCAMLLIB)/ocamlgraph@$(DESTDIR)/lib/ocaml/${ocaml_version}/site-lib/ocamlgraph@' Makefile.in
    sed -i 's@$OCAMLLIB/lablgtk2@${ocamlPackages.lablgtk}/lib/ocaml/${ocaml_version}/site-lib/lablgtk2@' configure Makefile.in
    sed -i 's@+lablgtk2@${ocamlPackages.lablgtk}/lib/ocaml/${ocaml_version}/site-lib/lablgtk2 -I ${ocamlPackages.lablgtk}/lib/ocaml/${ocaml_version}/site-lib/stublibs@' configure Makefile.in editor/Makefile
    sed -i 's@OCAMLFINDDEST\ :=\ -destdir\ $(DESTDIR)@@' Makefile.in
  '';

  createFindlibDestdir = true;

  buildPhase = ''
    make all
    make install-findlib
  '';

  meta = {
    homepage = http://ocamlgraph.lri.fr/;
    description = "Graph library for Objective Caml";
    license = stdenv.lib.licenses.gpl2Oss;
    platforms = ocaml.meta.platforms or [];
    maintainers = [
      stdenv.lib.maintainers.kkallio
    ];
  };
}
