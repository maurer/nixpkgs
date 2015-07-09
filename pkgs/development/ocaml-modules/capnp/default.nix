{stdenv, buildOcaml, camlp4, core_kernel, uint, ocplib-endian, res, omake, findlib,
 pa_ounit, pa_test,
 fetchFromGitHub}:
 
buildOcaml rec {
  name = "capnp";
  version = "2.0.1-kernel";
  src = fetchFromGitHub {
    owner  = "maurer";
    repo   = "capnp-ocaml";
    rev    = "core_kernel";
    sha256 = "18a1lf9jfka83i6cii6zz6nj6df0fd4pd5sy1qdyl47dkr6x0jnn";
  };

  createFindlibDestdir = true;

  buildInputs = [ camlp4 core_kernel uint ocplib-endian res omake pa_ounit pa_test ];

  envVars = "OCAML_TOPLEVEL_PATH=${findlib}/lib/ocaml/$ocaml_version/site-lib PREFIX=$out";

  buildPhase = "${envVars} omake";

  installPhase = "${envVars} omake install";

  meta = with stdenv.lib; {
    description = "OCaml Code Generator for Cap'n Proto";
    homepage = https://github.com/pelzlpj/capnp-ocaml;
    license = licenses.bsd2;
  };
}
