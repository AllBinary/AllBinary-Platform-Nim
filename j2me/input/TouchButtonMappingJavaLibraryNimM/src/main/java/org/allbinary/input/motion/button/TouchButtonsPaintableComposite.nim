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
# package org.allbinary.input.motion.button

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/CompleteMotionGestureInputEvent as CompleteMotionGestureInputEventModule
export CompleteMotionGestureInputEventModule
import org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface as CompleteMotionGestureInputEventListenerInterfaceModule
export CompleteMotionGestureInputEventListenerInterfaceModule
import org/allbinary/game/input/mapping/InputMappingInterface as InputMappingInterfaceModule
export InputMappingInterfaceModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/paint/ProcessPaintable as ProcessPaintableModule
export ProcessPaintableModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule
import org/allbinary/input/motion/button/TouchButtonsMappingPaintable as TouchButtonsMappingPaintableModule
export TouchButtonsMappingPaintableModule

type
    TouchButtonsPaintableComposite* = ref object of ProcessPaintable
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        inputMappingInterface*: InputMappingInterface
        touchButtonsPaintable*: TouchButtonsMappingPaintable
        timeHelper*: TimeDelayHelper
        released*: bool
        METHOD_NAME*: string
        RELEASE*: string
        FAST_REPEAT*: string
        IGNORE*: string

converter jAsCompleteMotionGestureInputEventListenerInterface*(value: TouchButtonsPaintableComposite): CompleteMotionGestureInputEventListenerInterface = cast[CompleteMotionGestureInputEventListenerInterface](value)
converter jAsEventListenerInterface*(value: TouchButtonsPaintableComposite): EventListenerInterface = cast[EventListenerInterface](value)
proc newTouchButtonsPaintableComposite*(inputMappingInterface: InputMappingInterface, basicColor: BasicColor): TouchButtonsPaintableComposite
proc initTouchButtonsPaintableComposite*(this: TouchButtonsPaintableComposite, inputMappingInterface: InputMappingInterface, basicColor: BasicColor)
method onEvent*(this: TouchButtonsPaintableComposite, eventObject: AllBinaryEventObject)
method onCompleteMotionGestureInputEvent*(this: TouchButtonsPaintableComposite, completeMotionGestureInputEvent: CompleteMotionGestureInputEvent)
method process*(this: TouchButtonsPaintableComposite)
import org/allbinary/game/input/CompleteMotionGestureInputEventHandler as CompleteMotionGestureInputEventHandlerModule
export CompleteMotionGestureInputEventHandlerModule
import org/allbinary/game/input/GameKey as GameKeyModule
export GameKeyModule
import org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent as GameKeyCompleteMotionGestureInputEventModule
export GameKeyCompleteMotionGestureInputEventModule
import org/allbinary/input/motion/gesture/MotionGestureInput as MotionGestureInputModule
export MotionGestureInputModule
import org/allbinary/input/motion/gesture/TouchMotionGestureFactory as TouchMotionGestureFactoryModule
export TouchMotionGestureFactoryModule
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule


# Java field initializers run after the base initializer
proc initFieldsTouchButtonsPaintableComposite(this: TouchButtonsPaintableComposite) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    
    
    this.timeHelper = newTimeDelayHelper(250)
    this.released = true
    this.METHOD_NAME = "onCompleteMotionGestureInputEvent"
    this.RELEASE = "Ignoring: MotionGestureInput Release"
    this.FAST_REPEAT = "Ignoring: MotionGestureInput Repeated To Quickly"
    this.IGNORE = "Ignoring: Until Released"
    discard

proc initTouchButtonsPaintableComposite*(this: TouchButtonsPaintableComposite, inputMappingInterface: InputMappingInterface, basicColor: BasicColor) =
        initProcessPaintable(this)
        this.initFieldsTouchButtonsPaintableComposite()
        this.inputMappingInterface = inputMappingInterface
        CompleteMotionGestureInputEventHandler.getInstance().addListenerInterface(this)
        this.touchButtonsPaintable = newTouchButtonsMappingPaintable(basicColor)

proc newTouchButtonsPaintableComposite*(inputMappingInterface: InputMappingInterface, basicColor: BasicColor): TouchButtonsPaintableComposite =
    result = TouchButtonsPaintableComposite()
    initTouchButtonsPaintableComposite(result, inputMappingInterface, basicColor)

method onEvent*(this: TouchButtonsPaintableComposite, eventObject: AllBinaryEventObject) =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method onCompleteMotionGestureInputEvent*(this: TouchButtonsPaintableComposite, completeMotionGestureInputEvent: CompleteMotionGestureInputEvent) =
        try:
            this.logUtil.putF(this.commonStrings.START, this, "onCompleteMotionGestureInputEvent")
            let touchMotionGestureFactory: TouchMotionGestureFactory = TouchMotionGestureFactory.getInstance()
            let gameKeyCompleteMotionGestureInputEvent: GameKeyCompleteMotionGestureInputEvent = GameKeyCompleteMotionGestureInputEvent(JObject(completeMotionGestureInputEvent))
            let gameKey: GameKey = gameKeyCompleteMotionGestureInputEvent.getGameKey()
            let motionGestureInput: MotionGestureInput = completeMotionGestureInputEvent.getMotionGestureInput()
            if (jSame(motionGestureInput, touchMotionGestureFactory.RELEASED)):
                this.logUtil.putF(this.RELEASE, this, this.METHOD_NAME)
                this.released = true
                return
            if (jSame(motionGestureInput, TouchMotionGestureFactory.getInstance().NO_MOTION)) and (not this.timeHelper.isTimeTNT()):
                this.logUtil.putF(this.FAST_REPEAT, this, this.METHOD_NAME)
                return
            if (not this.released):
                this.logUtil.putF(this.IGNORE, this, this.METHOD_NAME)
                return
            this.released = false
            this.logUtil.putF(newStringMaker().append("GameKey: ").append(StringUtil.getInstance().toString(gameKey)).append(" MotionGestureInput: ").append(StringUtil.getInstance().toString(motionGestureInput)).toString(), this, this.METHOD_NAME)
            this.inputMappingInterface.processInputMapping(gameKey, motionGestureInput)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.METHOD_NAME, e)

method process*(this: TouchButtonsPaintableComposite) =
        CompleteMotionGestureInputEventHandler.getInstance().removeListener(this)

when declared(newTouchButtonsPaintableCompositeHook2):
    newTouchButtonsPaintableCompositeHook2 = proc (inputMappingInterface: InputMappingInterface, basicColor: BasicColor): ProcessPaintable = newTouchButtonsPaintableComposite(inputMappingInterface, basicColor)

