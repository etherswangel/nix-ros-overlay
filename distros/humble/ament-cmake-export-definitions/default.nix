
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-export-definitions";
  version = "1.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_export_definitions/1.3.5-1.tar.gz";
    name = "1.3.5-1.tar.gz";
    sha256 = "3d2638baf82355590ce9483e1f738821994b0b15309dbcd9237c978db68d2e88";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to export definitions to downstream packages in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
