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
    AndroidUtil* = ref object of JObject

proc newAndroidUtil*(): AndroidUtil
proc initAndroidUtil*(this: AndroidUtil)
proc isMemoryRestrictive*(t: typedesc[AndroidUtil]): bool {.discardable.}
proc isAndroid*(t: typedesc[AndroidUtil]): bool {.discardable.}


proc initAndroidUtil*(this: AndroidUtil) =
        discard
        discard

proc newAndroidUtil*(): AndroidUtil =
    result = AndroidUtil()
    initAndroidUtil(result)

proc isMemoryRestrictive*(t: typedesc[AndroidUtil]): bool {.discardable.} =
        return true

proc isAndroid*(t: typedesc[AndroidUtil]): bool {.discardable.} =
        return false

