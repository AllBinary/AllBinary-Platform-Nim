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
    DownGameKeyEventHandlerBase* = ref object of BasicEventHandler
        list*: BasicArrayList

proc newDownGameKeyEventHandlerBase*(): DownGameKeyEventHandlerBase
proc initDownGameKeyEventHandlerBase*(this: DownGameKeyEventHandlerBase)
method addListener*(this: DownGameKeyEventHandlerBase, playerGameInput: PlayerGameInput) {.base.}
method removeAllListeners*(this: DownGameKeyEventHandlerBase)
method removeListenerSingleThreaded*(this: DownGameKeyEventHandlerBase, eventListenerInterface: EventListenerInterface)
method removeListener*(this: DownGameKeyEventHandlerBase, eventListenerInterface: EventListenerInterface)
method fireEvent*(this: DownGameKeyEventHandlerBase, eventObject: AllBinaryEventObject)
method process*(this: DownGameKeyEventHandlerBase, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
method toString*(this: DownGameKeyEventHandlerBase): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/game/input/event/DownGameKeyEventListenerInterface as DownGameKeyEventListenerInterfaceModule
export DownGameKeyEventListenerInterfaceModule

var DownGameKeyEventHandlerBase_TOTAL_LISTENERSValue: string
var DownGameKeyEventHandlerBase_TOTAL_LISTENERSSet = false
proc TOTAL_LISTENERS*(t: typedesc[DownGameKeyEventHandlerBase]): string =
    if not DownGameKeyEventHandlerBase_TOTAL_LISTENERSSet:
        DownGameKeyEventHandlerBase_TOTAL_LISTENERSSet = true
        DownGameKeyEventHandlerBase_TOTAL_LISTENERSValue = " Total PlayerGameInput Listeners: "
    DownGameKeyEventHandlerBase_TOTAL_LISTENERSValue
var DownGameKeyEventHandlerBase_LISTENER_LABELValue: string
var DownGameKeyEventHandlerBase_LISTENER_LABELSet = false
proc LISTENER_LABEL*(t: typedesc[DownGameKeyEventHandlerBase]): string =
    if not DownGameKeyEventHandlerBase_LISTENER_LABELSet:
        DownGameKeyEventHandlerBase_LISTENER_LABELSet = true
        DownGameKeyEventHandlerBase_LISTENER_LABELValue = " PlayerGameInput Listener: "
    DownGameKeyEventHandlerBase_LISTENER_LABELValue

# Java field initializers run after the base initializer
proc initFieldsDownGameKeyEventHandlerBase(this: DownGameKeyEventHandlerBase) =
    this.list = newBasicArrayListD()
    discard

proc initDownGameKeyEventHandlerBase*(this: DownGameKeyEventHandlerBase) =
        initBasicEventHandler(this)
        this.initFieldsDownGameKeyEventHandlerBase()
        discard

proc newDownGameKeyEventHandlerBase*(): DownGameKeyEventHandlerBase =
    result = DownGameKeyEventHandlerBase()
    initDownGameKeyEventHandlerBase(result)

method addListener*(this: DownGameKeyEventHandlerBase, playerGameInput: PlayerGameInput) {.base.} =
        if (not this.list.contains(playerGameInput)):
            this.list.add(playerGameInput)

method removeAllListeners*(this: DownGameKeyEventHandlerBase) =
        this.list.clear()
        jSuperStatement(procCall BasicEventHandler(this).removeAllListeners())

method removeListenerSingleThreaded*(this: DownGameKeyEventHandlerBase, eventListenerInterface: EventListenerInterface) =
        this.list.remove(eventListenerInterface)
        jSuperStatement(procCall BasicEventHandler(this).removeListenerSingleThreaded(eventListenerInterface))

method removeListener*(this: DownGameKeyEventHandlerBase, eventListenerInterface: EventListenerInterface) =
        this.list.remove(eventListenerInterface)
        jSuperStatement(procCall BasicEventHandler(this).removeListener(eventListenerInterface))

method fireEvent*(this: DownGameKeyEventHandlerBase, eventObject: AllBinaryEventObject) =
        block:
            var index: int32 = this.list.size()
            while jPreDecrement(index) >= 0:
                try:
                    var playerGameInput: PlayerGameInput = PlayerGameInput(JObject(this.list.objectArray[index]))
                    playerGameInput.onDownGameKeyEvent(GameKeyEvent(JObject(eventObject)))
                except CatchableError as jcaught:
                    let e = jToException(jcaught)
                    this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
        jSuperStatement(procCall BasicEventHandler(this).fireEvent(eventObject))

method process*(this: DownGameKeyEventHandlerBase, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let downGameKeyEventListenerInterface: DownGameKeyEventListenerInterface = DownGameKeyEventListenerInterface(JObject(eventListenerInterface))
        downGameKeyEventListenerInterface.onDownGameKeyEvent(GameKeyEvent(JObject(eventObject)))

method toString*(this: DownGameKeyEventHandlerBase): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(procCall BasicEventHandler(this).toString())
        stringBuffer.append(DownGameKeyEventHandlerBase.TOTAL_LISTENERS)
        stringBuffer.appendint(this.list.size())
        var eventListenerInterface: EventListenerInterface = nil
        let size: int32 = this.list.size()
        var index: int32 = 0
        while index < size:
            try:
                eventListenerInterface = EventListenerInterface(JObject(this.list.get(index)))
                stringBuffer.append(DownGameKeyEventHandlerBase.LISTENER_LABEL)
                stringBuffer.append(eventListenerInterface.toString())
            except CatchableError as jcaught:
                let e = jToException(jcaught)
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.TOSTRING, e)
            index = index +% 1
        return stringBuffer.toString()

when declared(newDownGameKeyEventHandlerBaseHook0):
    newDownGameKeyEventHandlerBaseHook0 = proc (): BasicEventHandler = newDownGameKeyEventHandlerBase()

