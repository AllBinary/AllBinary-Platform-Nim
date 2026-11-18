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
# package org.allbinary.vector

{.warning[UnusedImport]: off.}
import allbinary_java

type
    VectorInterface* = ref object of JObject


method getPoints*(this: VectorInterface, frame: int32): JArray[JArray[int32]] {.base, discardable.} =
        raise newJException("AbstractMethodError", "getPoints")

method setPoints*(this: VectorInterface, currentPoints: JArray[JArray[JArray[int32]]]) {.base.} =
        raise newJException("AbstractMethodError", "setPoints")

