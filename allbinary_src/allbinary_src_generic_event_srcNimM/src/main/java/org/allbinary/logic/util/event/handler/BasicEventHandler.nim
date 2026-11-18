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
# package org.allbinary.logic.util.event.handler

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/logic/util/event/handler/BasicEventHandlerInterface as BasicEventHandlerInterfaceModule
export BasicEventHandlerInterfaceModule

type
    BasicEventHandler* = ref object of BasicEventHandlerInterface
        logUtil*: LogUtil
        eventListenerInterfaceList*: BasicArrayList

proc newBasicEventHandler*(): BasicEventHandler
proc initBasicEventHandler*(this: BasicEventHandler)
method toString*(this: BasicEventHandler): string {.discardable.}
method removeAllListeners*(this: BasicEventHandler)
method addListenerSingleThreaded*(this: BasicEventHandler, eventListenerInterface: EventListenerInterface) {.base.}
method addListenerInterface*(this: BasicEventHandler, eventListenerInterface: EventListenerInterface)
method removeListenerSingleThreaded*(this: BasicEventHandler, eventListenerInterface: EventListenerInterface) {.base.}
method removeListener*(this: BasicEventHandler, eventListenerInterface: EventListenerInterface)
method fireEvent*(this: BasicEventHandler, eventObject: AllBinaryEventObject)
method process*(this: BasicEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) {.base.}
method getEventListenerInterfaceListP*(this: BasicEventHandler): BasicArrayList {.base, discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var BasicEventHandler_PERFORMANCE_MESSAGEValue: string
var BasicEventHandler_PERFORMANCE_MESSAGESet = false
proc PERFORMANCE_MESSAGE*(t: typedesc[BasicEventHandler]): string =
    if not BasicEventHandler_PERFORMANCE_MESSAGESet:
        BasicEventHandler_PERFORMANCE_MESSAGESet = true
        BasicEventHandler_PERFORMANCE_MESSAGEValue = "Use Custom onEvent Methods for needed optimization"
    BasicEventHandler_PERFORMANCE_MESSAGEValue

# Java field initializers run after the base initializer
proc initFieldsBasicEventHandler(this: BasicEventHandler) =
    this.logUtil = LogUtil.getInstance()
    
    discard

proc initBasicEventHandler*(this: BasicEventHandler) =
        this.initFieldsBasicEventHandler()
        this.eventListenerInterfaceList = newBasicArrayListD()

proc newBasicEventHandler*(): BasicEventHandler =
    result = BasicEventHandler()
    initBasicEventHandler(result)

method toString*(this: BasicEventHandler): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        let LISTENER: string = " Listener: "
        stringBuffer.append("Total Listeners: ")
        stringBuffer.appendint(this.eventListenerInterfaceList.size())
        var eventListenerInterface: EventListenerInterface = nil
        var index: int32 = 0
        while index < this.eventListenerInterfaceList.size():
            try:
                eventListenerInterface = EventListenerInterface(JObject(this.eventListenerInterfaceList.objectArray[index]))
                stringBuffer.append(LISTENER)
                stringBuffer.append(StringUtil.getInstance().toString(eventListenerInterface))
            except CatchableError as jcaught:
                let e = jToException(jcaught)
                let commonStrings: CommonStrings = CommonStrings.getInstance()
                this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.TOSTRING, e)
            index = index +% 1
        return stringBuffer.toString()

method removeAllListeners*(this: BasicEventHandler) =
        this.eventListenerInterfaceList = newBasicArrayListD()

method addListenerSingleThreaded*(this: BasicEventHandler, eventListenerInterface: EventListenerInterface) {.base.} =
        if (not this.eventListenerInterfaceList.contains(eventListenerInterface)):
            this.eventListenerInterfaceList.add(eventListenerInterface)

method addListenerInterface*(this: BasicEventHandler, eventListenerInterface: EventListenerInterface) =
        if (not this.eventListenerInterfaceList.contains(eventListenerInterface)):
            this.eventListenerInterfaceList.add(eventListenerInterface)

method removeListenerSingleThreaded*(this: BasicEventHandler, eventListenerInterface: EventListenerInterface) {.base.} =
        this.eventListenerInterfaceList.remove(eventListenerInterface)

method removeListener*(this: BasicEventHandler, eventListenerInterface: EventListenerInterface) =
        this.eventListenerInterfaceList.remove(eventListenerInterface)

method fireEvent*(this: BasicEventHandler, eventObject: AllBinaryEventObject) =
        var index: int32 = 0
        var eventListenerInterface: EventListenerInterface = nil
        while index < this.eventListenerInterfaceList.size():
            try:
                eventListenerInterface = EventListenerInterface(JObject(this.eventListenerInterfaceList.objectArray[index]))
                this.process(eventObject, eventListenerInterface)
            except CatchableError as jcaught:
                let e = jToException(jcaught)
                let commonStrings: CommonStrings = CommonStrings.getInstance()
                this.logUtil.put(commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
            index = index +% 1

method process*(this: BasicEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) {.base.} =
        eventListenerInterface.onEvent(eventObject)

method getEventListenerInterfaceListP*(this: BasicEventHandler): BasicArrayList {.base, discardable.} =
        return this.eventListenerInterfaceList

