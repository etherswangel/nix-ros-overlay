
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-std-msgs, rtt-geometry-msgs, trajectory-msgs, catkin, rtt-roscomm }:
buildRosPackage {
  pname = "ros-kinetic-rtt-trajectory-msgs";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_trajectory_msgs/2.9.2-1.tar.gz;
    sha256 = "d010fbab8e706ea42435691d60f8e533a87c6fc9ba3d8f1f77c818089f3af2ce";
  };

  buildInputs = [ rtt-geometry-msgs trajectory-msgs rtt-std-msgs rtt-roscomm ];
  propagatedBuildInputs = [ rtt-geometry-msgs trajectory-msgs rtt-std-msgs rtt-roscomm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an rtt typekit for ROS trajectory_msgs messages.

    It allows you to use ROS messages transparently in
    RTT components and applications.

    This package was automatically generated by the
    create_rtt_msgs generator and should not be manually
    modified.

    See the http://ros.org/wiki/trajectory_msgs documentation
    for the documentation of the ROS messages in this
    typekit.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
