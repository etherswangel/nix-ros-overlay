
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-utilities, libntcan, libpcan, socketcan-interface }:
buildRosPackage {
  pname = "ros-noetic-cob-generic-can";
  version = "0.7.17-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/cob_generic_can/0.7.17-2.tar.gz";
    name = "0.7.17-2.tar.gz";
    sha256 = "670248a60137d545fda5e0a82e51b93055028bae0718bf17f66da98ac19fb570";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-utilities libntcan libpcan socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The package cob_generic_can provides an interface for nodes on a can-bus and examplary wrappers for two PeakSys-can-libs. When a can-bus-device is generated (for an example see base_dirve_chain) you can use generic_can to create as many itfs as there will be components communicating via this can-bus. Assign type of the can communication device (e.g. usb-to-can or can-card of a specific vendor) and can-address of the target device. This package comes with wrappers for PeakSys and PeakSysUSB adapters.";
    license = with lib.licenses; [ asl20 ];
  };
}
