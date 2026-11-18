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
# package org.allbinary.logic.java

{.warning[UnusedImport]: off.}
import allbinary_java

type
    PrimitiveArrayToString* = ref object of JObject

proc newPrimitiveArrayToString*(): PrimitiveArrayToString
proc toString*(t: typedesc[PrimitiveArrayToString], floats: JArray[float32]): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule


proc initPrimitiveArrayToString*(this: PrimitiveArrayToString) =
    discard

proc newPrimitiveArrayToString*(): PrimitiveArrayToString =
    result = PrimitiveArrayToString()
    initPrimitiveArrayToString(result)

proc toString*(t: typedesc[PrimitiveArrayToString], floats: JArray[float32]): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        block:
            var index: int32 = 0
            while index < floats.length:
                defer: index = index +% 1
                stringBuffer.appendfloat(floats[index])
        return stringBuffer.toString()

