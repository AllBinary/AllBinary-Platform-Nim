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
    MotionRecognizer* = ref object of JObject

proc newMotionRecognizer*(): MotionRecognizer
method processStartMotionEvent*(this: MotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) {.base.}
method processEndMotionEvent*(this: MotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) {.base.}
method processDraggedMotionEvent*(this: MotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) {.base.}


proc initMotionRecognizer*(this: MotionRecognizer) =
    discard

proc newMotionRecognizer*(): MotionRecognizer =
    result = MotionRecognizer()
    initMotionRecognizer(result)

method processStartMotionEvent*(this: MotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) {.base.} =
        discard

method processEndMotionEvent*(this: MotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) {.base.} =
        discard

method processDraggedMotionEvent*(this: MotionRecognizer, x: int32, y: int32, deviceId: int32, modifiers: int32) {.base.} =
        discard

