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
# package org.allbinary.input.motion.gesture

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule
import org/allbinary/graphics/Line as LineModule
export LineModule
import org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler as BasicMotionGesturesHandlerModule
export BasicMotionGesturesHandlerModule
import org/allbinary/input/motion/gesture/observer/MotionEventCircularPool as MotionEventCircularPoolModule
export MotionEventCircularPoolModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/math/J2SEMath as J2SEMathModule
export J2SEMathModule
import org/allbinary/logic/util/event/handler/BasicEventHandler as BasicEventHandlerModule
export BasicEventHandlerModule

type
    MotionGestureRecognizer* = ref object of JObject
        logUtil*: LogUtil
        j2seMath*: J2SEMath
        origin*: GPoint
        previous*: GPoint
        intermediate*: GPoint
        line*: Line
        motionGesturesHandler*: BasicMotionGesturesHandler
        movedMotionGesturesHandler*: BasicEventHandler
        scrolledMotionGesturesHandler*: BasicEventHandler
        motionEventCircularPool*: MotionEventCircularPool

proc newMotionGestureRecognizer*(id: int32): MotionGestureRecognizer
proc initMotionGestureRecognizer*(this: MotionGestureRecognizer, id: int32)
method processPressedMotionEvent*(this: MotionGestureRecognizer, current: GPoint, deviceId: int32, button: int32): bool {.base, discardable.}
method processReleasedMotionEvent*(this: MotionGestureRecognizer, current: GPoint, deviceId: int32, button: int32): bool {.base, discardable.}
method processDraggedMotionEvent*(this: MotionGestureRecognizer, current: GPoint, deviceId: int32, buttonMask: int32) {.base.}
method processMovedMotionEvent*(this: MotionGestureRecognizer, current: GPoint, deviceId: int32, button: int32): bool {.base, discardable.}
method processScrolledMotionEvent*(this: MotionGestureRecognizer, current: GPoint, deviceId: int32, button: int32): bool {.base, discardable.}
method getMotionGesturesHandler*(this: MotionGestureRecognizer): BasicMotionGesturesHandler {.base, discardable.}
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration as MotionGestureConfigurationModule
export MotionGestureConfigurationModule
import org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory as MotionGestureConfigurationFactoryModule
export MotionGestureConfigurationFactoryModule
import org/allbinary/input/motion/gesture/observer/MotionGestureEvent as MotionGestureEventModule
export MotionGestureEventModule
import org/allbinary/input/motion/gesture/observer/MovedMotionGesturesHandler as MovedMotionGesturesHandlerModule
export MovedMotionGesturesHandlerModule
import org/allbinary/input/motion/gesture/observer/ScrolledMotionGesturesHandler as ScrolledMotionGesturesHandlerModule
export ScrolledMotionGesturesHandlerModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/input/motion/gesture/TouchMotionGestureFactory as TouchMotionGestureFactoryModule
export TouchMotionGestureFactoryModule
import org/allbinary/input/motion/gesture/MotionGestureInput as MotionGestureInputModule
export MotionGestureInputModule


# Java field initializers run after the base initializer
proc initFieldsMotionGestureRecognizer(this: MotionGestureRecognizer) =
    this.logUtil = LogUtil.getInstance()
    this.j2seMath = J2SEMath.getInstance()
    this.origin = PointFactory.getInstance().ZERO_ZERO
    this.previous = this.origin
    this.intermediate = this.origin
    this.line = newLine(this.origin, this.origin)
    
    
    
    
    discard

proc initMotionGestureRecognizer*(this: MotionGestureRecognizer, id: int32) =
        this.initFieldsMotionGestureRecognizer()
        this.motionEventCircularPool = MotionEventCircularPool.createPool(id)
        var motionGesturesHandler: BasicEventHandler = newBasicEventHandler()
        var movedMotionGesturesHandler: BasicEventHandler = motionGesturesHandler
        var scrolledMotionGesturesHandler: BasicEventHandler = motionGesturesHandler
        try:
            motionGesturesHandler = BasicMotionGesturesHandler.getInstance()
            movedMotionGesturesHandler = MovedMotionGesturesHandler.getInstance()
            scrolledMotionGesturesHandler = ScrolledMotionGesturesHandler.getInstance()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)
        this.motionGesturesHandler = BasicMotionGesturesHandler(JObject(motionGesturesHandler))
        this.movedMotionGesturesHandler = movedMotionGesturesHandler
        this.scrolledMotionGesturesHandler = scrolledMotionGesturesHandler

proc newMotionGestureRecognizer*(id: int32): MotionGestureRecognizer =
    result = MotionGestureRecognizer()
    initMotionGestureRecognizer(result, id)

