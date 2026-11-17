#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary

{.warning[UnusedImport]: off.}
import allbinary_java

type
    AvianUtil* = ref object of JObject

proc newAvianUtil*(): AvianUtil
proc isAvian*(t: typedesc[AvianUtil]): bool {.discardable.}


proc initAvianUtil*(this: AvianUtil) =
    discard

proc newAvianUtil*(): AvianUtil =
    result = AvianUtil()
    initAvianUtil(result)

proc isAvian*(t: typedesc[AvianUtil]): bool {.discardable.} =
        return false

