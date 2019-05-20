
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-roscomm, rosgraph-msgs, catkin, rtt-std-msgs }:
buildRosPackage {
  pname = "ros-lunar-rtt-rosgraph-msgs";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/lunar/rtt_rosgraph_msgs/2.9.2-1.tar.gz;
    sha256 = "99b0a675e3f81aa2c8c0e9b6c2d0022388eb9b4c76d85ac9f80ab7ce1e5fe916";
  };

  buildInputs = [ rtt-roscomm rosgraph-msgs rtt-std-msgs ];
  propagatedBuildInputs = [ rtt-roscomm rosgraph-msgs rtt-std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an rtt typekit for ROS rosgraph_msgs messages.

    It allows you to use ROS messages transparently in
	RTT components and applications.

	This package was automatically generated by the
	create_rtt_msgs generator and should not be manually
	modified.

	See the http://ros.org/wiki/rosgraph_msgs documentation
	for the documentation of the ROS messages in this
	typekit.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
