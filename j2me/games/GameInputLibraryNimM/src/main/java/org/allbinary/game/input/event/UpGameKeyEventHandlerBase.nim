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
    UpGameKeyEventHandlerBase* = ref object of BasicEventHandler
        list*: BasicArrayList

proc newUpGameKeyEventHandlerBase*(): UpGameKeyEventHandlerBase
proc initUpGameKeyEventHandlerBase*(this: UpGameKeyEventHandlerBase)
method addListener*(this: UpGameKeyEventHandlerBase, playerGameInput: PlayerGameInput) {.base.}
method removeAllListeners*(this: UpGameKeyEventHandlerBase)
method removeListenerSingleThreaded*(this: UpGameKeyEventHandlerBase, eventListenerInterface: EventListenerInterface)
method removeListener*(this: UpGameKeyEventHandlerBase, eventListenerInterface: EventListenerInterface)
method fireEvent*(this: UpGameKeyEventHandlerBase, eventObject: AllBinaryEventObject)
method process*(this: UpGameKeyEventHandlerBase, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
method toString*(this: UpGameKeyEventHandlerBase): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/game/input/event/UpGameKeyEventListenerInterface as UpGameKeyEventListenerInterfaceModule
export UpGameKeyEventListenerInterfaceModule

var UpGameKeyEventHandlerBase_TOTAL_LISTENERSValue: string
var UpGameKeyEventHandlerBase_TOTAL_LISTENERSSet = false
proc TOTAL_LISTENERS*(t: typedesc[UpGameKeyEventHandlerBase]): string =
    if not UpGameKeyEventHandlerBase_TOTAL_LISTENERSSet:
        UpGameKeyEventHandlerBase_TOTAL_LISTENERSSet = true
        UpGameKeyEventHandlerBase_TOTAL_LISTENERSValue = " Total PlayerGameInput Listeners: "
    UpGameKeyEventHandlerBase_TOTAL_LISTENERSValue
var UpGameKeyEventHandlerBase_LISTENER_LABELValue: string
var UpGameKeyEventHandlerBase_LISTENER_LABELSet = false
proc LISTENER_LABEL*(t: typedesc[UpGameKeyEventHandlerBase]): string =
    if not UpGameKeyEventHandlerBase_LISTENER_LABELSet:
        UpGameKeyEventHandlerBase_LISTENER_LABELSet = true
        UpGameKeyEventHandlerBase_LISTENER_LABELValue = " PlayerGameInput Listener: "
    UpGameKeyEventHandlerBase_LISTENER_LABELValue

# Java field initializers run after the base initializer
proc initFieldsUpGameKeyEventHandlerBase(this: UpGameKeyEventHandlerBase) =
    this.list = newBasicArrayListD()
    discard

proc initUpGameKeyEventHandlerBase*(this: UpGameKeyEventHandlerBase) =
        initBasicEventHandler(this)
        this.initFieldsUpGameKeyEventHandlerBase()
        discard

proc newUpGameKeyEventHandlerBase*(): UpGameKeyEventHandlerBase =
    result = UpGameKeyEventHandlerBase()
    initUpGameKeyEventHandlerBase(result)

method addListener*(this: UpGameKeyEventHandlerBase, playerGameInput: PlayerGameInput) {.base.} =
        if (not this.list.contains(playerGameInput)):
            this.list.add(playerGameInput)

method removeAllListeners*(this: UpGameKeyEventHandlerBase) =
        this.list.clear()
        jSuperStatement(procCall BasicEventHandler(this).removeAllListeners())

method removeListenerSingleThreaded*(this: UpGameKeyEventHandlerBase, eventListenerInterface: EventListenerInterface) =
        this.list.remove(eventListenerInterface)
        jSuperStatement(procCall BasicEventHandler(this).removeListenerSingleThreaded(eventListenerInterface))

method removeListener*(this: UpGameKeyEventHandlerBase, eventListenerInterface: EventListenerInterface) =
        this.list.remove(eventListenerInterface)
        jSuperStatement(procCall BasicEventHandler(this).removeListener(eventListenerInterface))

method fireEvent*(this: UpGameKeyEventHandlerBase, eventObject: AllBinaryEventObject) =
        block:
            var index: int32 = this.list.size()
            while jPreDecrement(index) >= 0:
                try:
                    var playerGameInput: PlayerGameInput = PlayerGameInput(JObject(this.list.objectArray[index]))
                    playerGameInput.onUpGameKeyEvent(GameKeyEvent(JObject(eventObject)))
                except CatchableError as jcaught:
                    let e = jToException(jcaught)
                    this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
        jSuperStatement(procCall BasicEventHandler(this).fireEvent(eventObject))

method process*(this: UpGameKeyEventHandlerBase, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let upGameKeyEventListenerInterface: UpGameKeyEventListenerInterface = UpGameKeyEventListenerInterface(JObject(eventListenerInterface))
        upGameKeyEventListenerInterface.onUpGameKeyEvent(GameKeyEvent(JObject(eventObject)))

method toString*(this: UpGameKeyEventHandlerBase): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        let size: int32 = this.list.size()
        stringBuffer.append(procCall BasicEventHandler(this).toString())
        stringBuffer.append(UpGameKeyEventHandlerBase.TOTAL_LISTENERS)
        stringBuffer.appendint(size)
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                try:
                    var eventListenerInterface: EventListenerInterface = EventListenerInterface(JObject(this.list.get(index)))
                    stringBuffer.append(UpGameKeyEventHandlerBase.LISTENER_LABEL)
                    stringBuffer.append(eventListenerInterface.toString())
                except CatchableError as jcaught:
                    let e = jToException(jcaught)
                    this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.TOSTRING, e)
        return stringBuffer.toString()

when declared(newUpGameKeyEventHandlerBaseHook0):
    newUpGameKeyEventHandlerBaseHook0 = proc (): BasicEventHandler = newUpGameKeyEventHandlerBase()

