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
# package org.allbinary.input.motion.gesture.observer

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule
import org/allbinary/input/motion/gesture/MotionGestureInput as MotionGestureInputModule
export MotionGestureInputModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule

type
    MotionGestureEvent* = ref object of AllBinaryEventObject
        motionGesture*: MotionGestureInput
        id*: int32
        previousPoint*: GPoint
        currentPoint*: GPoint
        commonLabels*: CommonLabels

proc newMotionGestureEvent*(source: JObject, id: int32, motionGesture: MotionGestureInput): MotionGestureEvent
proc initMotionGestureEvent*(this: MotionGestureEvent, source: JObject, id: int32, motionGesture: MotionGestureInput)
method getMotionGesture*(this: MotionGestureEvent): MotionGestureInput {.base, discardable.}
method setMotionGesture*(this: MotionGestureEvent, motionGesture: MotionGestureInput) {.base.}
method getPreviousPoint*(this: MotionGestureEvent): GPoint {.base, discardable.}
method setPreviousPoint*(this: MotionGestureEvent, previousPoint: GPoint) {.base.}
method getCurrentPoint*(this: MotionGestureEvent): GPoint {.base, discardable.}
method setCurrentPoint*(this: MotionGestureEvent, currentPoint: GPoint) {.base.}
method toString*(this: MotionGestureEvent): string {.discardable.}
method getId*(this: MotionGestureEvent): int32 {.base, discardable.}
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/input/motion/gesture/TouchMotionGestureFactory as TouchMotionGestureFactoryModule
export TouchMotionGestureFactoryModule
import org/allbinary/TsUtil as TsUtilModule
export TsUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var MotionGestureEvent_PREVIOUSValue: string
var MotionGestureEvent_PREVIOUSSet = false
proc PREVIOUS*(t: typedesc[MotionGestureEvent]): string =
    if not MotionGestureEvent_PREVIOUSSet:
        MotionGestureEvent_PREVIOUSSet = true
        MotionGestureEvent_PREVIOUSValue = " Previous: "
    MotionGestureEvent_PREVIOUSValue
var MotionGestureEvent_HASHCODEValue: string
var MotionGestureEvent_HASHCODESet = false
proc HASHCODE*(t: typedesc[MotionGestureEvent]): string =
    if not MotionGestureEvent_HASHCODESet:
        MotionGestureEvent_HASHCODESet = true
        MotionGestureEvent_HASHCODEValue = " hashcode: "
    MotionGestureEvent_HASHCODEValue

# Java field initializers run after the base initializer
proc initFieldsMotionGestureEvent(this: MotionGestureEvent) =
    this.motionGesture = TouchMotionGestureFactory.getInstance().NO_MOTION
    
    this.previousPoint = PointFactory.getInstance().ZERO_ZERO
    this.currentPoint = PointFactory.getInstance().ZERO_ZERO
    this.commonLabels = CommonLabels.getInstance()
    discard

proc initMotionGestureEvent*(this: MotionGestureEvent, source: JObject, id: int32, motionGesture: MotionGestureInput) =
        initAllBinaryEventObject(this, source)
        this.initFieldsMotionGestureEvent()
        this.id = id
        this.setMotionGesture(motionGesture)

proc newMotionGestureEvent*(source: JObject, id: int32, motionGesture: MotionGestureInput): MotionGestureEvent =
    result = MotionGestureEvent()
    initMotionGestureEvent(result, source, id, motionGesture)

method getMotionGesture*(this: MotionGestureEvent): MotionGestureInput {.base, discardable.} =
        return this.motionGesture

method setMotionGesture*(this: MotionGestureEvent, motionGesture: MotionGestureInput) {.base.} =
        this.motionGesture = motionGesture

method getPreviousPoint*(this: MotionGestureEvent): GPoint {.base, discardable.} =
        return this.previousPoint

method setPreviousPoint*(this: MotionGestureEvent, previousPoint: GPoint) {.base.} =
        this.previousPoint = previousPoint

method getCurrentPoint*(this: MotionGestureEvent): GPoint {.base, discardable.} =
        return this.currentPoint

method setCurrentPoint*(this: MotionGestureEvent, currentPoint: GPoint) {.base.} =
        this.currentPoint = currentPoint

method toString*(this: MotionGestureEvent): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        let stringUtil: StringUtil = StringUtil.getInstance()
        stringBuffer.append(stringUtil.toString(this.motionGesture))
        stringBuffer.append(this.commonLabels.CURRENT)
        stringBuffer.append(stringUtil.toString(this.currentPoint))
        stringBuffer.append(MotionGestureEvent.PREVIOUS)
        stringBuffer.append(stringUtil.toString(this.previousPoint))
        stringBuffer.append(MotionGestureEvent.HASHCODE)
        stringBuffer.appendint(TsUtil.getInstance().hashCode(this))
        return stringBuffer.toString()

method getId*(this: MotionGestureEvent): int32 {.base, discardable.} =
        return this.id

when declared(newMotionGestureEventHook3):
    newMotionGestureEventHook3 = proc (source: JObject, id: int32, motionGesture: MotionGestureInput): AllBinaryEventObject = newMotionGestureEvent(source, id, motionGesture)

