
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav2-common, nav2-util, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-nav2-velocity-smoother";
  version = "1.1.8-r2";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_velocity_smoother/1.1.8-2.tar.gz";
    name = "1.1.8-2.tar.gz";
    sha256 = "c638c153e1019d650fa5118cdb5a7d85634ecc6cf94bd73a30438e3ec5d2dde8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav2-util rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Nav2's Output velocity smoother'';
    license = with lib.licenses; [ asl20 ];
  };
}
