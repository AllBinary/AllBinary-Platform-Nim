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
# package org.allbinary.logic.java.character

{.warning[UnusedImport]: off.}
import allbinary_java

#import java.nio.charset.Charset;
type
    CharacterSet* = ref object of JObject

proc newCharacterSet*(): CharacterSet
proc initCharacterSet*(this: CharacterSet)
method toString*(this: CharacterSet): string {.discardable.}


proc initCharacterSet*(this: CharacterSet) =
        discard
        discard

proc newCharacterSet*(): CharacterSet =
    result = CharacterSet()
    initCharacterSet(result)

method toString*(this: CharacterSet): string {.discardable.} =
        return "Default Character Set: Empty Implementation"

