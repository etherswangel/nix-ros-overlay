
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-std-msgs, rtt-geometry-msgs, catkin, rtt-actionlib-msgs, nav-msgs, rtt-roscomm }:
buildRosPackage {
  pname = "ros-lunar-rtt-nav-msgs";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/lunar/rtt_nav_msgs/2.9.2-1.tar.gz;
    sha256 = "356dd876d789d7bedf20e2d30aed39ea83374fd1a34bcd7f8aac1c1addd3dd53";
  };

  buildInputs = [ rtt-std-msgs rtt-geometry-msgs rtt-actionlib-msgs nav-msgs rtt-roscomm ];
  propagatedBuildInputs = [ rtt-std-msgs rtt-geometry-msgs rtt-actionlib-msgs nav-msgs rtt-roscomm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an rtt typekit for ROS nav_msgs messages.

    It allows you to use ROS messages transparently in
    RTT components and applications.

    This package was automatically generated by the
    create_rtt_msgs generator and should not be manually
    modified.

    See the http://ros.org/wiki/nav_msgs documentation
    for the documentation of the ROS messages in this
    typekit.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
