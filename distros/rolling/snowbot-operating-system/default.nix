
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-ros, geometry-msgs, pluginlib, rviz-common, rviz-rendering }:
buildRosPackage {
  pname = "ros-rolling-snowbot-operating-system";
  version = "0.1.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/snowbot_release/archive/release/rolling/snowbot_operating_system/0.1.2-4.tar.gz";
    name = "0.1.2-4.tar.gz";
    sha256 = "1686c865def713b8c6c9724349b094540a37efd1b6898cf99570d666e81577e4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ];
  propagatedBuildInputs = [ ament-cmake-ros geometry-msgs pluginlib rviz-common rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The weather outside is frightful";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
