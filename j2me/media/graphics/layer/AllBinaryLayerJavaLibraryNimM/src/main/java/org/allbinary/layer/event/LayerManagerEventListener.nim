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
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/layer/event/LayerManagerEventListenerInterface as LayerManagerEventListenerInterfaceModule
export LayerManagerEventListenerInterfaceModule
import org/allbinary/layer/event/LayerManagerEvent as LayerManagerEventModule
export LayerManagerEventModule

type
    LayerManagerEventListener* = ref object of LayerManagerEventListenerInterface

proc newLayerManagerEventListener*(): LayerManagerEventListener
method onEvent*(this: LayerManagerEventListener, eventObject: AllBinaryEventObject)
method onCreateLayerManagerEvent*(this: LayerManagerEventListener, layerManagerEvent: LayerManagerEvent)
method onDeleteLayerManagerEvent*(this: LayerManagerEventListener, layerManagerEvent: LayerManagerEvent)


proc initLayerManagerEventListener*(this: LayerManagerEventListener) =
    discard

proc newLayerManagerEventListener*(): LayerManagerEventListener =
    result = LayerManagerEventListener()
    initLayerManagerEventListener(result)

method onEvent*(this: LayerManagerEventListener, eventObject: AllBinaryEventObject) =
        discard

method onCreateLayerManagerEvent*(this: LayerManagerEventListener, layerManagerEvent: LayerManagerEvent) =
        discard

method onDeleteLayerManagerEvent*(this: LayerManagerEventListener, layerManagerEvent: LayerManagerEvent) =
        discard

