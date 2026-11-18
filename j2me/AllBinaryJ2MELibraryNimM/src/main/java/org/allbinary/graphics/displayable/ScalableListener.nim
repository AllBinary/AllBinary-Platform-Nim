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

type
    ScalableListener* = ref object of JObject


method getRatio*(this: ScalableListener, ratio: float32): float32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getRatio")

method getLeft*(this: ScalableListener, xOffset: int32): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getLeft")

method getTop*(this: ScalableListener, yOffset: int32): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getTop")

method scale*(this: ScalableListener, ratio: float32) {.base.} =
        raise newJException("AbstractMethodError", "scale")

