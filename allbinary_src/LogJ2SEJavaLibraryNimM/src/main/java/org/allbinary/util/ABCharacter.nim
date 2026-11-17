#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.util

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Character as CharacterModule
export CharacterModule

type
    ABCharacter* = ref object of JObject

proc newABCharacter*(): ABCharacter
proc toString*(t: typedesc[ABCharacter], ch: uint16): string {.discardable.}


proc initABCharacter*(this: ABCharacter) =
    discard

proc newABCharacter*(): ABCharacter =
    result = ABCharacter()
    initABCharacter(result)

proc toString*(t: typedesc[ABCharacter], ch: uint16): string {.discardable.} =
        return jstr(ch)

