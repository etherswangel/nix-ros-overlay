
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, self-test, camera-calibration-parsers, image-transport, sensor-msgs, catkin, driver-base, polled-camera, prosilica-gige-sdk, diagnostic-updater, dynamic-reconfigure, std-msgs, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-prosilica-camera";
  version = "1.9.4-r1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/prosilica_driver-release/archive/release/melodic/prosilica_camera/1.9.4-1.tar.gz;
    sha256 = "7c2aafe58194390d9dbaaf25cf54cf5ba4060742e2ef9f10a0bb207c377d8202";
  };

  buildInputs = [ rosconsole self-test camera-calibration-parsers image-transport sensor-msgs driver-base polled-camera prosilica-gige-sdk diagnostic-updater dynamic-reconfigure std-msgs diagnostic-msgs roscpp ];
  propagatedBuildInputs = [ self-test camera-calibration-parsers image-transport sensor-msgs driver-base polled-camera prosilica-gige-sdk diagnostic-updater dynamic-reconfigure std-msgs diagnostic-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver node for AVT/Prosilica Gigabit Ethernet (GigE) cameras.'';
    #license = lib.licenses.BSD;
  };
}
