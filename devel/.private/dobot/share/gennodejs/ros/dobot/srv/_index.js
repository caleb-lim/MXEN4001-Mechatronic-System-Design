
"use strict";

let GetJOGCommonParams = require('./GetJOGCommonParams.js')
let GetEndEffectorGripper = require('./GetEndEffectorGripper.js')
let GetEndEffectorSuctionCup = require('./GetEndEffectorSuctionCup.js')
let ClearAllAlarmsState = require('./ClearAllAlarmsState.js')
let GetCPParams = require('./GetCPParams.js')
let GetHOMEParams = require('./GetHOMEParams.js')
let SetQueuedCmdStopExec = require('./SetQueuedCmdStopExec.js')
let SetJOGCommonParams = require('./SetJOGCommonParams.js')
let SetTRIGCmd = require('./SetTRIGCmd.js')
let SetDeviceName = require('./SetDeviceName.js')
let SetJOGJointParams = require('./SetJOGJointParams.js')
let GetIOADC = require('./GetIOADC.js')
let SetWAITCmd = require('./SetWAITCmd.js')
let GetColorSensor = require('./GetColorSensor.js')
let SetPTPJumpParams = require('./SetPTPJumpParams.js')
let SetPTPCmd = require('./SetPTPCmd.js')
let SetEMotor = require('./SetEMotor.js')
let SetPTPCommonParams = require('./SetPTPCommonParams.js')
let GetJOGCoordinateParams = require('./GetJOGCoordinateParams.js')
let SetHOMEParams = require('./SetHOMEParams.js')
let GetInfraredSensor = require('./GetInfraredSensor.js')
let GetIODI = require('./GetIODI.js')
let SetEndEffectorLaser = require('./SetEndEffectorLaser.js')
let SetJOGCmd = require('./SetJOGCmd.js')
let SetIOMultiplexing = require('./SetIOMultiplexing.js')
let GetPTPJumpParams = require('./GetPTPJumpParams.js')
let GetPTPCommonParams = require('./GetPTPCommonParams.js')
let SetCmdTimeout = require('./SetCmdTimeout.js')
let GetEndEffectorLaser = require('./GetEndEffectorLaser.js')
let GetIODO = require('./GetIODO.js')
let SetARCCmd = require('./SetARCCmd.js')
let GetDeviceName = require('./GetDeviceName.js')
let SetJOGCoordinateParams = require('./SetJOGCoordinateParams.js')
let GetPose = require('./GetPose.js')
let SetARCParams = require('./SetARCParams.js')
let GetIOPWM = require('./GetIOPWM.js')
let SetEndEffectorGripper = require('./SetEndEffectorGripper.js')
let GetDeviceVersion = require('./GetDeviceVersion.js')
let GetARCParams = require('./GetARCParams.js')
let SetEndEffectorParams = require('./SetEndEffectorParams.js')
let GetIOMultiplexing = require('./GetIOMultiplexing.js')
let SetCPParams = require('./SetCPParams.js')
let SetEndEffectorSuctionCup = require('./SetEndEffectorSuctionCup.js')
let GetJOGJointParams = require('./GetJOGJointParams.js')
let SetCPCmd = require('./SetCPCmd.js')
let SetIODO = require('./SetIODO.js')
let GetDeviceSN = require('./GetDeviceSN.js')
let SetQueuedCmdStartExec = require('./SetQueuedCmdStartExec.js')
let GetPTPCoordinateParams = require('./GetPTPCoordinateParams.js')
let GetPTPJointParams = require('./GetPTPJointParams.js')
let GetAlarmsState = require('./GetAlarmsState.js')
let SetPTPCoordinateParams = require('./SetPTPCoordinateParams.js')
let SetColorSensor = require('./SetColorSensor.js')
let GetEndEffectorParams = require('./GetEndEffectorParams.js')
let SetInfraredSensor = require('./SetInfraredSensor.js')
let SetIOPWM = require('./SetIOPWM.js')
let GetCPCmd = require('./GetCPCmd.js')
let SetPTPJointParams = require('./SetPTPJointParams.js')
let SetQueuedCmdForceStopExec = require('./SetQueuedCmdForceStopExec.js')
let SetHOMECmd = require('./SetHOMECmd.js')
let SetQueuedCmdClear = require('./SetQueuedCmdClear.js')

module.exports = {
  GetJOGCommonParams: GetJOGCommonParams,
  GetEndEffectorGripper: GetEndEffectorGripper,
  GetEndEffectorSuctionCup: GetEndEffectorSuctionCup,
  ClearAllAlarmsState: ClearAllAlarmsState,
  GetCPParams: GetCPParams,
  GetHOMEParams: GetHOMEParams,
  SetQueuedCmdStopExec: SetQueuedCmdStopExec,
  SetJOGCommonParams: SetJOGCommonParams,
  SetTRIGCmd: SetTRIGCmd,
  SetDeviceName: SetDeviceName,
  SetJOGJointParams: SetJOGJointParams,
  GetIOADC: GetIOADC,
  SetWAITCmd: SetWAITCmd,
  GetColorSensor: GetColorSensor,
  SetPTPJumpParams: SetPTPJumpParams,
  SetPTPCmd: SetPTPCmd,
  SetEMotor: SetEMotor,
  SetPTPCommonParams: SetPTPCommonParams,
  GetJOGCoordinateParams: GetJOGCoordinateParams,
  SetHOMEParams: SetHOMEParams,
  GetInfraredSensor: GetInfraredSensor,
  GetIODI: GetIODI,
  SetEndEffectorLaser: SetEndEffectorLaser,
  SetJOGCmd: SetJOGCmd,
  SetIOMultiplexing: SetIOMultiplexing,
  GetPTPJumpParams: GetPTPJumpParams,
  GetPTPCommonParams: GetPTPCommonParams,
  SetCmdTimeout: SetCmdTimeout,
  GetEndEffectorLaser: GetEndEffectorLaser,
  GetIODO: GetIODO,
  SetARCCmd: SetARCCmd,
  GetDeviceName: GetDeviceName,
  SetJOGCoordinateParams: SetJOGCoordinateParams,
  GetPose: GetPose,
  SetARCParams: SetARCParams,
  GetIOPWM: GetIOPWM,
  SetEndEffectorGripper: SetEndEffectorGripper,
  GetDeviceVersion: GetDeviceVersion,
  GetARCParams: GetARCParams,
  SetEndEffectorParams: SetEndEffectorParams,
  GetIOMultiplexing: GetIOMultiplexing,
  SetCPParams: SetCPParams,
  SetEndEffectorSuctionCup: SetEndEffectorSuctionCup,
  GetJOGJointParams: GetJOGJointParams,
  SetCPCmd: SetCPCmd,
  SetIODO: SetIODO,
  GetDeviceSN: GetDeviceSN,
  SetQueuedCmdStartExec: SetQueuedCmdStartExec,
  GetPTPCoordinateParams: GetPTPCoordinateParams,
  GetPTPJointParams: GetPTPJointParams,
  GetAlarmsState: GetAlarmsState,
  SetPTPCoordinateParams: SetPTPCoordinateParams,
  SetColorSensor: SetColorSensor,
  GetEndEffectorParams: GetEndEffectorParams,
  SetInfraredSensor: SetInfraredSensor,
  SetIOPWM: SetIOPWM,
  GetCPCmd: GetCPCmd,
  SetPTPJointParams: SetPTPJointParams,
  SetQueuedCmdForceStopExec: SetQueuedCmdForceStopExec,
  SetHOMECmd: SetHOMECmd,
  SetQueuedCmdClear: SetQueuedCmdClear,
};
