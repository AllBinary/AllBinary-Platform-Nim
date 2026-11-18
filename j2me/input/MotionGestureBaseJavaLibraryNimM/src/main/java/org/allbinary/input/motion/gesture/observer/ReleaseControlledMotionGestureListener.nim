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
import org/allbinary/input/motion/gesture/MotionGestureInput as MotionGestureInputModule
export MotionGestureInputModule
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
    ReleaseControlledMotionGestureListener* = ref object of MotionGestureEventListener
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        currentMotionGesture*: MotionGestureInput
        isMouseGestureOccurring*: bool
        motionGestureCollection*: BasicArrayList
        signed*: CompleteMotionGestureListenerInterface

proc newReleaseControlledMotionGestureListener*(signed: CompleteMotionGestureListenerInterface): ReleaseControlledMotionGestureListener
proc initReleaseControlledMotionGestureListener*(this: ReleaseControlledMotionGestureListener, signed: CompleteMotionGestureListenerInterface)
method onEvent*(this: ReleaseControlledMotionGestureListener, eventObject: AllBinaryEventObject)
method onUpMotionGestureEvent*(this: ReleaseControlledMotionGestureListener, ev: MotionGestureEvent)
method onDownMotionGestureEvent*(this: ReleaseControlledMotionGestureListener, ev: MotionGestureEvent)
method onLeftMotionGestureEvent*(this: ReleaseControlledMotionGestureListener, ev: MotionGestureEvent)
method onRightMotionGestureEvent*(this: ReleaseControlledMotionGestureListener, ev: MotionGestureEvent)
method onDiagonalDownRightMotionGestureEvent*(this: ReleaseControlledMotionGestureListener, ev: MotionGestureEvent)
method onDiagonalDownLeftMotionGestureEvent*(this: ReleaseControlledMotionGestureListener, ev: MotionGestureEvent)
method onDiagonalUpRightMotionGestureEvent*(this: ReleaseControlledMotionGestureListener, ev: MotionGestureEvent)
method onDiagonalUpLeftMotionGestureEvent*(this: ReleaseControlledMotionGestureListener, ev: MotionGestureEvent)
method onPressedMotionGestureEvent*(this: ReleaseControlledMotionGestureListener, ev: MotionGestureEvent)
method onScrolledMotionGestureEvent*(this: ReleaseControlledMotionGestureListener, motionGestureEvent: MotionGestureEvent)
method released*(this: ReleaseControlledMotionGestureListener, ev: MotionGestureEvent)
method onMotionGestureEvent*(this: ReleaseControlledMotionGestureListener, ev: MotionGestureEvent)
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
proc initFieldsReleaseControlledMotionGestureListener(this: ReleaseControlledMotionGestureListener) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.currentMotionGesture = TouchMotionGestureFactory.getInstance().NO_MOTION
    this.isMouseGestureOccurring = false
    this.motionGestureCollection = newBasicArrayListD()
    
    discard

proc initReleaseControlledMotionGestureListener*(this: ReleaseControlledMotionGestureListener, signed: CompleteMotionGestureListenerInterface) =
        this.initFieldsReleaseControlledMotionGestureListener()
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        this.signed = signed

proc newReleaseControlledMotionGestureListener*(signed: CompleteMotionGestureListenerInterface): ReleaseControlledMotionGestureListener =
    result = ReleaseControlledMotionGestureListener()
    initReleaseControlledMotionGestureListener(result, signed)

method onEvent*(this: ReleaseControlledMotionGestureListener, eventObject: AllBinaryEventObject) =
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this)

method onUpMotionGestureEvent*(this: ReleaseControlledMotionGestureListener, ev: MotionGestureEvent) =
        this.onMotionGestureEvent(ev)

method onDownMotionGestureEvent*(this: ReleaseControlledMotionGestureListener, ev: MotionGestureEvent) =
        this.onMotionGestureEvent(ev)

method onLeftMotionGestureEvent*(this: ReleaseControlledMotionGestureListener, ev: MotionGestureEvent) =
        this.onMotionGestureEvent(ev)

method onRightMotionGestureEvent*(this: ReleaseControlledMotionGestureListener, ev: MotionGestureEvent) =
        this.onMotionGestureEvent(ev)

method onDiagonalDownRightMotionGestureEvent*(this: ReleaseControlledMotionGestureListener, ev: MotionGestureEvent) =
        this.onMotionGestureEvent(ev)

method onDiagonalDownLeftMotionGestureEvent*(this: ReleaseControlledMotionGestureListener, ev: MotionGestureEvent) =
        this.onMotionGestureEvent(ev)

method onDiagonalUpRightMotionGestureEvent*(this: ReleaseControlledMotionGestureListener, ev: MotionGestureEvent) =
        this.onMotionGestureEvent(ev)

method onDiagonalUpLeftMotionGestureEvent*(this: ReleaseControlledMotionGestureListener, ev: MotionGestureEvent) =
        this.onMotionGestureEvent(ev)

method onPressedMotionGestureEvent*(this: ReleaseControlledMotionGestureListener, ev: MotionGestureEvent) =
        this.isMouseGestureOccurring = true
        this.currentMotionGesture = TouchMotionGestureFactory.getInstance().NO_MOTION
        this.onMotionGestureEvent(ev)

method onScrolledMotionGestureEvent*(this: ReleaseControlledMotionGestureListener, motionGestureEvent: MotionGestureEvent) =
        discard

method released*(this: ReleaseControlledMotionGestureListener, ev: MotionGestureEvent) =
        try:
            if this.isMouseGestureOccurring == false:
                return
            this.isMouseGestureOccurring = false
            this.signed.onMotionGestureCompleted(this.motionGestureCollection)
            this.motionGestureCollection.clear()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(newStringMaker().append(this.commonStrings.EXCEPTION_LABEL).append(StringUtil.getInstance().toString(ev.getMotionGesture())).toString(), this, "release", e)

method onMotionGestureEvent*(this: ReleaseControlledMotionGestureListener, ev: MotionGestureEvent) =
        if this.isMouseGestureOccurring == false:
            return
        var motionGestureInput: MotionGestureInput = ev.getMotionGesture()
        if motionGestureInput == TouchMotionGestureFactory.getInstance().PRESSED:
            this.onPressedMotionGestureEvent(ev)
        elif motionGestureInput == TouchMotionGestureFactory.getInstance().RELEASED:
            this.released(ev)
        else:
            if this.currentMotionGesture != motionGestureInput:
                this.currentMotionGesture = motionGestureInput
                this.motionGestureCollection.add(ev.getMotionGesture())

