
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, nav2-lifecycle-manager, nav2-msgs, nav2-util, pluginlib, qt5, rclcpp, rclcpp-lifecycle, resource-retriever, rviz-common, rviz-default-plugins, rviz-ogre-vendor, rviz-rendering, std-msgs, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-nav2-rviz-plugins";
  version = "1.1.8-r2";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_rviz_plugins/1.1.8-2.tar.gz";
    name = "1.1.8-2.tar.gz";
    sha256 = "da48e98fc4d7b82c5388cf8ec85cfe8ab5674b2f2cf14804d15aa05f888eccef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs nav2-lifecycle-manager nav2-msgs nav2-util pluginlib qt5.qtbase rclcpp rclcpp-lifecycle resource-retriever rviz-common rviz-default-plugins rviz-ogre-vendor rviz-rendering std-msgs tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Navigation 2 plugins for rviz'';
    license = with lib.licenses; [ asl20 ];
  };
}
