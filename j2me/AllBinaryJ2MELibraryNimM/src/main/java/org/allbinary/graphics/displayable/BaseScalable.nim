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
# package org.allbinary.graphics.displayable

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/displayable/ScalableListener as ScalableListenerModule
export ScalableListenerModule

type
    BaseScalable* = ref object of ScalableListener

proc newBaseScalable*(): BaseScalable
method getRatio*(this: BaseScalable, ratio: float32): float32 {.discardable.}
method getLeft*(this: BaseScalable, xOffset: int32): int32 {.discardable.}
method getTop*(this: BaseScalable, yOffset: int32): int32 {.discardable.}
method scale*(this: BaseScalable, ratio: float32)


proc initBaseScalable*(this: BaseScalable) =
    discard

proc newBaseScalable*(): BaseScalable =
    result = BaseScalable()
    initBaseScalable(result)

method getRatio*(this: BaseScalable, ratio: float32): float32 {.discardable.} =
        return 1'f32

method getLeft*(this: BaseScalable, xOffset: int32): int32 {.discardable.} =
        return -1

method getTop*(this: BaseScalable, yOffset: int32): int32 {.discardable.} =
        return -1

method scale*(this: BaseScalable, ratio: float32) =
        discard

