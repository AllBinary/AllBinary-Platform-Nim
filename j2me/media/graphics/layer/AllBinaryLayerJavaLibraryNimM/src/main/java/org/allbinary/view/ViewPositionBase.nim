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
# package org.allbinary.view

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule

type
    ViewPositionBase* = ref object of GPoint

proc newViewPositionBase*(x: int32, y: int32, z: int32): ViewPositionBase
proc initViewPositionBase*(this: ViewPositionBase, x: int32, y: int32, z: int32)
method getX2*(this: ViewPositionBase): int32 {.base, discardable.}
method getY2*(this: ViewPositionBase): int32 {.base, discardable.}
method getZ2*(this: ViewPositionBase): int32 {.base, discardable.}
method setAllbinaryLayer*(this: ViewPositionBase, allbinaryLayer: JObject) {.base.}

var ViewPositionBase_NULL_VIEW_POSITIONValue: ViewPositionBase
var ViewPositionBase_NULL_VIEW_POSITIONSet = false
proc NULL_VIEW_POSITION*(t: typedesc[ViewPositionBase]): ViewPositionBase =
    if not ViewPositionBase_NULL_VIEW_POSITIONSet:
        ViewPositionBase_NULL_VIEW_POSITIONSet = true
        ViewPositionBase_NULL_VIEW_POSITIONValue = newViewPositionBase(0, 0, 0)
    ViewPositionBase_NULL_VIEW_POSITIONValue

proc initViewPositionBase*(this: ViewPositionBase, x: int32, y: int32, z: int32) =
        initGPoint(this, x, y, z)

proc newViewPositionBase*(x: int32, y: int32, z: int32): ViewPositionBase =
    result = ViewPositionBase()
    initViewPositionBase(result, x, y, z)

method getX2*(this: ViewPositionBase): int32 {.base, discardable.} =
        return this.getX()

method getY2*(this: ViewPositionBase): int32 {.base, discardable.} =
        return this.getY()

method getZ2*(this: ViewPositionBase): int32 {.base, discardable.} =
        return this.getZ()

method setAllbinaryLayer*(this: ViewPositionBase, allbinaryLayer: JObject) {.base.} =
        discard

when declared(newViewPositionBaseHook3):
    newViewPositionBaseHook3 = proc (x: int32, y: int32, z: int32): GPoint = newViewPositionBase(x, y, z)

