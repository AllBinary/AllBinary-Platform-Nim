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
import org/allbinary/game/input/event/UpGameKeyEventHandlerBase as UpGameKeyEventHandlerBaseModule
export UpGameKeyEventHandlerBaseModule

type
    UpGameKeyEventHandler* = ref object of UpGameKeyEventHandlerBase
        playerInputIdFactory*: LocalPlayerInputIdFactory

proc newUpGameKeyEventHandler*(): UpGameKeyEventHandler
proc initUpGameKeyEventHandler*(this: UpGameKeyEventHandler)
proc getInstance*(t: typedesc[UpGameKeyEventHandler]): UpGameKeyEventHandler {.discardable.}
method getInstanceForDevice*(this: UpGameKeyEventHandler, deviceId: int32): UpGameKeyEventHandlerBase {.base, discardable.}
method getInstanceForPlayer*(this: UpGameKeyEventHandler, playerInputId: int32): UpGameKeyEventHandlerBase {.base, discardable.}
method removeAllListeners*(this: UpGameKeyEventHandler)
method removeListenerSingleThreaded*(this: UpGameKeyEventHandler, eventListenerInterface: EventListenerInterface)
method removeListener*(this: UpGameKeyEventHandler, eventListenerInterface: EventListenerInterface)

var UpGameKeyEventHandler_instanceValue: UpGameKeyEventHandler
var UpGameKeyEventHandler_instanceSet = false
proc instance*(t: typedesc[UpGameKeyEventHandler]): UpGameKeyEventHandler =
    if not UpGameKeyEventHandler_instanceSet:
        UpGameKeyEventHandler_instanceSet = true
        UpGameKeyEventHandler_instanceValue = newUpGameKeyEventHandler()
    UpGameKeyEventHandler_instanceValue
var UpGameKeyEventHandler_instanceArrayValue: JArray[UpGameKeyEventHandlerBase]
var UpGameKeyEventHandler_instanceArraySet = false
proc instanceArray*(t: typedesc[UpGameKeyEventHandler]): JArray[UpGameKeyEventHandlerBase] =
    if not UpGameKeyEventHandler_instanceArraySet:
        UpGameKeyEventHandler_instanceArraySet = true
        UpGameKeyEventHandler_instanceArrayValue = newJArrayFromRefs[UpGameKeyEventHandlerBase](newUpGameKeyEventHandlerBase(), newUpGameKeyEventHandlerBase(), newUpGameKeyEventHandlerBase(), newUpGameKeyEventHandlerBase(), newUpGameKeyEventHandlerBase(), newUpGameKeyEventHandlerBase())
    UpGameKeyEventHandler_instanceArrayValue

# Java field initializers run after the base initializer
proc initFieldsUpGameKeyEventHandler(this: UpGameKeyEventHandler) =
    this.playerInputIdFactory = LocalPlayerInputIdFactory.getInstance()
    discard

proc getInstance*(t: typedesc[UpGameKeyEventHandler]): UpGameKeyEventHandler {.discardable.} =
        return UpGameKeyEventHandler.instance

method getInstanceForDevice*(this: UpGameKeyEventHandler, deviceId: int32): UpGameKeyEventHandlerBase {.base, discardable.} =
        let playerInputId: int32 = this.playerInputIdFactory.getPlayerForDevice(deviceId)
        return UpGameKeyEventHandler.instanceArray[playerInputId]

method getInstanceForPlayer*(this: UpGameKeyEventHandler, playerInputId: int32): UpGameKeyEventHandlerBase {.base, discardable.} =
        return UpGameKeyEventHandler.instanceArray[playerInputId]

proc initUpGameKeyEventHandler*(this: UpGameKeyEventHandler) =
        initUpGameKeyEventHandlerBase(this)
        this.initFieldsUpGameKeyEventHandler()
        discard

proc newUpGameKeyEventHandler*(): UpGameKeyEventHandler =
    result = UpGameKeyEventHandler()
    initUpGameKeyEventHandler(result)

method removeAllListeners*(this: UpGameKeyEventHandler) =
        procCall UpGameKeyEventHandlerBase(this).removeAllListeners()
        block:
            var index: int32 = UpGameKeyEventHandler.instanceArray.length -% 1
            while index >= 0:
                defer: index = index -% 1
                UpGameKeyEventHandler.instanceArray[index].removeAllListeners()

method removeListenerSingleThreaded*(this: UpGameKeyEventHandler, eventListenerInterface: EventListenerInterface) =
        procCall UpGameKeyEventHandlerBase(this).removeListenerSingleThreaded(eventListenerInterface)
        block:
            var index: int32 = UpGameKeyEventHandler.instanceArray.length -% 1
            while index >= 0:
                defer: index = index -% 1
                UpGameKeyEventHandler.instanceArray[index].removeListenerSingleThreaded(eventListenerInterface)

method removeListener*(this: UpGameKeyEventHandler, eventListenerInterface: EventListenerInterface) =
        procCall UpGameKeyEventHandlerBase(this).removeListener(eventListenerInterface)
        block:
            var index: int32 = UpGameKeyEventHandler.instanceArray.length -% 1
            while index >= 0:
                defer: index = index -% 1
                UpGameKeyEventHandler.instanceArray[index].removeListener(eventListenerInterface)

when declared(newUpGameKeyEventHandlerHook0):
    newUpGameKeyEventHandlerHook0 = proc (): UpGameKeyEventHandlerBase = newUpGameKeyEventHandler()