method processPressedMotionEvent*(this: MotionGestureRecognizer, current: GPoint, deviceId: int32, button: int32): bool {.base, discardable.} =
        this.intermediate = this.origin
        this.previous = this.origin
        let event: MotionGestureEvent = this.motionEventCircularPool.getInstance(TouchMotionGestureFactory.getInstance().PRESSED)
        event.setPreviousPoint(this.previous)
        event.setCurrentPoint(current)
        this.motionGesturesHandler.fireEvent(event)
        return true

method processReleasedMotionEvent*(this: MotionGestureRecognizer, current: GPoint, deviceId: int32, button: int32): bool {.base, discardable.} =
        let event: MotionGestureEvent = this.motionEventCircularPool.getInstance(TouchMotionGestureFactory.getInstance().RELEASED)
        event.setPreviousPoint(this.previous)
        event.setCurrentPoint(current)
        this.motionGesturesHandler.fireEvent(event)
        return true

method processDraggedMotionEvent*(this: MotionGestureRecognizer, current: GPoint, deviceId: int32, buttonMask: int32) {.base.} =
        if this.previous == this.origin or this.intermediate == this.origin:
            this.previous = current
            this.intermediate = current
            return
        this.line.setP1(this.previous)
        this.line.setP2(current)
        var minimumMotionGesture: int32 = MotionGestureConfigurationFactory.getInstance().getMinimumMotionGesture()
        if this.j2seMath.abs(float32(this.line.getDeltaX())) < float32(minimumMotionGesture) and this.j2seMath.abs(float32(this.line.getDeltaY())) < float32(minimumMotionGesture):
            this.intermediate = current
            return
        var gradient: float64 = this.line.getGradient()
        var absGradient: float64 = float64(this.j2seMath.abs(float32(gradient)))
        let conf: MotionGestureConfiguration = MotionGestureConfigurationFactory.getInstance()
        let touchMotionGestureFactory: TouchMotionGestureFactory = TouchMotionGestureFactory.getInstance()
        var newMotionGesture: MotionGestureInput = touchMotionGestureFactory.NO_MOTION
        var diagonalToleranceHigher: float64 = 12.0
        var diagonalToleranceLower: float64 = 12.0
        if conf.isDiagonalMotionGestureAllowed():
            diagonalToleranceHigher = float64((90 -% conf.getDiagonalTolerance()))
            diagonalToleranceLower = float64(conf.getDiagonalTolerance())
        if absGradient > jtan(jtoRadians(diagonalToleranceHigher)):
            if this.line.getDeltaY() > 0.0:
                newMotionGesture = touchMotionGestureFactory.UP
            else:
                newMotionGesture = touchMotionGestureFactory.DOWN
        else:
            if absGradient < jtan(jtoRadians(diagonalToleranceLower)):
                if this.line.getDeltaX() > 0.0:
                    newMotionGesture = touchMotionGestureFactory.LEFT
                else:
                    newMotionGesture = touchMotionGestureFactory.RIGHT
            else:
                if gradient > 0.0:
                    if this.line.getDeltaX() > 0.0:
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_UP_LEFT
                    else:
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT
                else:
                    if this.line.getDeltaX() > 0.0:
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_DOWN_LEFT
                    else:
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_UP_RIGHT
        this.previous = current
        this.intermediate = current
        let event: MotionGestureEvent = this.motionEventCircularPool.getInstance(newMotionGesture)
        event.setPreviousPoint(this.previous)
        event.setCurrentPoint(current)
        this.motionGesturesHandler.fireEvent(event)
        return

method processMovedMotionEvent*(this: MotionGestureRecognizer, current: GPoint, deviceId: int32, button: int32): bool {.base, discardable.} =
        let event: MotionGestureEvent = this.motionEventCircularPool.getInstance(TouchMotionGestureFactory.getInstance().NO_MOTION)
        event.setPreviousPoint(this.previous)
        event.setCurrentPoint(current)
        this.movedMotionGesturesHandler.fireEvent(event)
        return true

method processScrolledMotionEvent*(this: MotionGestureRecognizer, current: GPoint, deviceId: int32, button: int32): bool {.base, discardable.} =
        let touchMotionGestureFactory: TouchMotionGestureFactory = TouchMotionGestureFactory.getInstance()
        var newMotionGesture: MotionGestureInput = touchMotionGestureFactory.NO_MOTION
        if button > 0:
            newMotionGesture = touchMotionGestureFactory.SCROLL_UP
        elif button < 0:
            newMotionGesture = touchMotionGestureFactory.SCROLL_DOWN
        let event: MotionGestureEvent = this.motionEventCircularPool.getInstance(newMotionGesture)
        event.setPreviousPoint(this.previous)
        event.setCurrentPoint(current)
        this.scrolledMotionGesturesHandler.fireEvent(event)
        return true

method getMotionGesturesHandler*(this: MotionGestureRecognizer): BasicMotionGesturesHandler {.base, discardable.} =
        return this.motionGesturesHandler

