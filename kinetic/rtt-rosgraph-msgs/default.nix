
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-roscomm, rosgraph-msgs, catkin, rtt-std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rtt-rosgraph-msgs";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_rosgraph_msgs/2.9.2-1.tar.gz;
    sha256 = "b6d066d9828b65f27981026f6427b19481d10ff7a0f8eb3ab5aad9cf3b2b7f2a";
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
