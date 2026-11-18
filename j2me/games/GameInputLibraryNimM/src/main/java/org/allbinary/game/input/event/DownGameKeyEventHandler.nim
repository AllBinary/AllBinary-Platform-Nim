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
import org/allbinary/game/input/event/DownGameKeyEventHandlerBase as DownGameKeyEventHandlerBaseModule
export DownGameKeyEventHandlerBaseModule

type
    DownGameKeyEventHandler* = ref object of DownGameKeyEventHandlerBase
        playerInputIdFactory*: LocalPlayerInputIdFactory

proc newDownGameKeyEventHandler*(): DownGameKeyEventHandler
proc initDownGameKeyEventHandler*(this: DownGameKeyEventHandler)
proc getInstance*(t: typedesc[DownGameKeyEventHandler]): DownGameKeyEventHandler {.discardable.}
method getInstanceForDevice*(this: DownGameKeyEventHandler, deviceId: int32): DownGameKeyEventHandlerBase {.base, discardable.}
method getInstanceForPlayer*(this: DownGameKeyEventHandler, playerInputId: int32): DownGameKeyEventHandlerBase {.base, discardable.}
method removeAllListeners*(this: DownGameKeyEventHandler)
method removeListenerSingleThreaded*(this: DownGameKeyEventHandler, eventListenerInterface: EventListenerInterface)
method removeListener*(this: DownGameKeyEventHandler, eventListenerInterface: EventListenerInterface)

var DownGameKeyEventHandler_instanceValue: DownGameKeyEventHandler
var DownGameKeyEventHandler_instanceSet = false
proc instance*(t: typedesc[DownGameKeyEventHandler]): DownGameKeyEventHandler =
    if not DownGameKeyEventHandler_instanceSet:
        DownGameKeyEventHandler_instanceSet = true
        DownGameKeyEventHandler_instanceValue = newDownGameKeyEventHandler()
    DownGameKeyEventHandler_instanceValue
var DownGameKeyEventHandler_instanceArrayValue: JArray[DownGameKeyEventHandlerBase]
var DownGameKeyEventHandler_instanceArraySet = false
proc instanceArray*(t: typedesc[DownGameKeyEventHandler]): JArray[DownGameKeyEventHandlerBase] =
    if not DownGameKeyEventHandler_instanceArraySet:
        DownGameKeyEventHandler_instanceArraySet = true
        DownGameKeyEventHandler_instanceArrayValue = newJArrayFromRefs[DownGameKeyEventHandlerBase](newDownGameKeyEventHandlerBase(), newDownGameKeyEventHandlerBase(), newDownGameKeyEventHandlerBase(), newDownGameKeyEventHandlerBase(), newDownGameKeyEventHandlerBase(), newDownGameKeyEventHandlerBase())
    DownGameKeyEventHandler_instanceArrayValue

# Java field initializers run after the base initializer
proc initFieldsDownGameKeyEventHandler(this: DownGameKeyEventHandler) =
    this.playerInputIdFactory = LocalPlayerInputIdFactory.getInstance()
    discard

proc getInstance*(t: typedesc[DownGameKeyEventHandler]): DownGameKeyEventHandler {.discardable.} =
        return DownGameKeyEventHandler.instance

method getInstanceForDevice*(this: DownGameKeyEventHandler, deviceId: int32): DownGameKeyEventHandlerBase {.base, discardable.} =
        let playerInputId: int32 = this.playerInputIdFactory.getPlayerForDevice(deviceId)
        return DownGameKeyEventHandler.instanceArray[playerInputId]

method getInstanceForPlayer*(this: DownGameKeyEventHandler, playerInputId: int32): DownGameKeyEventHandlerBase {.base, discardable.} =
        return DownGameKeyEventHandler.instanceArray[playerInputId]

proc initDownGameKeyEventHandler*(this: DownGameKeyEventHandler) =
        initDownGameKeyEventHandlerBase(this)
        this.initFieldsDownGameKeyEventHandler()
        discard

proc newDownGameKeyEventHandler*(): DownGameKeyEventHandler =
    result = DownGameKeyEventHandler()
    initDownGameKeyEventHandler(result)

method removeAllListeners*(this: DownGameKeyEventHandler) =
        procCall DownGameKeyEventHandlerBase(this).removeAllListeners()
        block:
            var index: int32 = DownGameKeyEventHandler.instanceArray.length -% 1
            while index >= 0:
                defer: index = index -% 1
                DownGameKeyEventHandler.instanceArray[index].removeAllListeners()

method removeListenerSingleThreaded*(this: DownGameKeyEventHandler, eventListenerInterface: EventListenerInterface) =
        procCall DownGameKeyEventHandlerBase(this).removeListenerSingleThreaded(eventListenerInterface)
        block:
            var index: int32 = DownGameKeyEventHandler.instanceArray.length -% 1
            while index >= 0:
                defer: index = index -% 1
                DownGameKeyEventHandler.instanceArray[index].removeListenerSingleThreaded(eventListenerInterface)

method removeListener*(this: DownGameKeyEventHandler, eventListenerInterface: EventListenerInterface) =
        procCall DownGameKeyEventHandlerBase(this).removeListener(eventListenerInterface)
        block:
            var index: int32 = DownGameKeyEventHandler.instanceArray.length -% 1
            while index >= 0:
                defer: index = index -% 1
                DownGameKeyEventHandler.instanceArray[index].removeListener(eventListenerInterface)

when declared(newDownGameKeyEventHandlerHook0):
    newDownGameKeyEventHandlerHook0 = proc (): DownGameKeyEventHandlerBase = newDownGameKeyEventHandler()

