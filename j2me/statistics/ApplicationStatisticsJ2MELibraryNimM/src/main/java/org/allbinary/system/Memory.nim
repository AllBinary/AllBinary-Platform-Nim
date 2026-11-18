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
# package org.allbinary.system

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Runtime as RuntimeModule
export RuntimeModule

#ActualPlatform
type
    Memory* = ref object of JObject

proc newMemory*(): Memory
proc getInfo*(t: typedesc[Memory]): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule


proc initMemory*(this: Memory) =
    discard

proc newMemory*(): Memory =
    result = Memory()
    initMemory(result)

proc getInfo*(t: typedesc[Memory]): string {.discardable.} =
        var stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("Memory: Free: ")
        stringBuffer.appendlong(Runtime.getRuntime().freeMemory())
        stringBuffer.append(" Total: ")
        stringBuffer.appendlong(Runtime.getRuntime().totalMemory())
        return stringBuffer.toString()

