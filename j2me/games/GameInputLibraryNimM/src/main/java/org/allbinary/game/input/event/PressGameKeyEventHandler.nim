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
import org/allbinary/game/input/PlayerGameInput as PlayerGameInputModule
export PlayerGameInputModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/logic/util/event/handler/BasicEventHandler as BasicEventHandlerModule
export BasicEventHandlerModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    PressGameKeyEventHandler* = ref object of BasicEventHandler
        list*: BasicArrayList

proc newPressGameKeyEventHandler*(): PressGameKeyEventHandler
proc initPressGameKeyEventHandler*(this: PressGameKeyEventHandler)
proc getInstance*(t: typedesc[PressGameKeyEventHandler]): PressGameKeyEventHandler {.discardable.}
method addListener*(this: PressGameKeyEventHandler, playerGameInput: PlayerGameInput) {.base.}
method removeAllListeners*(this: PressGameKeyEventHandler)
method removeListener*(this: PressGameKeyEventHandler, eventListenerInterface: EventListenerInterface)
method fireEvent*(this: PressGameKeyEventHandler, eventObject: AllBinaryEventObject)
method process*(this: PressGameKeyEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/game/input/event/PressGameKeyEventListenerInterface as PressGameKeyEventListenerInterfaceModule
export PressGameKeyEventListenerInterfaceModule

var PressGameKeyEventHandler_instanceValue: PressGameKeyEventHandler
var PressGameKeyEventHandler_instanceSet = false
proc instance*(t: typedesc[PressGameKeyEventHandler]): PressGameKeyEventHandler =
    if not PressGameKeyEventHandler_instanceSet:
        PressGameKeyEventHandler_instanceSet = true
        PressGameKeyEventHandler_instanceValue = newPressGameKeyEventHandler()
    PressGameKeyEventHandler_instanceValue

# Java field initializers run after the base initializer
proc initFieldsPressGameKeyEventHandler(this: PressGameKeyEventHandler) =
    this.list = newBasicArrayListD()
    discard

proc getInstance*(t: typedesc[PressGameKeyEventHandler]): PressGameKeyEventHandler {.discardable.} =
        return PressGameKeyEventHandler.instance

proc initPressGameKeyEventHandler*(this: PressGameKeyEventHandler) =
        initBasicEventHandler(this)
        this.initFieldsPressGameKeyEventHandler()
        discard

proc newPressGameKeyEventHandler*(): PressGameKeyEventHandler =
    result = PressGameKeyEventHandler()
    initPressGameKeyEventHandler(result)

method addListener*(this: PressGameKeyEventHandler, playerGameInput: PlayerGameInput) {.base.} =
        if (not this.list.contains(playerGameInput)):
            this.list.add(playerGameInput)

method removeAllListeners*(this: PressGameKeyEventHandler) =
        this.list.clear()
        jSuperStatement(procCall BasicEventHandler(this).removeAllListeners())

method removeListener*(this: PressGameKeyEventHandler, eventListenerInterface: EventListenerInterface) =
        this.list.remove(eventListenerInterface)
        jSuperStatement(procCall BasicEventHandler(this).removeListener(eventListenerInterface))

method fireEvent*(this: PressGameKeyEventHandler, eventObject: AllBinaryEventObject) =
        block:
            var index: int32 = this.list.size()
            while jPreDecrement(index) >= 0:
                try:
                    var playerGameInput: PlayerGameInput = PlayerGameInput(JObject(this.list.objectArray[index]))
                    playerGameInput.onPressGameKeyEvent(GameKeyEvent(JObject(eventObject)))
                except CatchableError as jcaught:
                    let e = jToException(jcaught)
                    this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
        jSuperStatement(procCall BasicEventHandler(this).fireEvent(eventObject))

method process*(this: PressGameKeyEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let pressGameKeyEventListenerInterface: PressGameKeyEventListenerInterface = (PressGameKeyEventListenerInterface(JObject(eventListenerInterface)))
        pressGameKeyEventListenerInterface.onPressGameKeyEvent(GameKeyEvent(JObject(eventObject)))

when declared(newPressGameKeyEventHandlerHook0):
    newPressGameKeyEventHandlerHook0 = proc (): BasicEventHandler = newPressGameKeyEventHandler()

