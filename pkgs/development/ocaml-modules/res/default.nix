{stdenv, buildOcaml, fetchurl}: 
 
buildOcaml rec {
  name = "res";
  version = "4.0.7";
  src = fetchurl {
     url = "https://github.com/mmottl/res/releases/download/v${version}/res-${version}.tar.gz";
     sha256 = "0q7icfn8h4fp9b91hnxzag6admx64cqsw03mdcgnmsmywir7w8dy";
  };

  createFindlibDestdir = true;

  meta = with stdenv.lib; {
    description = "Automatically Resizing Contiguous Memory for OCaml";
    homepage = http://mmottl.github.io/res/;
    license = licenses.lgpl21;
    maintainers = [ maintainers.maurer ];
  };
}
