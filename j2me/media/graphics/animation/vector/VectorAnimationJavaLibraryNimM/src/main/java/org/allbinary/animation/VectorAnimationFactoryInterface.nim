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
# package org.allbinary.animation

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/animation/VectorAnimation as VectorAnimationModule
export VectorAnimationModule

type
    VectorAnimationFactoryInterface* = ref object of JObject


method getInstance*(this: VectorAnimationFactoryInterface, points: JArray[JArray[JArray[int32]]], basicColor: BasicColor): VectorAnimation {.base, discardable.} =
        raise newJException("AbstractMethodError", "getInstance")

