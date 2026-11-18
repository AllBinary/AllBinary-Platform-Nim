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
    AppletUtil* = ref object of JObject

proc newAppletUtil*(): AppletUtil
proc initAppletUtil*(this: AppletUtil)
proc isAppletLoader*(t: typedesc[AppletUtil], anyType: JObject): bool {.discardable.}


proc initAppletUtil*(this: AppletUtil) =
        discard
        discard

proc newAppletUtil*(): AppletUtil =
    result = AppletUtil()
    initAppletUtil(result)

proc isAppletLoader*(t: typedesc[AppletUtil], anyType: JObject): bool {.discardable.} =
        return false

