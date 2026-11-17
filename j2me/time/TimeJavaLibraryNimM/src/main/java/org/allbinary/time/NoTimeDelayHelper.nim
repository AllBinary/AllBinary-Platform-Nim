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
# package org.allbinary.time

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule

type
    NoTimeDelayHelper* = ref object of TimeDelayHelper

proc newNoTimeDelayHelper*(): NoTimeDelayHelper
proc initNoTimeDelayHelper*(this: NoTimeDelayHelper)
method isTimeTNT*(this: NoTimeDelayHelper): bool {.discardable.}
method isTimeSinceTNT*(this: NoTimeDelayHelper, delay: int32): bool {.discardable.}
method isTime*(this: NoTimeDelayHelper, currentTime: int64): bool {.discardable.}
method isTimeSince*(this: NoTimeDelayHelper, delay: int32, currentTime: int64): bool {.discardable.}

var NoTimeDelayHelper_SINGLETONValue: NoTimeDelayHelper
var NoTimeDelayHelper_SINGLETONSet = false
proc SINGLETON*(t: typedesc[NoTimeDelayHelper]): NoTimeDelayHelper =
    if not NoTimeDelayHelper_SINGLETONSet:
        NoTimeDelayHelper_SINGLETONSet = true
        NoTimeDelayHelper_SINGLETONValue = newNoTimeDelayHelper()
    NoTimeDelayHelper_SINGLETONValue

proc initNoTimeDelayHelper*(this: NoTimeDelayHelper) =
        initTimeDelayHelper(this, 0)

proc newNoTimeDelayHelper*(): NoTimeDelayHelper =
    result = NoTimeDelayHelper()
    initNoTimeDelayHelper(result)

method isTimeTNT*(this: NoTimeDelayHelper): bool {.discardable.} =
        return true

method isTimeSinceTNT*(this: NoTimeDelayHelper, delay: int32): bool {.discardable.} =
        return true

method isTime*(this: NoTimeDelayHelper, currentTime: int64): bool {.discardable.} =
        return true

method isTimeSince*(this: NoTimeDelayHelper, delay: int32, currentTime: int64): bool {.discardable.} =
        return true

when declared(newNoTimeDelayHelperHook0):
    newNoTimeDelayHelperHook0 = proc (): TimeDelayHelper = newNoTimeDelayHelper()

