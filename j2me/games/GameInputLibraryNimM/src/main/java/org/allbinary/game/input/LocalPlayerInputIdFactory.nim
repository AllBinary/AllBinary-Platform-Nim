#[
 
  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
]#
# Generated Code Do Not Modify
# package org.allbinary.game.input

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    LocalPlayerInputIdFactory* = ref object of JObject
        logUtil*: LogUtil
        MAX_NUMBER_OF_PLAYERS*: int32
        MAX_FAST_DEVICEID*: int32
        deviceIdToplayerId*: JArray[int32]
        playerIdToDeviceId*: JArray[int32]
        playersInPlay*: JArray[bool]
        totalDevicesMapped*: int32

proc newLocalPlayerInputIdFactory*(): LocalPlayerInputIdFactory
proc initLocalPlayerInputIdFactory*(this: LocalPlayerInputIdFactory)
proc getInstance*(t: typedesc[LocalPlayerInputIdFactory]): LocalPlayerInputIdFactory {.discardable.}
method getDeviceId*(this: LocalPlayerInputIdFactory, playerInputId: int32): int32 {.base, discardable.}
method getPlayerForDevice*(this: LocalPlayerInputIdFactory, deviceId: int32): int32 {.base, discardable.}
method getTotalDevicesInPlay*(this: LocalPlayerInputIdFactory): int32 {.base, discardable.}
method isPlayerInPlay*(this: LocalPlayerInputIdFactory, playerInputId: int32): bool {.base, discardable.}
method setPlayerInPlay*(this: LocalPlayerInputIdFactory, playerInputId: int32) {.base.}
method setPlayerOutOfPlay*(this: LocalPlayerInputIdFactory, playerInputId: int32) {.base.}
method getPlayersInPlay*(this: LocalPlayerInputIdFactory): JArray[bool] {.base, discardable.}
import org/allbinary/game/input/analog/AnalogLocationInputFactory as AnalogLocationInputFactoryModule
export AnalogLocationInputFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule

var LocalPlayerInputIdFactory_instanceValue: LocalPlayerInputIdFactory
var LocalPlayerInputIdFactory_instanceSet = false
proc instance*(t: typedesc[LocalPlayerInputIdFactory]): LocalPlayerInputIdFactory =
    if not LocalPlayerInputIdFactory_instanceSet:
        LocalPlayerInputIdFactory_instanceSet = true
        LocalPlayerInputIdFactory_instanceValue = newLocalPlayerInputIdFactory()
    LocalPlayerInputIdFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsLocalPlayerInputIdFactory(this: LocalPlayerInputIdFactory) =
    this.logUtil = LogUtil.getInstance()
    this.MAX_NUMBER_OF_PLAYERS = 6
    this.MAX_FAST_DEVICEID = 65
    this.deviceIdToplayerId = newJArray[int32](this.MAX_FAST_DEVICEID, default(int32))
    this.playerIdToDeviceId = newJArray[int32](this.MAX_NUMBER_OF_PLAYERS, default(int32))
    this.playersInPlay = newJArray[bool](this.MAX_NUMBER_OF_PLAYERS, default(bool))
    this.totalDevicesMapped = 0
    discard

proc initLocalPlayerInputIdFactory*(this: LocalPlayerInputIdFactory) =
        this.initFieldsLocalPlayerInputIdFactory()
        block:
            var index: int32 = this.deviceIdToplayerId.length -% 1
            while index >= 0:
                defer: index = index -% 1
                this.deviceIdToplayerId[index] = -1

proc newLocalPlayerInputIdFactory*(): LocalPlayerInputIdFactory =
    result = LocalPlayerInputIdFactory()
    initLocalPlayerInputIdFactory(result)

proc getInstance*(t: typedesc[LocalPlayerInputIdFactory]): LocalPlayerInputIdFactory {.discardable.} =
        return LocalPlayerInputIdFactory.instance

method getDeviceId*(this: LocalPlayerInputIdFactory, playerInputId: int32): int32 {.base, discardable.} =
        return this.playerIdToDeviceId[playerInputId]

method getPlayerForDevice*(this: LocalPlayerInputIdFactory, deviceId: int32): int32 {.base, discardable.} =
        var index: int32 = 0
        if deviceId < this.MAX_FAST_DEVICEID:
            var playerInputId: int32 = this.deviceIdToplayerId[deviceId]
            if playerInputId != -1:
                return playerInputId
        else:
            block:
                index = this.totalDevicesMapped -% 1
                while index >= 0:
                    defer: index = index -% 1
                    if this.playerIdToDeviceId[index] == deviceId:
                        return index
        index = this.totalDevicesMapped
        if deviceId < this.MAX_FAST_DEVICEID:
            this.deviceIdToplayerId[deviceId] = index
        else:
            this.logUtil.putF(newStringMaker().append("Added DeviceId: ").appendint(deviceId).append(" beyond fast Id list").toString(), this, "getPlayerForDevice")
        this.playerIdToDeviceId[index] = deviceId
        AnalogLocationInputFactory.getInstance().addPlayer(this.totalDevicesMapped)
        this.totalDevicesMapped = this.totalDevicesMapped +% 1
        this.logUtil.putF(newStringMaker().append("Added DeviceId: ").appendint(deviceId).append(" at: ").appendint(index).append(" Total: ").appendint(this.totalDevicesMapped).toString(), this, "getPlayerForDevice")
        return index

method getTotalDevicesInPlay*(this: LocalPlayerInputIdFactory): int32 {.base, discardable.} =
        var total: int32 = 0
        block:
            var index: int32 = this.totalDevicesMapped -% 1
            while index >= 0:
                defer: index = index -% 1
                if this.playersInPlay[index] == true:
                    total = total +% 1
        return total

method isPlayerInPlay*(this: LocalPlayerInputIdFactory, playerInputId: int32): bool {.base, discardable.} =
        return this.playersInPlay[playerInputId]

method setPlayerInPlay*(this: LocalPlayerInputIdFactory, playerInputId: int32) {.base.} =
        this.logUtil.putF(newStringMaker().append("Setting PlayerInPlay with playerInputId: ").appendint(playerInputId).toString(), this, "setPlayerInPlay")
        this.playersInPlay[playerInputId] = true

method setPlayerOutOfPlay*(this: LocalPlayerInputIdFactory, playerInputId: int32) {.base.} =
        this.logUtil.putF(newStringMaker().append("Setting PlayerOutOfPlay with playerInputId: ").appendint(playerInputId).toString(), this, "setPlayerOutOfPlay")
        this.playersInPlay[playerInputId] = false

method getPlayersInPlay*(this: LocalPlayerInputIdFactory): JArray[bool] {.base, discardable.} =
        return this.playersInPlay

