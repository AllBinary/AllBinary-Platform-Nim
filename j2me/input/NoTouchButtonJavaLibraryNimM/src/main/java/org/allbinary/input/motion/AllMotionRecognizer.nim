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
# package org.allbinary.input.motion

{.warning[UnusedImport]: off.}
import allbinary_java

type
    AllMotionRecognizer* = ref object of JObject
        id*: int32

proc newAllMotionRecognizer*(): AllMotionRecognizer
proc initAllMotionRecognizer*(this: AllMotionRecognizer)
method processStartMotionEvent*(this: AllMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) {.base.}
method processEndMotionEvent*(this: AllMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) {.base.}
method processDraggedMotionEvent*(this: AllMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) {.base.}
method processMovedMotionEvent*(this: AllMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) {.base.}
method processScrolledMotionEvent*(this: AllMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) {.base.}
method getId*(this: AllMotionRecognizer): int32 {.base, discardable.}

var AllMotionRecognizer_indexValue: int32
var AllMotionRecognizer_indexSet = false
proc index*(t: typedesc[AllMotionRecognizer]): int32 =
    if not AllMotionRecognizer_indexSet:
        AllMotionRecognizer_indexSet = true
        AllMotionRecognizer_indexValue = 0
    AllMotionRecognizer_indexValue
proc `index=`*(t: typedesc[AllMotionRecognizer], value: int32) =
    AllMotionRecognizer_indexSet = true
    AllMotionRecognizer_indexValue = value

# Java field initializers run after the base initializer
proc initFieldsAllMotionRecognizer(this: AllMotionRecognizer) =
    
    discard

proc initAllMotionRecognizer*(this: AllMotionRecognizer) =
        this.initFieldsAllMotionRecognizer()
        this.id = jPostIncrement(AllMotionRecognizer.index)

proc newAllMotionRecognizer*(): AllMotionRecognizer =
    result = AllMotionRecognizer()
    initAllMotionRecognizer(result)

method processStartMotionEvent*(this: AllMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) {.base.} =
        discard

method processEndMotionEvent*(this: AllMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) {.base.} =
        discard

method processDraggedMotionEvent*(this: AllMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) {.base.} =
        discard

method processMovedMotionEvent*(this: AllMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) {.base.} =
        discard

method processScrolledMotionEvent*(this: AllMotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) {.base.} =
        discard

method getId*(this: AllMotionRecognizer): int32 {.base, discardable.} =
        return this.id

