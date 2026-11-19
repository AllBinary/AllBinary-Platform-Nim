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
# package org.allbinary.game.input

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/input/motion/gesture/MotionGestureInput as MotionGestureInputModule
export MotionGestureInputModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/game/input/CompleteMotionGestureInputInterface as CompleteMotionGestureInputInterfaceModule
export CompleteMotionGestureInputInterfaceModule

type
    CompleteMotionGestureInputEvent* = ref object of AllBinaryEventObject
        logUtil*: LogUtil
        name*: string
        motionGestureInput*: MotionGestureInput

converter jAsCompleteMotionGestureInputInterface*(value: CompleteMotionGestureInputEvent): CompleteMotionGestureInputInterface = cast[CompleteMotionGestureInputInterface](value)
converter jAsNamedInterface*(value: CompleteMotionGestureInputEvent): NamedInterface = cast[NamedInterface](value)
proc newCompleteMotionGestureInputEvent*(name: string, motionGestureInput: MotionGestureInput): CompleteMotionGestureInputEvent
proc initCompleteMotionGestureInputEvent*(this: CompleteMotionGestureInputEvent, name: string, motionGestureInput: MotionGestureInput)
method setName*(this: CompleteMotionGestureInputEvent, name: string) {.base.}
method getName*(this: CompleteMotionGestureInputEvent): string {.discardable.}
method setMotionGestureInput*(this: CompleteMotionGestureInputEvent, motionGestureInput: MotionGestureInput) {.base.}
method getMotionGestureInput*(this: CompleteMotionGestureInputEvent): MotionGestureInput {.base, discardable.}
import org/allbinary/input/motion/gesture/TouchMotionGestureFactory as TouchMotionGestureFactoryModule
export TouchMotionGestureFactoryModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


# Java field initializers run after the base initializer
proc initFieldsCompleteMotionGestureInputEvent(this: CompleteMotionGestureInputEvent) =
    this.logUtil = LogUtil.getInstance()
    this.name = StringUtil.getInstance().EMPTY_STRING
    this.motionGestureInput = TouchMotionGestureFactory.getInstance().NO_MOTION
    discard

proc initCompleteMotionGestureInputEvent*(this: CompleteMotionGestureInputEvent, name: string, motionGestureInput: MotionGestureInput) =
        initAllBinaryEventObject(this, motionGestureInput)
        this.initFieldsCompleteMotionGestureInputEvent()
        this.setName(name)
        try:
            this.setMotionGestureInput(motionGestureInput)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, "InputToGameKeyEventAction", e)

proc newCompleteMotionGestureInputEvent*(name: string, motionGestureInput: MotionGestureInput): CompleteMotionGestureInputEvent =
    result = CompleteMotionGestureInputEvent()
    initCompleteMotionGestureInputEvent(result, name, motionGestureInput)

method setName*(this: CompleteMotionGestureInputEvent, name: string) {.base.} =
        this.name = name

method getName*(this: CompleteMotionGestureInputEvent): string {.discardable.} =
        return this.name

method setMotionGestureInput*(this: CompleteMotionGestureInputEvent, motionGestureInput: MotionGestureInput) {.base.} =
        this.motionGestureInput = motionGestureInput

method getMotionGestureInput*(this: CompleteMotionGestureInputEvent): MotionGestureInput {.base, discardable.} =
        return this.motionGestureInput

when declared(newCompleteMotionGestureInputEventHook2):
    newCompleteMotionGestureInputEventHook2 = proc (name: string, motionGestureInput: MotionGestureInput): AllBinaryEventObject = newCompleteMotionGestureInputEvent(name, motionGestureInput)

