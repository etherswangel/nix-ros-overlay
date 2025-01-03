
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, genmsg, genpy, python3Packages, rosbag-storage, rosconsole, roscpp, roscpp-serialization, roslib, rospy, std-srvs, topic-tools, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-rosbag";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosbag/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "cb693a0862df4f1801980effe7d1e970724ef059316cc607c6fbd82d3faf5828";
  };

  buildType = "catkin";
  buildInputs = [ catkin cpp-common python3Packages.pillow roscpp-serialization ];
  propagatedBuildInputs = [ boost genmsg genpy python3Packages.pycryptodomex python3Packages.python-gnupg python3Packages.rospkg rosbag-storage rosconsole roscpp roslib rospy std-srvs topic-tools xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This is a set of tools for recording from and playing back to ROS
    topics.  It is intended to be high performance and avoids
    deserialization and reserialization of the messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
