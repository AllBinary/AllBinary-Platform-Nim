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
# package org.allbinary.game.input.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/LocalPlayerInputIdFactory as LocalPlayerInputIdFactoryModule
export LocalPlayerInputIdFactoryModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/game/input/event/UpKeyEventHandlerBase as UpKeyEventHandlerBaseModule
export UpKeyEventHandlerBaseModule

type
    UpKeyEventHandler* = ref object of UpKeyEventHandlerBase
        playerInputIdFactory*: LocalPlayerInputIdFactory

proc newUpKeyEventHandler*(): UpKeyEventHandler
proc initUpKeyEventHandler*(this: UpKeyEventHandler)
proc getInstance*(t: typedesc[UpKeyEventHandler]): UpKeyEventHandler {.discardable.}
method getInstanceForDevice*(this: UpKeyEventHandler, deviceId: int32): UpKeyEventHandlerBase {.base, discardable.}
method getInstanceForPlayer*(this: UpKeyEventHandler, playerInputId: int32): UpKeyEventHandlerBase {.base, discardable.}
method removeAllListeners*(this: UpKeyEventHandler)
method removeListenerSingleThreaded*(this: UpKeyEventHandler, eventListenerInterface: EventListenerInterface)
method removeListener*(this: UpKeyEventHandler, eventListenerInterface: EventListenerInterface)

var UpKeyEventHandler_instanceValue: UpKeyEventHandler
var UpKeyEventHandler_instanceSet = false
proc instance*(t: typedesc[UpKeyEventHandler]): UpKeyEventHandler =
    if not UpKeyEventHandler_instanceSet:
        UpKeyEventHandler_instanceSet = true
        UpKeyEventHandler_instanceValue = newUpKeyEventHandler()
    UpKeyEventHandler_instanceValue
var UpKeyEventHandler_instanceArrayValue: JArray[UpKeyEventHandlerBase]
var UpKeyEventHandler_instanceArraySet = false
proc instanceArray*(t: typedesc[UpKeyEventHandler]): JArray[UpKeyEventHandlerBase] =
    if not UpKeyEventHandler_instanceArraySet:
        UpKeyEventHandler_instanceArraySet = true
        UpKeyEventHandler_instanceArrayValue = newJArrayFromRefs[UpKeyEventHandlerBase](newUpKeyEventHandlerBase(), newUpKeyEventHandlerBase(), newUpKeyEventHandlerBase(), newUpKeyEventHandlerBase(), newUpKeyEventHandlerBase(), newUpKeyEventHandlerBase())
    UpKeyEventHandler_instanceArrayValue

# Java field initializers run after the base initializer
proc initFieldsUpKeyEventHandler(this: UpKeyEventHandler) =
    this.playerInputIdFactory = LocalPlayerInputIdFactory.getInstance()
    discard

proc getInstance*(t: typedesc[UpKeyEventHandler]): UpKeyEventHandler {.discardable.} =
        return UpKeyEventHandler.instance

method getInstanceForDevice*(this: UpKeyEventHandler, deviceId: int32): UpKeyEventHandlerBase {.base, discardable.} =
        let playerInputId: int32 = this.playerInputIdFactory.getPlayerForDevice(deviceId)
        return UpKeyEventHandler.instanceArray[playerInputId]

method getInstanceForPlayer*(this: UpKeyEventHandler, playerInputId: int32): UpKeyEventHandlerBase {.base, discardable.} =
        return UpKeyEventHandler.instanceArray[playerInputId]

proc initUpKeyEventHandler*(this: UpKeyEventHandler) =
        initUpKeyEventHandlerBase(this)
        this.initFieldsUpKeyEventHandler()
        discard

proc newUpKeyEventHandler*(): UpKeyEventHandler =
    result = UpKeyEventHandler()
    initUpKeyEventHandler(result)

method removeAllListeners*(this: UpKeyEventHandler) =
        procCall UpKeyEventHandlerBase(this).removeAllListeners()
        block:
            var index: int32 = UpKeyEventHandler.instanceArray.length -% 1
            while index >= 0:
                defer: index = index -% 1
                UpKeyEventHandler.instanceArray[index].removeAllListeners()

method removeListenerSingleThreaded*(this: UpKeyEventHandler, eventListenerInterface: EventListenerInterface) =
        procCall UpKeyEventHandlerBase(this).removeListenerSingleThreaded(eventListenerInterface)
        block:
            var index: int32 = UpKeyEventHandler.instanceArray.length -% 1
            while index >= 0:
                defer: index = index -% 1
                UpKeyEventHandler.instanceArray[index].removeListenerSingleThreaded(eventListenerInterface)

method removeListener*(this: UpKeyEventHandler, eventListenerInterface: EventListenerInterface) =
        procCall UpKeyEventHandlerBase(this).removeListener(eventListenerInterface)
        block:
            var index: int32 = UpKeyEventHandler.instanceArray.length -% 1
            while index >= 0:
                defer: index = index -% 1
                UpKeyEventHandler.instanceArray[index].removeListener(eventListenerInterface)

when declared(newUpKeyEventHandlerHook0):
    newUpKeyEventHandlerHook0 = proc (): UpKeyEventHandlerBase = newUpKeyEventHandler()

