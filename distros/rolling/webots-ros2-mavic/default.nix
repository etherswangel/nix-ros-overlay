
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, pythonPackages, rclpy, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-rolling-webots-ros2-mavic";
  version = "2023.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/rolling/webots_ros2_mavic/2023.1.0-1.tar.gz";
    name = "2023.1.0-1.tar.gz";
    sha256 = "5b7e324288e1351acc7b7d5ac8f3b963e3ed286e3d4000363f44d6f1ba3162d8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy webots-ros2-driver ];

  meta = {
    description = ''Mavic 2 Pro robot ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
