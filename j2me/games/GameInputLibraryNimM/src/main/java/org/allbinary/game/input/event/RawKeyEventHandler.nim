#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
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
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/input/event/RawKeyEventListener as RawKeyEventListenerModule
export RawKeyEventListenerModule

type
    RawKeyEventHandler* = ref object of JObject
        logUtil*: LogUtil
        eventListenerInterfaceList*: BasicArrayList

proc newRawKeyEventHandler*(): RawKeyEventHandler
proc initRawKeyEventHandler*(this: RawKeyEventHandler)
proc getInstance*(t: typedesc[RawKeyEventHandler]): RawKeyEventHandler {.discardable.}
method removeAllListeners*(this: RawKeyEventHandler) {.base.}
method addListeners*(this: RawKeyEventHandler, vector: BasicArrayList) {.base.}
method addListenerSingleThreaded*(this: RawKeyEventHandler, eventListenerInterface: RawKeyEventListener) {.base.}
method addListener*(this: RawKeyEventHandler, eventListenerInterface: RawKeyEventListener) {.base.}
method removeListenerSingleThreaded*(this: RawKeyEventHandler, eventListenerInterface: RawKeyEventListener) {.base.}
method removeListener*(this: RawKeyEventHandler, eventListenerInterface: RawKeyEventListener) {.base.}
method fireEvent*(this: RawKeyEventHandler, keyCode: int32, deviceId: int32, repeated: bool) {.base.}
method process*(this: RawKeyEventHandler, keyCode: int32, deviceId: int32, repeated: bool, eventListenerInterface: RawKeyEventListener) {.base.}
method getEventListenerInterfaceListP*(this: RawKeyEventHandler): BasicArrayList {.base, discardable.}
method toString*(this: RawKeyEventHandler): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var RawKeyEventHandler_instanceValue: RawKeyEventHandler
var RawKeyEventHandler_instanceSet = false
proc instance*(t: typedesc[RawKeyEventHandler]): RawKeyEventHandler =
    if not RawKeyEventHandler_instanceSet:
        RawKeyEventHandler_instanceSet = true
        RawKeyEventHandler_instanceValue = newRawKeyEventHandler()
    RawKeyEventHandler_instanceValue
var RawKeyEventHandler_TOTAL_LISTENERSValue: string
var RawKeyEventHandler_TOTAL_LISTENERSSet = false
proc TOTAL_LISTENERS*(t: typedesc[RawKeyEventHandler]): string =
    if not RawKeyEventHandler_TOTAL_LISTENERSSet:
        RawKeyEventHandler_TOTAL_LISTENERSSet = true
        RawKeyEventHandler_TOTAL_LISTENERSValue = "Total Listeners: "
    RawKeyEventHandler_TOTAL_LISTENERSValue
var RawKeyEventHandler_LISTENER_LABELValue: string
var RawKeyEventHandler_LISTENER_LABELSet = false
proc LISTENER_LABEL*(t: typedesc[RawKeyEventHandler]): string =
    if not RawKeyEventHandler_LISTENER_LABELSet:
        RawKeyEventHandler_LISTENER_LABELSet = true
        RawKeyEventHandler_LISTENER_LABELValue = " Listener: "
    RawKeyEventHandler_LISTENER_LABELValue

# Java field initializers run after the base initializer
proc initFieldsRawKeyEventHandler(this: RawKeyEventHandler) =
    this.logUtil = LogUtil.getInstance()
    
    discard

proc getInstance*(t: typedesc[RawKeyEventHandler]): RawKeyEventHandler {.discardable.} =
        return RawKeyEventHandler.instance

proc initRawKeyEventHandler*(this: RawKeyEventHandler) =
        this.initFieldsRawKeyEventHandler()
        this.eventListenerInterfaceList = newBasicArrayListD()

proc newRawKeyEventHandler*(): RawKeyEventHandler =
    result = RawKeyEventHandler()
    initRawKeyEventHandler(result)

method removeAllListeners*(this: RawKeyEventHandler) {.base.} =
        this.eventListenerInterfaceList = newBasicArrayListD()

method addListeners*(this: RawKeyEventHandler, vector: BasicArrayList) {.base.} =
        var eventListenerInterface: RawKeyEventListener = nil
        let size: int32 = vector.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                eventListenerInterface = RawKeyEventListener(JObject(vector.get(index)))
                this.addListener(eventListenerInterface)

method addListenerSingleThreaded*(this: RawKeyEventHandler, eventListenerInterface: RawKeyEventListener) {.base.} =
        if (not this.eventListenerInterfaceList.contains(eventListenerInterface)):
            this.eventListenerInterfaceList.add(eventListenerInterface)

method addListener*(this: RawKeyEventHandler, eventListenerInterface: RawKeyEventListener) {.base.} =
        if (not this.eventListenerInterfaceList.contains(eventListenerInterface)):
            this.eventListenerInterfaceList.add(eventListenerInterface)

method removeListenerSingleThreaded*(this: RawKeyEventHandler, eventListenerInterface: RawKeyEventListener) {.base.} =
        this.eventListenerInterfaceList.remove(eventListenerInterface)

method removeListener*(this: RawKeyEventHandler, eventListenerInterface: RawKeyEventListener) {.base.} =
        this.eventListenerInterfaceList.remove(eventListenerInterface)

method fireEvent*(this: RawKeyEventHandler, keyCode: int32, deviceId: int32, repeated: bool) {.base.} =
        var eventListenerInterface: RawKeyEventListener = nil
        var index: int32 = 0
        while index < this.eventListenerInterfaceList.size():
            try:
                eventListenerInterface = RawKeyEventListener(JObject(this.eventListenerInterfaceList.get(index)))
                this.process(keyCode, deviceId, repeated, eventListenerInterface)
            except CatchableError as jcaught:
                let e = jToException(jcaught)
                let commonStrings: CommonStrings = CommonStrings.getInstance()
                this.logUtil.put(commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
            index = index +% 1

method process*(this: RawKeyEventHandler, keyCode: int32, deviceId: int32, repeated: bool, eventListenerInterface: RawKeyEventListener) {.base.} =
        eventListenerInterface.onEventRaw(keyCode, deviceId, repeated)

method getEventListenerInterfaceListP*(this: RawKeyEventHandler): BasicArrayList {.base, discardable.} =
        return this.eventListenerInterfaceList

method toString*(this: RawKeyEventHandler): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(RawKeyEventHandler.TOTAL_LISTENERS)
        stringBuffer.appendint(this.eventListenerInterfaceList.size())
        var eventListenerInterface: RawKeyEventListener = nil
        var index: int32 = 0
        while index < this.eventListenerInterfaceList.size():
            try:
                eventListenerInterface = RawKeyEventListener(JObject(this.eventListenerInterfaceList.get(index)))
                stringBuffer.append(RawKeyEventHandler.LISTENER_LABEL)
                stringBuffer.append(eventListenerInterface.toString())
            except CatchableError as jcaught:
                let e = jToException(jcaught)
                let commonStrings: CommonStrings = CommonStrings.getInstance()
                this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.TOSTRING, e)
            index = index +% 1
        return stringBuffer.toString()

