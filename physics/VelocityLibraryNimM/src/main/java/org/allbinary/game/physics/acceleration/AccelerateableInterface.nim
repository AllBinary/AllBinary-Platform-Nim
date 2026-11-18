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
# package org.allbinary.game.physics.acceleration

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/math/BasicDecimal as BasicDecimalModule
export BasicDecimalModule

type
    AccelerateableInterface* = ref object of JObject


method accelerate*(this: AccelerateableInterface, accelerate: BasicDecimal) {.base.} =
        raise newJException("AbstractMethodError", "accelerate")

