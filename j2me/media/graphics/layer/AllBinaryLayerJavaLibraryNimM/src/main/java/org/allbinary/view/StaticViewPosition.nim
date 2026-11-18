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
import org/allbinary/view/ViewPosition as ViewPositionModule
export ViewPositionModule

type
    StaticViewPosition* = ref object of ViewPosition

proc newStaticViewPosition*(x: int32, y: int32, z: int32): StaticViewPosition
proc initStaticViewPosition*(this: StaticViewPosition, x: int32, y: int32, z: int32)
method getX*(this: StaticViewPosition): int32 {.discardable.}
method getY*(this: StaticViewPosition): int32 {.discardable.}
method getZ*(this: StaticViewPosition): int32 {.discardable.}


proc initStaticViewPosition*(this: StaticViewPosition, x: int32, y: int32, z: int32) =
        initViewPosition(this, x, y, z)

proc newStaticViewPosition*(x: int32, y: int32, z: int32): StaticViewPosition =
    result = StaticViewPosition()
    initStaticViewPosition(result, x, y, z)

method getX*(this: StaticViewPosition): int32 {.discardable.} =
        return this.getRawX()

method getY*(this: StaticViewPosition): int32 {.discardable.} =
        return this.getRawY()

method getZ*(this: StaticViewPosition): int32 {.discardable.} =
        return this.getRawZ()

when declared(newStaticViewPositionHook3):
    newStaticViewPositionHook3 = proc (x: int32, y: int32, z: int32): ViewPosition = newStaticViewPosition(x, y, z)

