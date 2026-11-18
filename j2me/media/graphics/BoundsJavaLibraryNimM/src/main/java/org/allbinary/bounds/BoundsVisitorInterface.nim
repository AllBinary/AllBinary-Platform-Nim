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
# package org.allbinary.bounds

{.warning[UnusedImport]: off.}
import allbinary_java

type
    BoundsVisitorInterface* = ref object of JObject


method getX*(this: BoundsVisitorInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getX")

method getY*(this: BoundsVisitorInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getY")

method maxX*(this: BoundsVisitorInterface) {.base.} =
        raise newJException("AbstractMethodError", "maxX")

method maxY*(this: BoundsVisitorInterface) {.base.} =
        raise newJException("AbstractMethodError", "maxY")

method minX*(this: BoundsVisitorInterface) {.base.} =
        raise newJException("AbstractMethodError", "minX")

method minY*(this: BoundsVisitorInterface) {.base.} =
        raise newJException("AbstractMethodError", "minY")

