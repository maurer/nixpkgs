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
    rev   = "55fbb661f14d2346412ebd461234a681abea0669";
    sha256 = "04r926ac80dkk6g0xrli4p9ahg61i6whra9hgx8x967ap3kp4nvk";
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
