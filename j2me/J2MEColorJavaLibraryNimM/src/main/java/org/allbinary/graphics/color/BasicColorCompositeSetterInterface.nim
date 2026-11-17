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
# package org.allbinary.graphics.color

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule

type
    BasicColorCompositeSetterInterface* = ref object of JObject


method setBasicColorP*(this: BasicColorCompositeSetterInterface, basicColor: BasicColor) {.base.} =
        raise newJException("AbstractMethodError", "setBasicColorP")

