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
# package org.allbinary.view.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/view/event/ViewPositionEvent as ViewPositionEventModule
export ViewPositionEventModule

type
    ViewPositionEventListenerInterface* = ref object of EventListenerInterface


method onChangeEvent*(this: ViewPositionEventListenerInterface, layerManagerEvent: ViewPositionEvent) {.base.} =
        raise newJException("AbstractMethodError", "onChangeEvent")

