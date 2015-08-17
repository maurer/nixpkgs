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
    rev   = "ef002df9072f4b2c6767ecf6baa69466cd427a68";
    sha256 = "13hsh0dxn9dfbknb7az2233840c8r1nzv9c5xk0n12ybz9y90290";
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
