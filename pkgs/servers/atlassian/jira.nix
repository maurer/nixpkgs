{ stdenv
, lib
, fetchurl
, gawk
, enableSSO ? false
, crowdProperties ? null
}:

stdenv.mkDerivation rec {
  pname = "atlassian-jira";
  version = "8.13.0";

  src = fetchurl {
    url = "https://product-downloads.atlassian.com/software/jira/downloads/atlassian-jira-software-${version}.tar.gz";
    sha256 = "06jq6x24kxwzkwjx05d4q6jyvjpbzqpjlj8arycw8z0w97k83hh9";
  };

  buildPhase = ''
    mv conf/server.xml conf/server.xml.dist
    ln -sf /run/atlassian-jira/server.xml conf/server.xml
    rm -r logs; ln -sf /run/atlassian-jira/logs/ .
    rm -r work; ln -sf /run/atlassian-jira/work/ .
    rm -r temp; ln -sf /run/atlassian-jira/temp/ .
    substituteInPlace bin/check-java.sh \
      --replace "awk" "${gawk}/bin/gawk"
  '' + lib.optionalString enableSSO ''
    substituteInPlace atlassian-jira/WEB-INF/classes/seraph-config.xml \
      --replace com.atlassian.jira.security.login.JiraSeraphAuthenticator \
                com.atlassian.jira.security.login.SSOSeraphAuthenticator
  '' + lib.optionalString (crowdProperties != null) ''
    cat <<EOF > atlassian-jira/WEB-INF/classes/crowd.properties
    ${crowdProperties}
    EOF
  '';

  installPhase = ''
    cp -rva . $out
  '';

  meta = with stdenv.lib; {
    description = "Proprietary issue tracking product, also providing project management functions";
    homepage = "https://www.atlassian.com/software/jira";
    license = licenses.unfree;
    maintainers = with maintainers; [ fpletz globin ciil ];
  };
}
