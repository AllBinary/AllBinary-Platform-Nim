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
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/game/input/PlayerGameInput as PlayerGameInputModule
export PlayerGameInputModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/logic/util/event/handler/BasicEventHandler as BasicEventHandlerModule
export BasicEventHandlerModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    UpKeyEventHandlerBase* = ref object of BasicEventHandler
        list*: BasicArrayList

proc newUpKeyEventHandlerBase*(): UpKeyEventHandlerBase
proc initUpKeyEventHandlerBase*(this: UpKeyEventHandlerBase)
method addListener*(this: UpKeyEventHandlerBase, playerGameInput: PlayerGameInput) {.base.}
method removeAllListeners*(this: UpKeyEventHandlerBase)
method removeListenerSingleThreaded*(this: UpKeyEventHandlerBase, eventListenerInterface: EventListenerInterface)
method removeListener*(this: UpKeyEventHandlerBase, eventListenerInterface: EventListenerInterface)
method fireEventForInteger*(this: UpKeyEventHandlerBase, eventObject: int32) {.base.}
method processForInteger*(this: UpKeyEventHandlerBase, eventObject: int32, eventListenerInterface: EventListenerInterface) {.base.}
method toString*(this: UpKeyEventHandlerBase): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/game/input/event/UpKeyEventListenerInterface as UpKeyEventListenerInterfaceModule
export UpKeyEventListenerInterfaceModule

var UpKeyEventHandlerBase_TOTAL_LISTENERSValue: string
var UpKeyEventHandlerBase_TOTAL_LISTENERSSet = false
proc TOTAL_LISTENERS*(t: typedesc[UpKeyEventHandlerBase]): string =
    if not UpKeyEventHandlerBase_TOTAL_LISTENERSSet:
        UpKeyEventHandlerBase_TOTAL_LISTENERSSet = true
        UpKeyEventHandlerBase_TOTAL_LISTENERSValue = " Total PlayerGameInput Listeners: "
    UpKeyEventHandlerBase_TOTAL_LISTENERSValue
var UpKeyEventHandlerBase_LISTENER_LABELValue: string
var UpKeyEventHandlerBase_LISTENER_LABELSet = false
proc LISTENER_LABEL*(t: typedesc[UpKeyEventHandlerBase]): string =
    if not UpKeyEventHandlerBase_LISTENER_LABELSet:
        UpKeyEventHandlerBase_LISTENER_LABELSet = true
        UpKeyEventHandlerBase_LISTENER_LABELValue = " PlayerGameInput Listener: "
    UpKeyEventHandlerBase_LISTENER_LABELValue

# Java field initializers run after the base initializer
proc initFieldsUpKeyEventHandlerBase(this: UpKeyEventHandlerBase) =
    this.list = newBasicArrayListD()
    discard

proc initUpKeyEventHandlerBase*(this: UpKeyEventHandlerBase) =
        initBasicEventHandler(this)
        this.initFieldsUpKeyEventHandlerBase()
        discard

proc newUpKeyEventHandlerBase*(): UpKeyEventHandlerBase =
    result = UpKeyEventHandlerBase()
    initUpKeyEventHandlerBase(result)

method addListener*(this: UpKeyEventHandlerBase, playerGameInput: PlayerGameInput) {.base.} =
        if (not this.list.contains(playerGameInput)):
            this.list.add(playerGameInput)

method removeAllListeners*(this: UpKeyEventHandlerBase) =
        this.list.clear()
        procCall BasicEventHandler(this).removeAllListeners()

method removeListenerSingleThreaded*(this: UpKeyEventHandlerBase, eventListenerInterface: EventListenerInterface) =
        this.list.remove(eventListenerInterface)
        procCall BasicEventHandler(this).removeListenerSingleThreaded(eventListenerInterface)

method removeListener*(this: UpKeyEventHandlerBase, eventListenerInterface: EventListenerInterface) =
        this.list.remove(eventListenerInterface)
        procCall BasicEventHandler(this).removeListener(eventListenerInterface)

method fireEventForInteger*(this: UpKeyEventHandlerBase, eventObject: int32) {.base.} =
        block:
            var index: int32 = this.list.size()
            while jPreDecrement(index) >= 0:
                try:
                    var playerGameInput: PlayerGameInput = PlayerGameInput(JObject(this.list.objectArray[index]))
                    playerGameInput.onUpKeyEvent(eventObject)
                except CatchableError as jcaught:
                    let e = jToException(jcaught)
                    this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
        var index: int32 = 0
        var eventListenerInterface: EventListenerInterface = nil
        while index < this.eventListenerInterfaceList.size():
            try:
                eventListenerInterface = EventListenerInterface(JObject(this.eventListenerInterfaceList.get(index)))
                this.processForInteger(eventObject, eventListenerInterface)
            except CatchableError as jcaught:
                let e = jToException(jcaught)
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
            index = index +% 1

method processForInteger*(this: UpKeyEventHandlerBase, eventObject: int32, eventListenerInterface: EventListenerInterface) {.base.} =
        let upKeyEventListenerInterface: UpKeyEventListenerInterface = UpKeyEventListenerInterface(JObject(eventListenerInterface))
        upKeyEventListenerInterface.onUpKeyEvent(eventObject)

method toString*(this: UpKeyEventHandlerBase): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(procCall BasicEventHandler(this).toString())
        stringBuffer.append(UpKeyEventHandlerBase.TOTAL_LISTENERS)
        stringBuffer.appendint(this.list.size())
        block:
            var index: int32 = 0
            while index < this.list.size():
                defer: index = index +% 1
                try:
                    var eventListenerInterface: EventListenerInterface = EventListenerInterface(JObject(this.list.get(index)))
                    stringBuffer.append(UpKeyEventHandlerBase.LISTENER_LABEL)
                    stringBuffer.append(eventListenerInterface.toString())
                except CatchableError as jcaught:
                    let e = jToException(jcaught)
                    this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.TOSTRING, e)
        return stringBuffer.toString()

when declared(newUpKeyEventHandlerBaseHook0):
    newUpKeyEventHandlerBaseHook0 = proc (): BasicEventHandler = newUpKeyEventHandlerBase()

