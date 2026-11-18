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

type
    GroupInterface* = ref object of JObject


method getGroupName*(this: GroupInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getGroupName")

method getGroupId*(this: GroupInterface): int16 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getGroupId")

