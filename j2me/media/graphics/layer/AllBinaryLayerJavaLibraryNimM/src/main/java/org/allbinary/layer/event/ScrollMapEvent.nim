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
# package org.allbinary.layer.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule

type
    ScrollMapEvent* = ref object of AllBinaryEventObject
        dx*: int32
        dy*: int32

proc newScrollMapEvent*(anyType: JObject): ScrollMapEvent
proc initScrollMapEvent*(this: ScrollMapEvent, anyType: JObject)
method setDx*(this: ScrollMapEvent, dx: int32) {.base.}
method getDx*(this: ScrollMapEvent): int32 {.base, discardable.}
method setDy*(this: ScrollMapEvent, dy: int32) {.base.}
method getDy*(this: ScrollMapEvent): int32 {.base, discardable.}
method setDxDy*(this: ScrollMapEvent, dx: int32, dy: int32) {.base.}


# Java field initializers run after the base initializer
proc initFieldsScrollMapEvent(this: ScrollMapEvent) =
    this.dx = 0
    this.dy = 0
    discard

proc initScrollMapEvent*(this: ScrollMapEvent, anyType: JObject) =
        initAllBinaryEventObject(this, anyType)
        this.initFieldsScrollMapEvent()

proc newScrollMapEvent*(anyType: JObject): ScrollMapEvent =
    result = ScrollMapEvent()
    initScrollMapEvent(result, anyType)

method setDx*(this: ScrollMapEvent, dx: int32) {.base.} =
        this.dx = dx

method getDx*(this: ScrollMapEvent): int32 {.base, discardable.} =
        return this.dx

method setDy*(this: ScrollMapEvent, dy: int32) {.base.} =
        this.dy = dy

method getDy*(this: ScrollMapEvent): int32 {.base, discardable.} =
        return this.dy

method setDxDy*(this: ScrollMapEvent, dx: int32, dy: int32) {.base.} =
        this.dx = dx
        this.dy = dy

when declared(newScrollMapEventHook1):
    newScrollMapEventHook1 = proc (anyType: JObject): AllBinaryEventObject = newScrollMapEvent(anyType)

