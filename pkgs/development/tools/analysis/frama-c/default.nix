{ stdenv, fetchurl, ncurses, ocamlPackages, graphviz
, ltl2ba, coq, alt-ergo, why3 }:

stdenv.mkDerivation rec {
  name    = "frama-c-${version}";
  version = "20160501";
  slang   = "Aluminium";

  src = fetchurl {
    url    = "http://frama-c.com/download/frama-c-${slang}-${version}.tar.gz";
    sha256 = "02z4d1lg2cs4hgbjx74crfrabv39dyhdrq5lvhv0q3hx5c8w7p90";
  };

  buildInputs = with ocamlPackages; [
    ncurses ocaml findlib alt-ergo ltl2ba ocamlgraph
    lablgtk coq graphviz zarith why3 zarith
  ];


  enableParallelBuilding = true;

  buildPhase = ''
    ./configure --prefix=$out
    make -j$NIX_BUILD_CORES
    make install
  '';


  # Enter frama-c directory before patching
  postPatch = ''
    # strip absolute paths to /usr/bin
    for file in ./configure ./share/Makefile.common ./src/*/configure; do
      substituteInPlace $file  --replace '/usr/bin/' ""
    done

    # find library paths
    OCAMLGRAPH_HOME=`ocamlfind query ocamlgraph`
    LABLGTK_HOME=`ocamlfind query lablgtk2`

    # patch search paths
    # ensure that the tests against the ocamlgraph version succeeds
    # filter out the additional search paths from ocamldep
    substituteInPlace ./configure \
      --replace '$OCAMLLIB/ocamlgraph' "$OCAMLGRAPH_HOME" \
      --replace '$OCAMLLIB/lablgtk2' "$LABLGTK_HOME" \
      --replace '+ocamlgraph' "$OCAMLGRAPH_HOME" \
    substituteInPlace ./Makefile --replace '+lablgtk2' "$LABLGTK_HOME" \
      --replace '$(patsubst +%,.,$(INCLUDES) $(GUI_INCLUDES))' \
                '$(patsubst /%,.,$(patsubst +%,.,$(INCLUDES) $(GUI_INCLUDES)))'
  '';

  meta = {
    description = "Frama-C is an extensible tool for source-code analysis of C software";
    homepage    = http://frama-c.com/;
    license     = stdenv.lib.licenses.lgpl21;
    maintainers = with stdenv.lib.maintainers; [ thoughtpolice amiddelk ];
    platforms   = stdenv.lib.platforms.linux;
  };
}
