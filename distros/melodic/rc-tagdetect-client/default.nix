
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, curl, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, rc-common-msgs, rcdiscover, roscpp, std-srvs, tf, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-rc-tagdetect-client";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/rc_tagdetect_client/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "08aa73dfe702468ffbe8cee9d775e5e42c6d31147f31644700dfdc4d1a3bc954";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ curl dynamic-reconfigure geometry-msgs message-runtime rc-common-msgs rcdiscover roscpp std-srvs tf tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros client for roboception tag detection modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
