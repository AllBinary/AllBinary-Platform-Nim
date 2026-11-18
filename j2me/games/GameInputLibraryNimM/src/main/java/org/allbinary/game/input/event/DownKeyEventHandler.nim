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
import org/allbinary/game/input/event/DownKeyEventHandlerBase as DownKeyEventHandlerBaseModule
export DownKeyEventHandlerBaseModule

type
    DownKeyEventHandler* = ref object of DownKeyEventHandlerBase
        playerInputIdFactory*: LocalPlayerInputIdFactory

proc newDownKeyEventHandler*(): DownKeyEventHandler
proc initDownKeyEventHandler*(this: DownKeyEventHandler)
proc getInstance*(t: typedesc[DownKeyEventHandler]): DownKeyEventHandler {.discardable.}
method getInstanceForDevice*(this: DownKeyEventHandler, deviceId: int32): DownKeyEventHandlerBase {.base, discardable.}
method getInstanceForPlayer*(this: DownKeyEventHandler, playerInputId: int32): DownKeyEventHandlerBase {.base, discardable.}
method removeAllListeners*(this: DownKeyEventHandler)
method removeListenerSingleThreaded*(this: DownKeyEventHandler, eventListenerInterface: EventListenerInterface)
method removeListener*(this: DownKeyEventHandler, eventListenerInterface: EventListenerInterface)

var DownKeyEventHandler_instanceValue: DownKeyEventHandler
var DownKeyEventHandler_instanceSet = false
proc instance*(t: typedesc[DownKeyEventHandler]): DownKeyEventHandler =
    if not DownKeyEventHandler_instanceSet:
        DownKeyEventHandler_instanceSet = true
        DownKeyEventHandler_instanceValue = newDownKeyEventHandler()
    DownKeyEventHandler_instanceValue
var DownKeyEventHandler_instanceArrayValue: JArray[DownKeyEventHandlerBase]
var DownKeyEventHandler_instanceArraySet = false
proc instanceArray*(t: typedesc[DownKeyEventHandler]): JArray[DownKeyEventHandlerBase] =
    if not DownKeyEventHandler_instanceArraySet:
        DownKeyEventHandler_instanceArraySet = true
        DownKeyEventHandler_instanceArrayValue = newJArrayFromRefs[DownKeyEventHandlerBase](newDownKeyEventHandlerBase(), newDownKeyEventHandlerBase(), newDownKeyEventHandlerBase(), newDownKeyEventHandlerBase(), newDownKeyEventHandlerBase(), newDownKeyEventHandlerBase())
    DownKeyEventHandler_instanceArrayValue

# Java field initializers run after the base initializer
proc initFieldsDownKeyEventHandler(this: DownKeyEventHandler) =
    this.playerInputIdFactory = LocalPlayerInputIdFactory.getInstance()
    discard

proc getInstance*(t: typedesc[DownKeyEventHandler]): DownKeyEventHandler {.discardable.} =
        return DownKeyEventHandler.instance

method getInstanceForDevice*(this: DownKeyEventHandler, deviceId: int32): DownKeyEventHandlerBase {.base, discardable.} =
        let playerInputId: int32 = this.playerInputIdFactory.getPlayerForDevice(deviceId)
        return DownKeyEventHandler.instanceArray[playerInputId]

method getInstanceForPlayer*(this: DownKeyEventHandler, playerInputId: int32): DownKeyEventHandlerBase {.base, discardable.} =
        return DownKeyEventHandler.instanceArray[playerInputId]

proc initDownKeyEventHandler*(this: DownKeyEventHandler) =
        initDownKeyEventHandlerBase(this)
        this.initFieldsDownKeyEventHandler()
        discard

proc newDownKeyEventHandler*(): DownKeyEventHandler =
    result = DownKeyEventHandler()
    initDownKeyEventHandler(result)

method removeAllListeners*(this: DownKeyEventHandler) =
        procCall DownKeyEventHandlerBase(this).removeAllListeners()
        block:
            var index: int32 = DownKeyEventHandler.instanceArray.length -% 1
            while index >= 0:
                defer: index = index -% 1
                DownKeyEventHandler.instanceArray[index].removeAllListeners()

method removeListenerSingleThreaded*(this: DownKeyEventHandler, eventListenerInterface: EventListenerInterface) =
        procCall DownKeyEventHandlerBase(this).removeListenerSingleThreaded(eventListenerInterface)
        block:
            var index: int32 = DownKeyEventHandler.instanceArray.length -% 1
            while index >= 0:
                defer: index = index -% 1
                DownKeyEventHandler.instanceArray[index].removeListenerSingleThreaded(eventListenerInterface)

method removeListener*(this: DownKeyEventHandler, eventListenerInterface: EventListenerInterface) =
        procCall DownKeyEventHandlerBase(this).removeListener(eventListenerInterface)
        block:
            var index: int32 = DownKeyEventHandler.instanceArray.length -% 1
            while index >= 0:
                defer: index = index -% 1
                DownKeyEventHandler.instanceArray[index].removeListener(eventListenerInterface)

when declared(newDownKeyEventHandlerHook0):
    newDownKeyEventHandlerHook0 = proc (): DownKeyEventHandlerBase = newDownKeyEventHandler()

