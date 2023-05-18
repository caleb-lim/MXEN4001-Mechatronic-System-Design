# Install script for directory: /home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/caleblim/MXEN4001-Mechatronic-System-Design/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/caleblim/MXEN4001-Mechatronic-System-Design/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/caleblim/MXEN4001-Mechatronic-System-Design/install" TYPE PROGRAM FILES "/home/caleblim/MXEN4001-Mechatronic-System-Design/build/dobot/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/caleblim/MXEN4001-Mechatronic-System-Design/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/caleblim/MXEN4001-Mechatronic-System-Design/install" TYPE PROGRAM FILES "/home/caleblim/MXEN4001-Mechatronic-System-Design/build/dobot/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/caleblim/MXEN4001-Mechatronic-System-Design/install/setup.bash;/home/caleblim/MXEN4001-Mechatronic-System-Design/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/caleblim/MXEN4001-Mechatronic-System-Design/install" TYPE FILE FILES
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/build/dobot/catkin_generated/installspace/setup.bash"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/build/dobot/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/caleblim/MXEN4001-Mechatronic-System-Design/install/setup.sh;/home/caleblim/MXEN4001-Mechatronic-System-Design/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/caleblim/MXEN4001-Mechatronic-System-Design/install" TYPE FILE FILES
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/build/dobot/catkin_generated/installspace/setup.sh"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/build/dobot/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/caleblim/MXEN4001-Mechatronic-System-Design/install/setup.zsh;/home/caleblim/MXEN4001-Mechatronic-System-Design/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/caleblim/MXEN4001-Mechatronic-System-Design/install" TYPE FILE FILES
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/build/dobot/catkin_generated/installspace/setup.zsh"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/build/dobot/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/caleblim/MXEN4001-Mechatronic-System-Design/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/caleblim/MXEN4001-Mechatronic-System-Design/install" TYPE FILE FILES "/home/caleblim/MXEN4001-Mechatronic-System-Design/build/dobot/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot/msg" TYPE FILE FILES "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/msg/CartesianSimple.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot/srv" TYPE FILE FILES
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetCmdTimeout.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetDeviceSN.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetDeviceName.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetDeviceName.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetDeviceVersion.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetPose.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetAlarmsState.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/ClearAllAlarmsState.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetHOMEParams.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetHOMEParams.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetHOMECmd.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetEndEffectorParams.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetEndEffectorParams.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetEndEffectorLaser.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetEndEffectorLaser.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetEndEffectorSuctionCup.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetEndEffectorSuctionCup.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetEndEffectorGripper.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetEndEffectorGripper.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetJOGJointParams.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetJOGJointParams.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetJOGCoordinateParams.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetJOGCoordinateParams.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetJOGCommonParams.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetJOGCommonParams.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetJOGCmd.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetPTPJointParams.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetPTPJointParams.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetPTPCoordinateParams.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetPTPCoordinateParams.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetPTPJumpParams.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetPTPJumpParams.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetPTPCommonParams.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetPTPCommonParams.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetPTPCmd.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetCPParams.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetCPParams.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetCPCmd.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetARCParams.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetARCParams.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetARCCmd.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetWAITCmd.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetTRIGCmd.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetIOMultiplexing.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetIOMultiplexing.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetIODO.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetIODO.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetIOPWM.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetIOPWM.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetIODI.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetIOADC.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetEMotor.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetInfraredSensor.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetInfraredSensor.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetColorSensor.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/GetColorSensor.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetQueuedCmdStartExec.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetQueuedCmdStopExec.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetQueuedCmdForceStopExec.srv"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/srv/SetQueuedCmdClear.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot/cmake" TYPE FILE FILES "/home/caleblim/MXEN4001-Mechatronic-System-Design/build/dobot/catkin_generated/installspace/dobot-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/caleblim/MXEN4001-Mechatronic-System-Design/devel/.private/dobot/include/dobot")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/caleblim/MXEN4001-Mechatronic-System-Design/devel/.private/dobot/share/roseus/ros/dobot")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/caleblim/MXEN4001-Mechatronic-System-Design/devel/.private/dobot/share/common-lisp/ros/dobot")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/caleblim/MXEN4001-Mechatronic-System-Design/devel/.private/dobot/share/gennodejs/ros/dobot")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/caleblim/MXEN4001-Mechatronic-System-Design/devel/.private/dobot/lib/python3/dist-packages/dobot")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/caleblim/MXEN4001-Mechatronic-System-Design/devel/.private/dobot/lib/python3/dist-packages/dobot")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/caleblim/MXEN4001-Mechatronic-System-Design/build/dobot/catkin_generated/installspace/dobot.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot/cmake" TYPE FILE FILES "/home/caleblim/MXEN4001-Mechatronic-System-Design/build/dobot/catkin_generated/installspace/dobot-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot/cmake" TYPE FILE FILES
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/build/dobot/catkin_generated/installspace/dobotConfig.cmake"
    "/home/caleblim/MXEN4001-Mechatronic-System-Design/build/dobot/catkin_generated/installspace/dobotConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot" TYPE FILE FILES "/home/caleblim/MXEN4001-Mechatronic-System-Design/src/dobot/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/caleblim/MXEN4001-Mechatronic-System-Design/build/dobot/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/caleblim/MXEN4001-Mechatronic-System-Design/build/dobot/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
