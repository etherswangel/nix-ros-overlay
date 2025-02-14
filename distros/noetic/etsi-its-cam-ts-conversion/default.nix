
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-cam-ts-coding, etsi-its-cam-ts-msgs, etsi-its-primitives-conversion, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-cam-ts-conversion";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_cam_ts_conversion/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "7904db14cbfa96fe70acfe62ba8175d4c4268daf120128f98371e3ab536f9f83";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-cam-ts-coding etsi-its-cam-ts-msgs etsi-its-primitives-conversion ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Conversion functions for converting ROS messages to and from ASN.1-encoded ETSI ITS CAMs (TS)";
    license = with lib.licenses; [ mit ];
  };
}
