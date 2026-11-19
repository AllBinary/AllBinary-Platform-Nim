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
# package org.allbinary.android.input.motion.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/logic/util/event/handler/BasicEventHandler as BasicEventHandlerModule
export BasicEventHandlerModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/android/input/motion/event/AnalogControllerConfigurationEventListenerInterface as AnalogControllerConfigurationEventListenerInterfaceModule
export AnalogControllerConfigurationEventListenerInterfaceModule

type
    AnalogControllerConfigurationEventHandler* = ref object of BasicEventHandler
        list*: BasicArrayList

proc newAnalogControllerConfigurationEventHandler*(): AnalogControllerConfigurationEventHandler
proc initAnalogControllerConfigurationEventHandler*(this: AnalogControllerConfigurationEventHandler)
proc getInstance*(t: typedesc[AnalogControllerConfigurationEventHandler]): AnalogControllerConfigurationEventHandler {.discardable.}
method addListener*(this: AnalogControllerConfigurationEventHandler, analogControllerConfigurationEventListenerInterface: AnalogControllerConfigurationEventListenerInterface) {.base.}
method removeAllListeners*(this: AnalogControllerConfigurationEventHandler)
method removeListener*(this: AnalogControllerConfigurationEventHandler, eventListenerInterface: EventListenerInterface)
method fireEvent*(this: AnalogControllerConfigurationEventHandler, eventObject: AllBinaryEventObject)
method process*(this: AnalogControllerConfigurationEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/android/input/motion/event/AnalogControllerConfigurationEvent as AnalogControllerConfigurationEventModule
export AnalogControllerConfigurationEventModule

var AnalogControllerConfigurationEventHandler_instanceValue: AnalogControllerConfigurationEventHandler
var AnalogControllerConfigurationEventHandler_instanceSet = false
proc instance*(t: typedesc[AnalogControllerConfigurationEventHandler]): AnalogControllerConfigurationEventHandler =
    if not AnalogControllerConfigurationEventHandler_instanceSet:
        AnalogControllerConfigurationEventHandler_instanceSet = true
        AnalogControllerConfigurationEventHandler_instanceValue = newAnalogControllerConfigurationEventHandler()
    AnalogControllerConfigurationEventHandler_instanceValue

# Java field initializers run after the base initializer
proc initFieldsAnalogControllerConfigurationEventHandler(this: AnalogControllerConfigurationEventHandler) =
    this.list = newBasicArrayListD()
    discard

proc getInstance*(t: typedesc[AnalogControllerConfigurationEventHandler]): AnalogControllerConfigurationEventHandler {.discardable.} =
        return AnalogControllerConfigurationEventHandler.instance

proc initAnalogControllerConfigurationEventHandler*(this: AnalogControllerConfigurationEventHandler) =
        initBasicEventHandler(this)
        this.initFieldsAnalogControllerConfigurationEventHandler()
        discard

proc newAnalogControllerConfigurationEventHandler*(): AnalogControllerConfigurationEventHandler =
    result = AnalogControllerConfigurationEventHandler()
    initAnalogControllerConfigurationEventHandler(result)

method addListener*(this: AnalogControllerConfigurationEventHandler, analogControllerConfigurationEventListenerInterface: AnalogControllerConfigurationEventListenerInterface) {.base.} =
        if (not this.list.contains(analogControllerConfigurationEventListenerInterface)):
            this.list.add(analogControllerConfigurationEventListenerInterface)

method removeAllListeners*(this: AnalogControllerConfigurationEventHandler) =
        this.list.clear()
        jSuperStatement(procCall BasicEventHandler(this).removeAllListeners())

method removeListener*(this: AnalogControllerConfigurationEventHandler, eventListenerInterface: EventListenerInterface) =
        this.list.remove(eventListenerInterface)
        jSuperStatement(procCall BasicEventHandler(this).removeListener(eventListenerInterface))

method fireEvent*(this: AnalogControllerConfigurationEventHandler, eventObject: AllBinaryEventObject) =
        block:
            var index: int32 = this.list.size()
            while jPreDecrement(index) >= 0:
                try:
                    var playerGameInput: AnalogControllerConfigurationEventListenerInterface = AnalogControllerConfigurationEventListenerInterface(JObject(this.list.objectArray[index]))
                    playerGameInput.onAnalogControllerConfigurationEvent(AnalogControllerConfigurationEvent(JObject(eventObject)))
                except CatchableError as jcaught:
                    let e = jToException(jcaught)
                    this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
        jSuperStatement(procCall BasicEventHandler(this).fireEvent(eventObject))

method process*(this: AnalogControllerConfigurationEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let analogControllerConfigurationEventListenerInterface: AnalogControllerConfigurationEventListenerInterface = (AnalogControllerConfigurationEventListenerInterface(JObject(eventListenerInterface)))
        analogControllerConfigurationEventListenerInterface.onAnalogControllerConfigurationEvent(AnalogControllerConfigurationEvent(JObject(eventObject)))

when declared(newAnalogControllerConfigurationEventHandlerHook0):
    newAnalogControllerConfigurationEventHandlerHook0 = proc (): BasicEventHandler = newAnalogControllerConfigurationEventHandler()

