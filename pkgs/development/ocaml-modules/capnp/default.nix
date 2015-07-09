{stdenv, buildOcaml, camlp4, core, uint, ocplib-endian, res, omake, findlib,
 pa_ounit, pa_test,
 fetchFromGitHub}:
 
buildOcaml rec {
  name = "capnp";
  version = "2.0.1-kernel";
  src = fetchFromGitHub {
    owner  = "maurer";
    repo   = "capnp-ocaml";
    rev    = "core_kernel";
    sha256 = "0w6wcayvn6cn57cy8hy4bdm9dhpi2nrvpgqcm8zy6lhq7yj8fsd0";
  };

  createFindlibDestdir = true;

  buildInputs = [ camlp4 core uint ocplib-endian res omake pa_ounit pa_test ];

  envVars = "OCAML_TOPLEVEL_PATH=${findlib}/lib/ocaml/$ocaml_version/site-lib PREFIX=$out";

  buildPhase = "${envVars} omake";

  installPhase = "${envVars} omake install";

  meta = with stdenv.lib; {
    description = "OCaml Code Generator for Cap'n Proto";
    homepage = https://github.com/pelzlpj/capnp-ocaml;
    license = licenses.bsd2;
  };
}
