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
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

type
    CompleteMotionGestureInputToGameMotionGestureInput* = ref object of JObject
        commonStrings*: CommonStrings

proc newCompleteMotionGestureInputToGameMotionGestureInput*(): CompleteMotionGestureInputToGameMotionGestureInput
proc getInstance*(t: typedesc[CompleteMotionGestureInputToGameMotionGestureInput]): CompleteMotionGestureInputToGameMotionGestureInput {.discardable.}
method init*(this: CompleteMotionGestureInputToGameMotionGestureInput) {.base.}
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule

var CompleteMotionGestureInputToGameMotionGestureInput_instanceValue: CompleteMotionGestureInputToGameMotionGestureInput
var CompleteMotionGestureInputToGameMotionGestureInput_instanceSet = false
proc instance*(t: typedesc[CompleteMotionGestureInputToGameMotionGestureInput]): CompleteMotionGestureInputToGameMotionGestureInput =
    if not CompleteMotionGestureInputToGameMotionGestureInput_instanceSet:
        CompleteMotionGestureInputToGameMotionGestureInput_instanceSet = true
        CompleteMotionGestureInputToGameMotionGestureInput_instanceValue = newCompleteMotionGestureInputToGameMotionGestureInput()
    CompleteMotionGestureInputToGameMotionGestureInput_instanceValue

# Java field initializers run after the base initializer
proc initFieldsCompleteMotionGestureInputToGameMotionGestureInput(this: CompleteMotionGestureInputToGameMotionGestureInput) =
    this.commonStrings = CommonStrings.getInstance()
    discard

proc initCompleteMotionGestureInputToGameMotionGestureInput*(this: CompleteMotionGestureInputToGameMotionGestureInput) =
    this.initFieldsCompleteMotionGestureInputToGameMotionGestureInput()

proc newCompleteMotionGestureInputToGameMotionGestureInput*(): CompleteMotionGestureInputToGameMotionGestureInput =
    result = CompleteMotionGestureInputToGameMotionGestureInput()
    initCompleteMotionGestureInputToGameMotionGestureInput(result)

proc getInstance*(t: typedesc[CompleteMotionGestureInputToGameMotionGestureInput]): CompleteMotionGestureInputToGameMotionGestureInput {.discardable.} =
        return CompleteMotionGestureInputToGameMotionGestureInput.instance

method init*(this: CompleteMotionGestureInputToGameMotionGestureInput) {.base.} =
        PreLogUtil.put("No Touch Button = No Compound Motion Gestures", this, this.commonStrings.INIT)

