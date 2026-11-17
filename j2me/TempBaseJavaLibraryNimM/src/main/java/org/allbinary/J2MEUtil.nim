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
# package org.allbinary

{.warning[UnusedImport]: off.}
import allbinary_java

type
    J2MEUtil* = ref object of JObject

proc newJ2MEUtil*(): J2MEUtil
proc initJ2MEUtil*(this: J2MEUtil)
proc isJ2ME*(t: typedesc[J2MEUtil]): bool {.discardable.}
proc isJ2SE*(t: typedesc[J2MEUtil]): bool {.discardable.}
proc isHTML*(t: typedesc[J2MEUtil]): bool {.discardable.}


proc initJ2MEUtil*(this: J2MEUtil) =
        discard
        discard

proc newJ2MEUtil*(): J2MEUtil =
    result = J2MEUtil()
    initJ2MEUtil(result)

proc isJ2ME*(t: typedesc[J2MEUtil]): bool {.discardable.} =
        return false

proc isJ2SE*(t: typedesc[J2MEUtil]): bool {.discardable.} =
        return false

proc isHTML*(t: typedesc[J2MEUtil]): bool {.discardable.} =
        return false

