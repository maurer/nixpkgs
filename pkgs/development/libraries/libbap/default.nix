{stdenv, ocaml, findlib, camlp4, ocaml_oasis, core_kernel, bap, ncurses,
 fetchFromGitHub,
# XXX These should not be required, and are here to deal with deps bugs
faillib, pa_ounit, pa_test, camlzip, ocamlgraph, bitstring, zarith, uuidm,
fileutils}:

stdenv.mkDerivation rec {
  name = "libbap";
  version = "0";
  src = fetchFromGitHub {
    owner = "maurer";
    repo  = "libbap";
    rev   = "8d3fbefa91654d7a77b22231f002e2bd05ecdd58";
    sha256 = "0syi0hl38wh2gffa3g450r0v336736sbap3j4ad3s88ixx4d50a4";
  };

  buildInputs = [ ocaml findlib camlp4 ocaml_oasis core_kernel bap ncurses
  # XXX These should not be required, and are here to deal with deps bugs
                  faillib pa_ounit pa_test camlzip ocamlgraph bitstring
                  zarith uuidm fileutils ];
  preConfigure = "oasis setup";
  doCheck = true;
  meta = with stdenv.lib; {
    description = "C Bindings for BAP";
    license = licenses.mit;
  };
}
