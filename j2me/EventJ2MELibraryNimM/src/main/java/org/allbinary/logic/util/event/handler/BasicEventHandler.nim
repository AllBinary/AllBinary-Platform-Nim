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
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/logic/util/event/handler/BasicEventHandlerInterface as BasicEventHandlerInterfaceModule
export BasicEventHandlerInterfaceModule

type
    BasicEventHandler* = ref object of BasicEventHandlerInterface
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        eventStrings*: EventStrings
        eventListenerInterfaceList*: BasicArrayList

proc newBasicEventHandler*(): BasicEventHandler
proc initBasicEventHandler*(this: BasicEventHandler)
method removeAllListeners*(this: BasicEventHandler)
method addListeners*(this: BasicEventHandler, vector: BasicArrayList)
method removeListeners*(this: BasicEventHandler, vector: BasicArrayList) {.base.}
method addListenerSingleThreaded*(this: BasicEventHandler, eventListenerInterface: EventListenerInterface) {.base.}
method addListenerInterface*(this: BasicEventHandler, eventListenerInterface: EventListenerInterface)
method removeListenerSingleThreaded*(this: BasicEventHandler, eventListenerInterface: EventListenerInterface) {.base.}
method removeListener*(this: BasicEventHandler, eventListenerInterface: EventListenerInterface)
method fireEvent*(this: BasicEventHandler, eventObject: AllBinaryEventObject)
method process*(this: BasicEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) {.base.}
method getEventListenerInterfaceListP*(this: BasicEventHandler): BasicArrayList {.base, discardable.}
method toString*(this: BasicEventHandler): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsBasicEventHandler(this: BasicEventHandler) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.eventStrings = EventStrings.getInstance()
    
    discard

proc initBasicEventHandler*(this: BasicEventHandler) =
        this.initFieldsBasicEventHandler()
        this.eventListenerInterfaceList = newBasicArrayListD()

proc newBasicEventHandler*(): BasicEventHandler =
    result = BasicEventHandler()
    initBasicEventHandler(result)

method removeAllListeners*(this: BasicEventHandler) =
        this.eventListenerInterfaceList = newBasicArrayListD()

method addListeners*(this: BasicEventHandler, vector: BasicArrayList) =
        var eventListenerInterface: EventListenerInterface = nil
        let size: int32 = vector.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                eventListenerInterface = EventListenerInterface(vector.get(index))
                this.addListenerInterface(eventListenerInterface)

method removeListeners*(this: BasicEventHandler, vector: BasicArrayList) {.base.} =
        var eventListenerInterface: EventListenerInterface = nil
        let size: int32 = vector.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                eventListenerInterface = EventListenerInterface(vector.get(index))
                this.removeListener(eventListenerInterface)

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
        var eventListenerInterface: EventListenerInterface = nil
        var index: int32 = 0
        while index < this.eventListenerInterfaceList.size():
            try:
                eventListenerInterface = EventListenerInterface(this.eventListenerInterfaceList.get(index))
                this.process(eventObject, eventListenerInterface)
            except CatchableError as jcaught:
                let e = jToException(jcaught)
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.eventStrings.FIRE_EVENT, e)
            index = index +% 1

method process*(this: BasicEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) {.base.} =
        eventListenerInterface.onEvent(eventObject)

method getEventListenerInterfaceListP*(this: BasicEventHandler): BasicArrayList {.base, discardable.} =
        return this.eventListenerInterfaceList

method toString*(this: BasicEventHandler): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(this.eventStrings.TOTAL_LISTENERS)
        stringBuffer.appendint(this.eventListenerInterfaceList.size())
        var eventListenerInterface: EventListenerInterface = nil
        var index: int32 = 0
        while index < this.eventListenerInterfaceList.size():
            try:
                eventListenerInterface = EventListenerInterface(this.eventListenerInterfaceList.get(index))
                stringBuffer.append(this.eventStrings.LISTENER_LABEL)
                stringBuffer.append(eventListenerInterface.toString())
            except CatchableError as jcaught:
                let e = jToException(jcaught)
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.TOSTRING, e)
            index = index +% 1
        return stringBuffer.toString()

