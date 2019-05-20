
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, catkin, rtt-ros, rtt-roscomm }:
buildRosPackage {
  pname = "ros-lunar-rtt-std-msgs";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/lunar/rtt_std_msgs/2.9.2-1.tar.gz;
    sha256 = "db70ab7341032a5a2b60afc5d8d6d091d31091570ad09a3625e4b06344d44c97";
  };

  buildInputs = [ std-msgs rtt-ros rtt-roscomm ];
  propagatedBuildInputs = [ std-msgs rtt-ros rtt-roscomm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an rtt typekit for ROS std_msgs messages.

    It allows you to use ROS messages transparently in
    RTT components and applications.

    This package was automatically generated by the
    create_rtt_msgs generator and should not be manually
    modified.

    See the http://ros.org/wiki/std_msgs documentation
    for the documentation of the ROS messages in this
    typekit.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
