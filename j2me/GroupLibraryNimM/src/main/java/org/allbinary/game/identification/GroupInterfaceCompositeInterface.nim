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
# package org.allbinary.game.identification

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/identification/Group as GroupModule
export GroupModule

type
    GroupInterfaceCompositeInterface* = ref object of JObject


method getGroupInterface*(this: GroupInterfaceCompositeInterface): JArray[Group] {.base, discardable.} =
        raise newJException("AbstractMethodError", "getGroupInterface")

