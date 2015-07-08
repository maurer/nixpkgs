{stdenv, buildOcaml, fetchurl}: 
 
buildOcaml rec {
  name = "uint";
  version = "1.2.0";
  src = fetchurl {
     url = "https://github.com/andrenth/ocaml-uint/archive/${version}.tar.gz";
     sha256 = "1376ms42jj0i2g8l991h02d9w1sv6x2p0b3sn9s1r106niybprgw";
  };

  createFindlibDestdir = true;

  configureFlags = "--prefix $out";

  configurePhase = "ocaml setup.ml -configure ${configureFlags}";

  meta = with stdenv.lib; {
    description = "Unsigned Ints for OCaml";
    homepage = http://forge.ocamlcore.org/projects/ocaml-uint;
    license = licenses.mit;
    maintainers = [ maintainers.maurer ];
  };
}
