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
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/input/motion/gesture/observer/MotionGestureEventListener as MotionGestureEventListenerModule
export MotionGestureEventListenerModule
import org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface as CompleteMotionGestureListenerInterfaceModule
export CompleteMotionGestureListenerInterfaceModule
import org/allbinary/input/motion/gesture/observer/MotionGestureEvent as MotionGestureEventModule
export MotionGestureEventModule

type
    GameMotionGestureListener* = ref object of MotionGestureEventListener
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        motionGestureCollection*: BasicArrayList
        touchGestureCollection*: BasicArrayList
        signed*: CompleteMotionGestureListenerInterface

proc newGameMotionGestureListener*(signed: CompleteMotionGestureListenerInterface): GameMotionGestureListener
proc initGameMotionGestureListener*(this: GameMotionGestureListener, signed: CompleteMotionGestureListenerInterface)
method onEvent*(this: GameMotionGestureListener, eventObject: AllBinaryEventObject)
method onUpMotionGestureEvent*(this: GameMotionGestureListener, ev: MotionGestureEvent)
method onDownMotionGestureEvent*(this: GameMotionGestureListener, ev: MotionGestureEvent)
method onLeftMotionGestureEvent*(this: GameMotionGestureListener, ev: MotionGestureEvent)
method onRightMotionGestureEvent*(this: GameMotionGestureListener, ev: MotionGestureEvent)
method onDiagonalDownRightMotionGestureEvent*(this: GameMotionGestureListener, ev: MotionGestureEvent)
method onDiagonalDownLeftMotionGestureEvent*(this: GameMotionGestureListener, ev: MotionGestureEvent)
method onDiagonalUpRightMotionGestureEvent*(this: GameMotionGestureListener, ev: MotionGestureEvent)
method onDiagonalUpLeftMotionGestureEvent*(this: GameMotionGestureListener, ev: MotionGestureEvent)
method onPressedMotionGestureEvent*(this: GameMotionGestureListener, ev: MotionGestureEvent)
method released*(this: GameMotionGestureListener, ev: MotionGestureEvent)
method onScrolledMotionGestureEvent*(this: GameMotionGestureListener, motionGestureEvent: MotionGestureEvent)
method onMotionGestureEvent*(this: GameMotionGestureListener, ev: MotionGestureEvent)
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
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsGameMotionGestureListener(this: GameMotionGestureListener) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.motionGestureCollection = newBasicArrayListD()
    this.touchGestureCollection = newBasicArrayListD()
    
    discard

proc initGameMotionGestureListener*(this: GameMotionGestureListener, signed: CompleteMotionGestureListenerInterface) =
        this.initFieldsGameMotionGestureListener()
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        this.signed = signed

proc newGameMotionGestureListener*(signed: CompleteMotionGestureListenerInterface): GameMotionGestureListener =
    result = GameMotionGestureListener()
    initGameMotionGestureListener(result, signed)

method onEvent*(this: GameMotionGestureListener, eventObject: AllBinaryEventObject) =
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this)

method onUpMotionGestureEvent*(this: GameMotionGestureListener, ev: MotionGestureEvent) =
        this.onMotionGestureEvent(ev)

method onDownMotionGestureEvent*(this: GameMotionGestureListener, ev: MotionGestureEvent) =
        this.onMotionGestureEvent(ev)

method onLeftMotionGestureEvent*(this: GameMotionGestureListener, ev: MotionGestureEvent) =
        this.onMotionGestureEvent(ev)

method onRightMotionGestureEvent*(this: GameMotionGestureListener, ev: MotionGestureEvent) =
        this.onMotionGestureEvent(ev)

method onDiagonalDownRightMotionGestureEvent*(this: GameMotionGestureListener, ev: MotionGestureEvent) =
        this.onMotionGestureEvent(ev)

method onDiagonalDownLeftMotionGestureEvent*(this: GameMotionGestureListener, ev: MotionGestureEvent) =
        this.onMotionGestureEvent(ev)

method onDiagonalUpRightMotionGestureEvent*(this: GameMotionGestureListener, ev: MotionGestureEvent) =
        this.onMotionGestureEvent(ev)

method onDiagonalUpLeftMotionGestureEvent*(this: GameMotionGestureListener, ev: MotionGestureEvent) =
        this.onMotionGestureEvent(ev)

method onPressedMotionGestureEvent*(this: GameMotionGestureListener, ev: MotionGestureEvent) =
        this.touchGestureCollection.add(ev.getMotionGesture())

method released*(this: GameMotionGestureListener, ev: MotionGestureEvent) =
        try:
            this.touchGestureCollection.add(ev.getMotionGesture())
            this.signed.onMotionGestureCompleted(this.touchGestureCollection)
            this.touchGestureCollection.clear()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let stringBuffer: StringMaker = newStringMaker()
            stringBuffer.append(this.commonStrings.EXCEPTION_LABEL)
            stringBuffer.append(StringUtil.getInstance().toString(ev.getMotionGesture()))
            this.logUtil.put(stringBuffer.toString(), this, "release", e)

method onScrolledMotionGestureEvent*(this: GameMotionGestureListener, motionGestureEvent: MotionGestureEvent) =
        discard

method onMotionGestureEvent*(this: GameMotionGestureListener, ev: MotionGestureEvent) =
        try:
            var motionGestureInput: MotionGestureInput = ev.getMotionGesture()
            if motionGestureInput == TouchMotionGestureFactory.getInstance().PRESSED:
                this.onPressedMotionGestureEvent(ev)
            elif motionGestureInput == TouchMotionGestureFactory.getInstance().RELEASED:
                this.released(ev)
            else:
                this.motionGestureCollection.add(motionGestureInput)
                this.signed.onMotionGestureCompleted(this.motionGestureCollection)
                this.motionGestureCollection.clear()
                this.touchGestureCollection.clear()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            var stringBuffer: StringMaker = newStringMaker()
            stringBuffer.append(this.commonStrings.EXCEPTION_LABEL)
            stringBuffer.append(StringUtil.getInstance().toString(ev.getMotionGesture()))
            this.logUtil.put(stringBuffer.toString(), this, "onMotionGestureEvent", e)

