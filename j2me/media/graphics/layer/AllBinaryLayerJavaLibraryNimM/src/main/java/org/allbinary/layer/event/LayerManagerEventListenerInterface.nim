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
# package org.allbinary.layer.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/layer/event/LayerManagerEvent as LayerManagerEventModule
export LayerManagerEventModule

type
    LayerManagerEventListenerInterface* = ref object of EventListenerInterface


method onCreateLayerManagerEvent*(this: LayerManagerEventListenerInterface, layerManagerEvent: LayerManagerEvent) {.base.} =
        raise newJException("AbstractMethodError", "onCreateLayerManagerEvent")

method onDeleteLayerManagerEvent*(this: LayerManagerEventListenerInterface, layerManagerEvent: LayerManagerEvent) {.base.} =
        raise newJException("AbstractMethodError", "onDeleteLayerManagerEvent")

