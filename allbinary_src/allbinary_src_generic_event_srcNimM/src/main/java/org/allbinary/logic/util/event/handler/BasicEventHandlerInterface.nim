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
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule

type
    BasicEventHandlerInterface* = ref object of JObject


method addListenerInterface*(this: BasicEventHandlerInterface, eventListenerInterface: EventListenerInterface) {.base.} =
        raise newJException("AbstractMethodError", "addListenerInterface")

method fireEvent*(this: BasicEventHandlerInterface, eventObject: AllBinaryEventObject) {.base.} =
        raise newJException("AbstractMethodError", "fireEvent")

method removeAllListeners*(this: BasicEventHandlerInterface) {.base.} =
        raise newJException("AbstractMethodError", "removeAllListeners")

method removeListener*(this: BasicEventHandlerInterface, eventListenerInterface: EventListenerInterface) {.base.} =
        raise newJException("AbstractMethodError", "removeListener")

