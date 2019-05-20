
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, cmake-modules, tf2-geometry-msgs, roslint, sensor-msgs, catkin, tf2-ros, tf2, rostest, nav-msgs, map-organizer-msgs, neonavigation-common, pcl-ros, eigen-conversions, roscpp, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-kinetic-map-organizer";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/kinetic/map_organizer/0.4.0-1.tar.gz;
    sha256 = "a220279f72ba5b17e777138359aba7066b8988f63731cf8584da33f285f203d6";
  };

  buildInputs = [ map-server cmake-modules tf2-geometry-msgs sensor-msgs tf2-ros tf2 nav-msgs map-organizer-msgs neonavigation-common pcl-ros eigen-conversions roscpp geometry-msgs eigen ];
  checkInputs = [ rostest roslint ];
  propagatedBuildInputs = [ map-server cmake-modules tf2-geometry-msgs sensor-msgs tf2-ros tf2 nav-msgs map-organizer-msgs neonavigation-common pcl-ros eigen-conversions roscpp geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Layered costmap organizer package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
