{ self, fetchurl, fetchgit ? null, lib }:

{
  by-spec."async"."~0.2.7" =
    self.by-version."async"."0.2.10";
  by-version."async"."0.2.10" = self.buildNodePackage {
    name = "async-0.2.10";
    version = "0.2.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async/-/async-0.2.10.tgz";
      name = "async-0.2.10.tgz";
      sha1 = "b6bbe0b0674b9d719708ca38de8c237cb526c3d1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bson"."0.1.5" =
    self.by-version."bson"."0.1.5";
  by-version."bson"."0.1.5" = self.buildNodePackage {
    name = "bson-0.1.5";
    version = "0.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bson/-/bson-0.1.5.tgz";
      name = "bson-0.1.5.tgz";
      sha1 = "8a7fe31f22f9b0aeab68313ce20e176c04da0b70";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."clean-css"."0.8.2" =
    self.by-version."clean-css"."0.8.2";
  by-version."clean-css"."0.8.2" = self.buildNodePackage {
    name = "clean-css-0.8.2";
    version = "0.8.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/clean-css/-/clean-css-0.8.2.tgz";
      name = "clean-css-0.8.2.tgz";
      sha1 = "ea294d43899ac4f2fe7e8c13864b52efa15da502";
    };
    deps = {
      "optimist-0.3.7" = self.by-version."optimist"."0.3.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."coffee-script"."1.4.0" =
    self.by-version."coffee-script"."1.4.0";
  by-version."coffee-script"."1.4.0" = self.buildNodePackage {
    name = "coffee-script-1.4.0";
    version = "1.4.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/coffee-script/-/coffee-script-1.4.0.tgz";
      name = "coffee-script-1.4.0.tgz";
      sha1 = "5e3bc8aac26c01a8e27bf107722c5655f5ad7d36";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."colors"."0.x.x" =
    self.by-version."colors"."0.6.2";
  by-version."colors"."0.6.2" = self.buildNodePackage {
    name = "colors-0.6.2";
    version = "0.6.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/colors/-/colors-0.6.2.tgz";
      name = "colors-0.6.2.tgz";
      sha1 = "2423fe6678ac0c5dae8852e5d0e5be08c997abcc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."combined-stream"."~0.0.4" =
    self.by-version."combined-stream"."0.0.7";
  by-version."combined-stream"."0.0.7" = self.buildNodePackage {
    name = "combined-stream-0.0.7";
    version = "0.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/combined-stream/-/combined-stream-0.0.7.tgz";
      name = "combined-stream-0.0.7.tgz";
      sha1 = "0137e657baa5a7541c57ac37ac5fc07d73b4dc1f";
    };
    deps = {
      "delayed-stream-0.0.5" = self.by-version."delayed-stream"."0.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."connect"."1.9.2" =
    self.by-version."connect"."1.9.2";
  by-version."connect"."1.9.2" = self.buildNodePackage {
    name = "connect-1.9.2";
    version = "1.9.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/connect/-/connect-1.9.2.tgz";
      name = "connect-1.9.2.tgz";
      sha1 = "42880a22e9438ae59a8add74e437f58ae8e52807";
    };
    deps = {
      "qs-4.0.0" = self.by-version."qs"."4.0.0";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "formidable-1.0.17" = self.by-version."formidable"."1.0.17";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cssom"."0.2.x" =
    self.by-version."cssom"."0.2.5";
  by-version."cssom"."0.2.5" = self.buildNodePackage {
    name = "cssom-0.2.5";
    version = "0.2.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cssom/-/cssom-0.2.5.tgz";
      name = "cssom-0.2.5.tgz";
      sha1 = "2682709b5902e7212df529116ff788cd5b254894";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."*" =
    self.by-version."debug"."2.2.0";
  by-version."debug"."2.2.0" = self.buildNodePackage {
    name = "debug-2.2.0";
    version = "2.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-2.2.0.tgz";
      name = "debug-2.2.0.tgz";
      sha1 = "f87057e995b1a1f6ae6a4960664137bc56f039da";
    };
    deps = {
      "ms-0.7.1" = self.by-version."ms"."0.7.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."delayed-stream"."0.0.5" =
    self.by-version."delayed-stream"."0.0.5";
  by-version."delayed-stream"."0.0.5" = self.buildNodePackage {
    name = "delayed-stream-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/delayed-stream/-/delayed-stream-0.0.5.tgz";
      name = "delayed-stream-0.0.5.tgz";
      sha1 = "d4b1f43a93e8296dfe02694f4680bc37a313c73f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."faye-websocket"."0.4.0" =
    self.by-version."faye-websocket"."0.4.0";
  by-version."faye-websocket"."0.4.0" = self.buildNodePackage {
    name = "faye-websocket-0.4.0";
    version = "0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/faye-websocket/-/faye-websocket-0.4.0.tgz";
      name = "faye-websocket-0.4.0.tgz";
      sha1 = "e9a8fc6b3e5a610f3308e8b9782876a01a745799";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fibers"."0.6.9" =
    self.by-version."fibers"."0.6.9";
  by-version."fibers"."0.6.9" = self.buildNodePackage {
    name = "fibers-0.6.9";
    version = "0.6.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fibers/-/fibers-0.6.9.tgz";
      name = "fibers-0.6.9.tgz";
      sha1 = "252d7e384113f8a8b934c2d9290598aa053350da";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."form-data"."~0.0.3" =
    self.by-version."form-data"."0.0.10";
  by-version."form-data"."0.0.10" = self.buildNodePackage {
    name = "form-data-0.0.10";
    version = "0.0.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/form-data/-/form-data-0.0.10.tgz";
      name = "form-data-0.0.10.tgz";
      sha1 = "db345a5378d86aeeb1ed5d553b869ac192d2f5ed";
    };
    deps = {
      "combined-stream-0.0.7" = self.by-version."combined-stream"."0.0.7";
      "mime-1.2.11" = self.by-version."mime"."1.2.11";
      "async-0.2.10" = self.by-version."async"."0.2.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."formidable"."1.0.x" =
    self.by-version."formidable"."1.0.17";
  by-version."formidable"."1.0.17" = self.buildNodePackage {
    name = "formidable-1.0.17";
    version = "1.0.17";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/formidable/-/formidable-1.0.17.tgz";
      name = "formidable-1.0.17.tgz";
      sha1 = "ef5491490f9433b705faa77249c99029ae348559";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."gzippo"."0.1.7" =
    self.by-version."gzippo"."0.1.7";
  by-version."gzippo"."0.1.7" = self.buildNodePackage {
    name = "gzippo-0.1.7";
    version = "0.1.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gzippo/-/gzippo-0.1.7.tgz";
      name = "gzippo-0.1.7.tgz";
      sha1 = "151e0f40e3b048d2e614dc514f5852d4c5e78199";
    };
    deps = {
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."handlebars"."1.0.7" =
    self.by-version."handlebars"."1.0.7";
  by-version."handlebars"."1.0.7" = self.buildNodePackage {
    name = "handlebars-1.0.7";
    version = "1.0.7";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/handlebars/-/handlebars-1.0.7.tgz";
      name = "handlebars-1.0.7.tgz";
      sha1 = "c0fc63d1d596339cd0bba5fe0b5cbb1b2e3a7f3f";
    };
    deps = {
      "optimist-0.3.7" = self.by-version."optimist"."0.3.7";
      "uglify-js-1.2.6" = self.by-version."uglify-js"."1.2.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."http-proxy"."0.8.5" =
    self.by-version."http-proxy"."0.8.5";
  by-version."http-proxy"."0.8.5" = self.buildNodePackage {
    name = "http-proxy-0.8.5";
    version = "0.8.5";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/http-proxy/-/http-proxy-0.8.5.tgz";
      name = "http-proxy-0.8.5.tgz";
      sha1 = "32eee6272cabdc1ef6bc5a732196262b6b687faf";
    };
    deps = {
      "colors-0.6.2" = self.by-version."colors"."0.6.2";
      "optimist-0.3.7" = self.by-version."optimist"."0.3.7";
      "pkginfo-0.2.3" = self.by-version."pkginfo"."0.2.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."keypress"."0.1.0" =
    self.by-version."keypress"."0.1.0";
  by-version."keypress"."0.1.0" = self.buildNodePackage {
    name = "keypress-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/keypress/-/keypress-0.1.0.tgz";
      name = "keypress-0.1.0.tgz";
      sha1 = "4a3188d4291b66b4f65edb99f806aa9ae293592a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."less"."1.3.1" =
    self.by-version."less"."1.3.1";
  by-version."less"."1.3.1" = self.buildNodePackage {
    name = "less-1.3.1";
    version = "1.3.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/less/-/less-1.3.1.tgz";
      name = "less-1.3.1.tgz";
      sha1 = "4cf72898b2081a96463f9c38dca5c89fc20a9ba8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mailcomposer"."0.1.15" =
    self.by-version."mailcomposer"."0.1.15";
  by-version."mailcomposer"."0.1.15" = self.buildNodePackage {
    name = "mailcomposer-0.1.15";
    version = "0.1.15";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mailcomposer/-/mailcomposer-0.1.15.tgz";
      name = "mailcomposer-0.1.15.tgz";
      sha1 = "85198b329ad1380f0c8d5bb5488c350eae8218a9";
    };
    deps = {
      "mimelib-noiconv-0.1.9" = self.by-version."mimelib-noiconv"."0.1.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."meteor"."*" =
    self.by-version."meteor"."0.5.2";
  by-version."meteor"."0.5.2" = self.buildNodePackage {
    name = "meteor-0.5.2";
    version = "0.5.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/meteor/-/meteor-0.5.2.tgz";
      name = "meteor-0.5.2.tgz";
      sha1 = "7c5b435aee9664283f0c04adaa06831cf21353c8";
    };
    deps = {
      "connect-1.9.2" = self.by-version."connect"."1.9.2";
      "gzippo-0.1.7" = self.by-version."gzippo"."0.1.7";
      "optimist-0.3.5" = self.by-version."optimist"."0.3.5";
      "coffee-script-1.4.0" = self.by-version."coffee-script"."1.4.0";
      "less-1.3.1" = self.by-version."less"."1.3.1";
      "stylus-0.30.1" = self.by-version."stylus"."0.30.1";
      "nib-0.8.2" = self.by-version."nib"."0.8.2";
      "mime-1.2.7" = self.by-version."mime"."1.2.7";
      "semver-1.1.0" = self.by-version."semver"."1.1.0";
      "handlebars-1.0.7" = self.by-version."handlebars"."1.0.7";
      "mongodb-1.1.11" = self.by-version."mongodb"."1.1.11";
      "uglify-js-1.3.4" = self.by-version."uglify-js"."1.3.4";
      "clean-css-0.8.2" = self.by-version."clean-css"."0.8.2";
      "useragent-1.1.0" = self.by-version."useragent"."1.1.0";
      "request-2.12.0" = self.by-version."request"."2.12.0";
      "simplesmtp-0.1.25" = self.by-version."simplesmtp"."0.1.25";
      "stream-buffers-0.2.3" = self.by-version."stream-buffers"."0.2.3";
      "keypress-0.1.0" = self.by-version."keypress"."0.1.0";
      "sockjs-0.3.4" = self.by-version."sockjs"."0.3.4";
      "http-proxy-0.8.5" = self.by-version."http-proxy"."0.8.5";
      "progress-0.0.5" = self.by-version."progress"."0.0.5";
      "mailcomposer-0.1.15" = self.by-version."mailcomposer"."0.1.15";
      "fibers-0.6.9" = self.by-version."fibers"."0.6.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
    postInstall = ''
      mv $out/bin/meteor $out/bin/.meteor.js
      # This is wrong, but I can't seem to figure out how to get the nodejs
      # used in the current build
      echo '#!/bin/bash' > $out/bin/meteor
      echo exec node $out/bin/.meteor.js >> $out/bin/meteor
      chmod u+x $out/bin/meteor
    '';
  };
  "meteor" = self.by-version."meteor"."0.5.2";
  by-spec."mime"."1.2.7" =
    self.by-version."mime"."1.2.7";
  by-version."mime"."1.2.7" = self.buildNodePackage {
    name = "mime-1.2.7";
    version = "1.2.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime/-/mime-1.2.7.tgz";
      name = "mime-1.2.7.tgz";
      sha1 = "c7a13f33a7073d9900f288436b06b3a16200865b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime".">= 0.0.1" =
    self.by-version."mime"."1.3.4";
  by-version."mime"."1.3.4" = self.buildNodePackage {
    name = "mime-1.3.4";
    version = "1.3.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime/-/mime-1.3.4.tgz";
      name = "mime-1.3.4.tgz";
      sha1 = "115f9e3b6b3daf2959983cb38f149a2d40eb5d53";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime".">= 1.2" =
    self.by-version."mime"."1.3.4";
  by-spec."mime"."~1.2.2" =
    self.by-version."mime"."1.2.11";
  by-version."mime"."1.2.11" = self.buildNodePackage {
    name = "mime-1.2.11";
    version = "1.2.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime/-/mime-1.2.11.tgz";
      name = "mime-1.2.11.tgz";
      sha1 = "58203eed86e3a5ef17aed2b7d9ebd47f0a60dd10";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime"."~1.2.7" =
    self.by-version."mime"."1.2.11";
  by-spec."mimelib-noiconv"."*" =
    self.by-version."mimelib-noiconv"."0.1.9";
  by-version."mimelib-noiconv"."0.1.9" = self.buildNodePackage {
    name = "mimelib-noiconv-0.1.9";
    version = "0.1.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mimelib-noiconv/-/mimelib-noiconv-0.1.9.tgz";
      name = "mimelib-noiconv-0.1.9.tgz";
      sha1 = "eadce6f9ce226842501a203e95bcee96af8189f2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mkdirp"."0.3.x" =
    self.by-version."mkdirp"."0.3.5";
  by-version."mkdirp"."0.3.5" = self.buildNodePackage {
    name = "mkdirp-0.3.5";
    version = "0.3.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mkdirp/-/mkdirp-0.3.5.tgz";
      name = "mkdirp-0.3.5.tgz";
      sha1 = "de3e5f8961c88c787ee1368df849ac4413eca8d7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mongodb"."1.1.11" =
    self.by-version."mongodb"."1.1.11";
  by-version."mongodb"."1.1.11" = self.buildNodePackage {
    name = "mongodb-1.1.11";
    version = "1.1.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mongodb/-/mongodb-1.1.11.tgz";
      name = "mongodb-1.1.11.tgz";
      sha1 = "145a41b1c83388bfeb1bf903340b94cf90f702b5";
    };
    deps = {
      "bson-0.1.5" = self.by-version."bson"."0.1.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ms"."0.7.1" =
    self.by-version."ms"."0.7.1";
  by-version."ms"."0.7.1" = self.buildNodePackage {
    name = "ms-0.7.1";
    version = "0.7.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ms/-/ms-0.7.1.tgz";
      name = "ms-0.7.1.tgz";
      sha1 = "9cd13c03adbff25b65effde7ce864ee952017098";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nib"."0.8.2" =
    self.by-version."nib"."0.8.2";
  by-version."nib"."0.8.2" = self.buildNodePackage {
    name = "nib-0.8.2";
    version = "0.8.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/nib/-/nib-0.8.2.tgz";
      name = "nib-0.8.2.tgz";
      sha1 = "f8395952c0eb8ad8eadc32cc393ad83344b7fb3e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-uuid"."1.3.3" =
    self.by-version."node-uuid"."1.3.3";
  by-version."node-uuid"."1.3.3" = self.buildNodePackage {
    name = "node-uuid-1.3.3";
    version = "1.3.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/node-uuid/-/node-uuid-1.3.3.tgz";
      name = "node-uuid-1.3.3.tgz";
      sha1 = "d3db4d7b56810d9e4032342766282af07391729b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."optimist"."0.3.5" =
    self.by-version."optimist"."0.3.5";
  by-version."optimist"."0.3.5" = self.buildNodePackage {
    name = "optimist-0.3.5";
    version = "0.3.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/optimist/-/optimist-0.3.5.tgz";
      name = "optimist-0.3.5.tgz";
      sha1 = "03654b52417030312d109f39b159825b60309304";
    };
    deps = {
      "wordwrap-0.0.3" = self.by-version."wordwrap"."0.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."optimist"."0.3.x" =
    self.by-version."optimist"."0.3.7";
  by-version."optimist"."0.3.7" = self.buildNodePackage {
    name = "optimist-0.3.7";
    version = "0.3.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/optimist/-/optimist-0.3.7.tgz";
      name = "optimist-0.3.7.tgz";
      sha1 = "c90941ad59e4273328923074d2cf2e7cbc6ec0d9";
    };
    deps = {
      "wordwrap-0.0.3" = self.by-version."wordwrap"."0.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."optimist"."~0.3" =
    self.by-version."optimist"."0.3.7";
  by-spec."pkginfo"."0.2.x" =
    self.by-version."pkginfo"."0.2.3";
  by-version."pkginfo"."0.2.3" = self.buildNodePackage {
    name = "pkginfo-0.2.3";
    version = "0.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pkginfo/-/pkginfo-0.2.3.tgz";
      name = "pkginfo-0.2.3.tgz";
      sha1 = "7239c42a5ef6c30b8f328439d9b9ff71042490f8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."progress"."0.0.5" =
    self.by-version."progress"."0.0.5";
  by-version."progress"."0.0.5" = self.buildNodePackage {
    name = "progress-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/progress/-/progress-0.0.5.tgz";
      name = "progress-0.0.5.tgz";
      sha1 = "397e5af42596d81ef1641d40728826908c60ca90";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."qs".">= 0.4.0" =
    self.by-version."qs"."4.0.0";
  by-version."qs"."4.0.0" = self.buildNodePackage {
    name = "qs-4.0.0";
    version = "4.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/qs/-/qs-4.0.0.tgz";
      name = "qs-4.0.0.tgz";
      sha1 = "c31d9b74ec27df75e543a86c78728ed8d4623607";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rai"."*" =
    self.by-version."rai"."0.1.12";
  by-version."rai"."0.1.12" = self.buildNodePackage {
    name = "rai-0.1.12";
    version = "0.1.12";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/rai/-/rai-0.1.12.tgz";
      name = "rai-0.1.12.tgz";
      sha1 = "8ccfd014d0f9608630dd73c19b8e4b057754a6a6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."2.12.0" =
    self.by-version."request"."2.12.0";
  by-version."request"."2.12.0" = self.buildNodePackage {
    name = "request-2.12.0";
    version = "2.12.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request/-/request-2.12.0.tgz";
      name = "request-2.12.0.tgz";
      sha1 = "11f46f20b3d0f4848c6383991c80790af16c8e48";
    };
    deps = {
      "form-data-0.0.10" = self.by-version."form-data"."0.0.10";
      "mime-1.2.11" = self.by-version."mime"."1.2.11";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."2.9.202" =
    self.by-version."request"."2.9.202";
  by-version."request"."2.9.202" = self.buildNodePackage {
    name = "request-2.9.202";
    version = "2.9.202";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request/-/request-2.9.202.tgz";
      name = "request-2.9.202.tgz";
      sha1 = "c61399cdfbbefda5dc48653b0e9bea517d9f8497";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."semver"."1.0.14" =
    self.by-version."semver"."1.0.14";
  by-version."semver"."1.0.14" = self.buildNodePackage {
    name = "semver-1.0.14";
    version = "1.0.14";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/semver/-/semver-1.0.14.tgz";
      name = "semver-1.0.14.tgz";
      sha1 = "cac5e2d55a6fbf958cb220ae844045071c78f676";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."semver"."1.1.0" =
    self.by-version."semver"."1.1.0";
  by-version."semver"."1.1.0" = self.buildNodePackage {
    name = "semver-1.1.0";
    version = "1.1.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/semver/-/semver-1.1.0.tgz";
      name = "semver-1.1.0.tgz";
      sha1 = "da9b9c837e31550a7c928622bc2381de7dd7a53e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."simplesmtp"."0.1.25" =
    self.by-version."simplesmtp"."0.1.25";
  by-version."simplesmtp"."0.1.25" = self.buildNodePackage {
    name = "simplesmtp-0.1.25";
    version = "0.1.25";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/simplesmtp/-/simplesmtp-0.1.25.tgz";
      name = "simplesmtp-0.1.25.tgz";
      sha1 = "0a5a5528d03ae07495ad0370d1c8bbc0bcc47d7f";
    };
    deps = {
      "rai-0.1.12" = self.by-version."rai"."0.1.12";
      "xoauth2-1.1.0" = self.by-version."xoauth2"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sockjs"."0.3.4" =
    self.by-version."sockjs"."0.3.4";
  by-version."sockjs"."0.3.4" = self.buildNodePackage {
    name = "sockjs-0.3.4";
    version = "0.3.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sockjs/-/sockjs-0.3.4.tgz";
      name = "sockjs-0.3.4.tgz";
      sha1 = "58aeb1594c049eb789a603d36d9db106d855ef49";
    };
    deps = {
      "node-uuid-1.3.3" = self.by-version."node-uuid"."1.3.3";
      "faye-websocket-0.4.0" = self.by-version."faye-websocket"."0.4.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stream-buffers"."0.2.3" =
    self.by-version."stream-buffers"."0.2.3";
  by-version."stream-buffers"."0.2.3" = self.buildNodePackage {
    name = "stream-buffers-0.2.3";
    version = "0.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stream-buffers/-/stream-buffers-0.2.3.tgz";
      name = "stream-buffers-0.2.3.tgz";
      sha1 = "7f67eefc723217631d964301b82d902242a99f64";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stylus"."0.30.1" =
    self.by-version."stylus"."0.30.1";
  by-version."stylus"."0.30.1" = self.buildNodePackage {
    name = "stylus-0.30.1";
    version = "0.30.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/stylus/-/stylus-0.30.1.tgz";
      name = "stylus-0.30.1.tgz";
      sha1 = "8fce4fb3940f4556e1dca1c43ce8be2876c80325";
    };
    deps = {
      "cssom-0.2.5" = self.by-version."cssom"."0.2.5";
      "mkdirp-0.3.5" = self.by-version."mkdirp"."0.3.5";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uglify-js"."1.3.4" =
    self.by-version."uglify-js"."1.3.4";
  by-version."uglify-js"."1.3.4" = self.buildNodePackage {
    name = "uglify-js-1.3.4";
    version = "1.3.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/uglify-js/-/uglify-js-1.3.4.tgz";
      name = "uglify-js-1.3.4.tgz";
      sha1 = "282cec40db568798e0ec6d71d0c989d323f0636b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uglify-js"."~1.2" =
    self.by-version."uglify-js"."1.2.6";
  by-version."uglify-js"."1.2.6" = self.buildNodePackage {
    name = "uglify-js-1.2.6";
    version = "1.2.6";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/uglify-js/-/uglify-js-1.2.6.tgz";
      name = "uglify-js-1.2.6.tgz";
      sha1 = "d354b2d3c1cf10ebc18fa78c11a28bdd9ce1580d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."useragent"."1.1.0" =
    self.by-version."useragent"."1.1.0";
  by-version."useragent"."1.1.0" = self.buildNodePackage {
    name = "useragent-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/useragent/-/useragent-1.1.0.tgz";
      name = "useragent-1.1.0.tgz";
      sha1 = "035fa6df189ab60567ac6303c159e9af0c3abbbe";
    };
    deps = {
      "yamlparser-0.0.2" = self.by-version."yamlparser"."0.0.2";
      "request-2.9.202" = self.by-version."request"."2.9.202";
      "semver-1.0.14" = self.by-version."semver"."1.0.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."wordwrap"."~0.0.2" =
    self.by-version."wordwrap"."0.0.3";
  by-version."wordwrap"."0.0.3" = self.buildNodePackage {
    name = "wordwrap-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/wordwrap/-/wordwrap-0.0.3.tgz";
      name = "wordwrap-0.0.3.tgz";
      sha1 = "a3d5da6cd5c0bc0008d37234bbaf1bed63059107";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xoauth2".">= 0.1.1" =
    self.by-version."xoauth2"."1.1.0";
  by-version."xoauth2"."1.1.0" = self.buildNodePackage {
    name = "xoauth2-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/xoauth2/-/xoauth2-1.1.0.tgz";
      name = "xoauth2-1.1.0.tgz";
      sha1 = "7ea2a796317b0b5b59a1c46becccca9fbf96f934";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."yamlparser"."0.0.2" =
    self.by-version."yamlparser"."0.0.2";
  by-version."yamlparser"."0.0.2" = self.buildNodePackage {
    name = "yamlparser-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/yamlparser/-/yamlparser-0.0.2.tgz";
      name = "yamlparser-0.0.2.tgz";
      sha1 = "32393e6afc70c8ca066b6650ac6738b481678ebc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
}
