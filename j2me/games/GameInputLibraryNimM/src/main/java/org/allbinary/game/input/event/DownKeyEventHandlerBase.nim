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
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule

type
    DownKeyEventHandlerBase* = ref object of BasicEventHandler
        list*: BasicArrayList

proc newDownKeyEventHandlerBase*(): DownKeyEventHandlerBase
proc initDownKeyEventHandlerBase*(this: DownKeyEventHandlerBase)
method addListener*(this: DownKeyEventHandlerBase, playerGameInput: PlayerGameInput) {.base.}
method removeAllListeners*(this: DownKeyEventHandlerBase)
method removeListenerSingleThreaded*(this: DownKeyEventHandlerBase, eventListenerInterface: EventListenerInterface)
method removeListener*(this: DownKeyEventHandlerBase, eventListenerInterface: EventListenerInterface)
method fireEventI*(this: DownKeyEventHandlerBase, eventObject: int32) {.base.}
method fireEventForGameKeyEvent*(this: DownKeyEventHandlerBase, eventObject: GameKeyEvent) {.base.}
method processI*(this: DownKeyEventHandlerBase, eventObject: int32, eventListenerInterface: EventListenerInterface) {.base.}
method processEvent*(this: DownKeyEventHandlerBase, eventObject: GameKeyEvent, eventListenerInterface: EventListenerInterface) {.base.}
method toString*(this: DownKeyEventHandlerBase): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/game/input/event/DownKeyEventListenerInterface as DownKeyEventListenerInterfaceModule
export DownKeyEventListenerInterfaceModule

var DownKeyEventHandlerBase_TOTAL_LISTENERSValue: string
var DownKeyEventHandlerBase_TOTAL_LISTENERSSet = false
proc TOTAL_LISTENERS*(t: typedesc[DownKeyEventHandlerBase]): string =
    if not DownKeyEventHandlerBase_TOTAL_LISTENERSSet:
        DownKeyEventHandlerBase_TOTAL_LISTENERSSet = true
        DownKeyEventHandlerBase_TOTAL_LISTENERSValue = " Total PlayerGameInput Listeners: "
    DownKeyEventHandlerBase_TOTAL_LISTENERSValue
var DownKeyEventHandlerBase_LISTENER_LABELValue: string
var DownKeyEventHandlerBase_LISTENER_LABELSet = false
proc LISTENER_LABEL*(t: typedesc[DownKeyEventHandlerBase]): string =
    if not DownKeyEventHandlerBase_LISTENER_LABELSet:
        DownKeyEventHandlerBase_LISTENER_LABELSet = true
        DownKeyEventHandlerBase_LISTENER_LABELValue = " PlayerGameInput Listener: "
    DownKeyEventHandlerBase_LISTENER_LABELValue

# Java field initializers run after the base initializer
proc initFieldsDownKeyEventHandlerBase(this: DownKeyEventHandlerBase) =
    this.list = newBasicArrayListD()
    discard

proc initDownKeyEventHandlerBase*(this: DownKeyEventHandlerBase) =
        initBasicEventHandler(this)
        this.initFieldsDownKeyEventHandlerBase()
        discard

proc newDownKeyEventHandlerBase*(): DownKeyEventHandlerBase =
    result = DownKeyEventHandlerBase()
    initDownKeyEventHandlerBase(result)

method addListener*(this: DownKeyEventHandlerBase, playerGameInput: PlayerGameInput) {.base.} =
        if (not this.list.contains(playerGameInput)):
            this.list.add(playerGameInput)

method removeAllListeners*(this: DownKeyEventHandlerBase) =
        this.list.clear()
        jSuperStatement(procCall BasicEventHandler(this).removeAllListeners())

method removeListenerSingleThreaded*(this: DownKeyEventHandlerBase, eventListenerInterface: EventListenerInterface) =
        this.list.remove(eventListenerInterface)
        jSuperStatement(procCall BasicEventHandler(this).removeListenerSingleThreaded(eventListenerInterface))

method removeListener*(this: DownKeyEventHandlerBase, eventListenerInterface: EventListenerInterface) =
        this.list.remove(eventListenerInterface)
        jSuperStatement(procCall BasicEventHandler(this).removeListener(eventListenerInterface))

method fireEventI*(this: DownKeyEventHandlerBase, eventObject: int32) {.base.} =
        block:
            var index: int32 = this.list.size()
            while jPreDecrement(index) >= 0:
                try:
                    var playerGameInput: PlayerGameInput = PlayerGameInput(JObject(this.list.objectArray[index]))
                    playerGameInput.onDownKey(eventObject)
                except CatchableError as jcaught:
                    let e = jToException(jcaught)
                    this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
        var index: int32 = 0
        var eventListenerInterface: EventListenerInterface = nil
        while index < this.eventListenerInterfaceList.size():
            try:
                eventListenerInterface = EventListenerInterface(JObject(this.eventListenerInterfaceList.get(index)))
                this.processI(eventObject, eventListenerInterface)
            except CatchableError as jcaught:
                let e = jToException(jcaught)
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
            index = index +% 1

method fireEventForGameKeyEvent*(this: DownKeyEventHandlerBase, eventObject: GameKeyEvent) {.base.} =
        let size: int32 = this.list.size()
        block:
            var index: int32 = size
            while jPreDecrement(index) >= 0:
                try:
                    var playerGameInput: PlayerGameInput = PlayerGameInput(JObject(this.list.objectArray[index]))
                    playerGameInput.onDownKeyEvent(eventObject)
                except CatchableError as jcaught:
                    let e = jToException(jcaught)
                    this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
        var index: int32 = 0
        var eventListenerInterface: EventListenerInterface = nil
        while index < this.eventListenerInterfaceList.size():
            try:
                eventListenerInterface = EventListenerInterface(JObject(this.eventListenerInterfaceList.get(index)))
                this.processEvent(eventObject, eventListenerInterface)
            except CatchableError as jcaught:
                let e = jToException(jcaught)
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
            index = index +% 1

method processI*(this: DownKeyEventHandlerBase, eventObject: int32, eventListenerInterface: EventListenerInterface) {.base.} =
        let downKeyEventListenerInterface: DownKeyEventListenerInterface = DownKeyEventListenerInterface(JObject(eventListenerInterface))
        downKeyEventListenerInterface.onDownKey(eventObject)

method processEvent*(this: DownKeyEventHandlerBase, eventObject: GameKeyEvent, eventListenerInterface: EventListenerInterface) {.base.} =
        let downKeyEventListenerInterface: DownKeyEventListenerInterface = DownKeyEventListenerInterface(JObject(eventListenerInterface))
        downKeyEventListenerInterface.onDownKeyEvent(eventObject)

method toString*(this: DownKeyEventHandlerBase): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(procCall BasicEventHandler(this).toString())
        stringBuffer.append(DownKeyEventHandlerBase.TOTAL_LISTENERS)
        stringBuffer.appendint(this.list.size())
        var eventListenerInterface: EventListenerInterface = nil
        block:
            var index: int32 = 0
            while index < this.list.size():
                defer: index = index +% 1
                try:
                    eventListenerInterface = EventListenerInterface(JObject(this.list.get(index)))
                    stringBuffer.append(DownKeyEventHandlerBase.LISTENER_LABEL)
                    stringBuffer.append(eventListenerInterface.toString())
                except CatchableError as jcaught:
                    let e = jToException(jcaught)
                    this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.TOSTRING, e)
        return stringBuffer.toString()

when declared(newDownKeyEventHandlerBaseHook0):
    newDownKeyEventHandlerBaseHook0 = proc (): BasicEventHandler = newDownKeyEventHandlerBase()

