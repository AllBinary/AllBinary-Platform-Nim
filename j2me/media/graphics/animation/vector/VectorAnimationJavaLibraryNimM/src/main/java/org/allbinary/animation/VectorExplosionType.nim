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

type
    VectorExplosionType* = ref object of JObject

proc newVectorExplosionType*(): VectorExplosionType


proc initVectorExplosionType*(this: VectorExplosionType) =
    discard

proc newVectorExplosionType*(): VectorExplosionType =
    result = VectorExplosionType()
    initVectorExplosionType(result)

