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
# package org.allbinary.layer

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/layer/Layer as LayerModule
export LayerModule

type
    NullLayer* = ref object of Layer

proc newNullLayer*(): NullLayer
proc initNullLayer*(this: NullLayer)
proc getInstance*(t: typedesc[NullLayer]): NullLayer {.discardable.}
method paint*(this: NullLayer, graphics: Graphics)

var NullLayer_instanceValue: NullLayer
var NullLayer_instanceSet = false
proc instance*(t: typedesc[NullLayer]): NullLayer =
    if not NullLayer_instanceSet:
        NullLayer_instanceSet = true
        NullLayer_instanceValue = newNullLayer()
    NullLayer_instanceValue

proc getInstance*(t: typedesc[NullLayer]): NullLayer {.discardable.} =
        return NullLayer.instance

proc initNullLayer*(this: NullLayer) =
        initLayer(this, 0, 0)

proc newNullLayer*(): NullLayer =
    result = NullLayer()
    initNullLayer(result)

method paint*(this: NullLayer, graphics: Graphics) =
        discard

when declared(newNullLayerHook0):
    newNullLayerHook0 = proc (): Layer = newNullLayer()

