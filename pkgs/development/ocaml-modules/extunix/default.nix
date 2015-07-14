{stdenv, buildOcaml, fetchurl, camlp4}:

buildOcaml rec {
  minimumSupportedOcamlVersion = "4.00";
  name = "extlib";
  version = "0.1.1";

  src = fetchurl {
    url = "https://github.com/ygrek/extunix/archive/v${version}.tar.gz";
    sha256 = "0qcff1v0z74lwq045viwvxvqikc6f391vz8qashf8a7dnncyh713";
  };

  buildInputs = [ camlp4 ];

  meta = with stdenv.lib; {
    homepage = https://forge.ocamlcore.org/projects/extunix/;
    description = "Collection of thin bindings to various low-level system API";
    license = licenses.lgpl21;
    maintainers = [ maintainers.maurer ];
  };
}
