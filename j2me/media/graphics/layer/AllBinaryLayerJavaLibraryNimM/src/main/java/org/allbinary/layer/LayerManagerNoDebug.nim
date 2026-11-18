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
import org/allbinary/layer/LayerManagerLoggingBase as LayerManagerLoggingBaseModule
export LayerManagerLoggingBaseModule

type
    LayerManagerNoDebug* = ref object of LayerManagerLoggingBase

proc newLayerManagerNoDebug*(): LayerManagerNoDebug
proc getInstance*(t: typedesc[LayerManagerNoDebug]): LayerManagerNoDebug {.discardable.}

var LayerManagerNoDebug_instanceValue: LayerManagerNoDebug
var LayerManagerNoDebug_instanceSet = false
proc instance*(t: typedesc[LayerManagerNoDebug]): LayerManagerNoDebug =
    if not LayerManagerNoDebug_instanceSet:
        LayerManagerNoDebug_instanceSet = true
        LayerManagerNoDebug_instanceValue = newLayerManagerNoDebug()
    LayerManagerNoDebug_instanceValue

proc initLayerManagerNoDebug*(this: LayerManagerNoDebug) =
    initLayerManagerLoggingBase(this)

proc newLayerManagerNoDebug*(): LayerManagerNoDebug =
    result = LayerManagerNoDebug()
    initLayerManagerNoDebug(result)

proc getInstance*(t: typedesc[LayerManagerNoDebug]): LayerManagerNoDebug {.discardable.} =
        return LayerManagerNoDebug.instance

when declared(newLayerManagerNoDebugHook0):
    newLayerManagerNoDebugHook0 = proc (): LayerManagerLoggingBase = newLayerManagerNoDebug()

