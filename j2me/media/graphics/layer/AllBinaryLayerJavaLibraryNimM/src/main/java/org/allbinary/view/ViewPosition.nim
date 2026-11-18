#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.view

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/view/ViewPositionBase as ViewPositionBaseModule
export ViewPositionBaseModule

type
    ViewPosition* = ref object of ViewPositionBase
        allbinaryLayer*: AllBinaryLayer

proc newViewPosition*(x: int32, y: int32, z: int32): ViewPosition
proc initViewPosition*(this: ViewPosition, x: int32, y: int32, z: int32)
proc getInstanceD*(t: typedesc[ViewPosition]): ViewPosition {.discardable.}
method getX*(this: ViewPosition): int32 {.discardable.}
method getY*(this: ViewPosition): int32 {.discardable.}
method getZ*(this: ViewPosition): int32 {.discardable.}
method getX2*(this: ViewPosition): int32 {.discardable.}
method getY2*(this: ViewPosition): int32 {.discardable.}
method getZ2*(this: ViewPosition): int32 {.discardable.}
method setAllbinaryLayer*(this: ViewPosition, allbinaryLayer: JObject)


# Java field initializers run after the base initializer
proc initFieldsViewPosition(this: ViewPosition) =
    this.allbinaryLayer = AllBinaryLayer.NULL_ALLBINARY_LAYER
    discard

proc getInstanceD*(t: typedesc[ViewPosition]): ViewPosition {.discardable.} =
        return newViewPosition(0, 0, 0)

proc initViewPosition*(this: ViewPosition, x: int32, y: int32, z: int32) =
        initViewPositionBase(this, x, y, z)
        this.initFieldsViewPosition()

proc newViewPosition*(x: int32, y: int32, z: int32): ViewPosition =
    result = ViewPosition()
    initViewPosition(result, x, y, z)

method getX*(this: ViewPosition): int32 {.discardable.} =
        return this.allbinaryLayer.getXP()

method getY*(this: ViewPosition): int32 {.discardable.} =
        return this.allbinaryLayer.getYP()

method getZ*(this: ViewPosition): int32 {.discardable.} =
        return this.allbinaryLayer.getZP()

method getX2*(this: ViewPosition): int32 {.discardable.} =
        return this.getX() +% this.allbinaryLayer.getWidth()

method getY2*(this: ViewPosition): int32 {.discardable.} =
        return this.getY() +% this.allbinaryLayer.getHeight()

method getZ2*(this: ViewPosition): int32 {.discardable.} =
        return jToInt32((int64(this.getZ()) +% this.allbinaryLayer.getDepth()))

method setAllbinaryLayer*(this: ViewPosition, allbinaryLayer: JObject) =
        this.allbinaryLayer = AllBinaryLayer(JObject(allbinaryLayer))

when declared(newViewPositionHook3):
    newViewPositionHook3 = proc (x: int32, y: int32, z: int32): ViewPositionBase = newViewPosition(x, y, z)

