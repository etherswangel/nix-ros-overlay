
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, rclcpp, rcpputils, ros2bag, rosbag2-compression, rosbag2-converter-default-plugins, rosbag2-cpp, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-foxy-rosbag2-tests";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/rosbag2_tests/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "99237b0c24b7ffbc7651ca5967750708e7256ca0b628d7b2846b54952283cfda";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rclcpp rcpputils ros2bag rosbag2-compression rosbag2-converter-default-plugins rosbag2-cpp rosbag2-storage rosbag2-storage-default-plugins rosbag2-test-common std-msgs test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tests package for rosbag2'';
    license = with lib.licenses; [ asl20 ];
  };
}
