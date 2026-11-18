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
# package org.allbinary.game.resource

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule

type
    RectangleResourceFactoryInterface* = ref object of JObject


method getRectangle*(this: RectangleResourceFactoryInterface, resource: string): Rectangle {.base, discardable.} =
        raise newJException("AbstractMethodError", "getRectangle")

method getRectangleArrayOfArrays*(this: RectangleResourceFactoryInterface, resource: string): JArray[JArray[Rectangle]] {.base, discardable.} =
        raise newJException("AbstractMethodError", "getRectangleArrayOfArrays")

