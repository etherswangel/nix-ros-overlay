
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-foxy-ecl-command-line";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/foxy/ecl_command_line/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "bd58814925082bc6471b507a542bb89fc1ca0006fb1ef690194b79e5dd54162c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Embeds the TCLAP library inside the ecl. This is a very convenient
     command line parser in templatised c++.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
