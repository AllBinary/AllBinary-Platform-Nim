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
# package org.allbinary.android.input.motion

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer as CollidableDestroyableDamageableLayerModule
export CollidableDestroyableDamageableLayerModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule

type
    AnalogControllerHelper* = ref object of JObject
        reduceTimeFactor*: int32
        SCALE_VALUE*: int32
        rightTimeElapsedHelper*: TimeDelayHelper
        leftTimeElapsedHelper*: TimeDelayHelper
        downTimeElapsedHelper*: TimeDelayHelper
        upTimeElapsedHelper*: TimeDelayHelper

proc newAnalogControllerHelper*(reduceTimeFactor: int32): AnalogControllerHelper
proc initAnalogControllerHelper*(this: AnalogControllerHelper, reduceTimeFactor: int32)
method right*(this: AnalogControllerHelper, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer, xAnalogValue: int32) {.base.}
method left*(this: AnalogControllerHelper, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer, xAnalogValue: int32) {.base.}
method up*(this: AnalogControllerHelper, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer, xAnalogValue: int32) {.base.}
method down*(this: AnalogControllerHelper, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer, xAnalogValue: int32) {.base.}
import org/allbinary/android/input/motion/AnalogControllerConfigurationFactory as AnalogControllerConfigurationFactoryModule
export AnalogControllerConfigurationFactoryModule


# Java field initializers run after the base initializer
proc initFieldsAnalogControllerHelper(this: AnalogControllerHelper) =
    
    this.SCALE_VALUE = AnalogControllerConfigurationFactory.getInstance().SCALE_VALUE
    this.rightTimeElapsedHelper = newTimeDelayHelper(0)
    this.leftTimeElapsedHelper = newTimeDelayHelper(0)
    this.downTimeElapsedHelper = newTimeDelayHelper(0)
    this.upTimeElapsedHelper = newTimeDelayHelper(0)
    discard

proc initAnalogControllerHelper*(this: AnalogControllerHelper, reduceTimeFactor: int32) =
        this.initFieldsAnalogControllerHelper()
        this.reduceTimeFactor = reduceTimeFactor

proc newAnalogControllerHelper*(reduceTimeFactor: int32): AnalogControllerHelper =
    result = AnalogControllerHelper()
    initAnalogControllerHelper(result, reduceTimeFactor)

method right*(this: AnalogControllerHelper, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer, xAnalogValue: int32) {.base.} =
        this.rightTimeElapsedHelper.delay = (ashr((this.SCALE_VALUE -% xAnalogValue), this.reduceTimeFactor))
        if this.rightTimeElapsedHelper.isTimeTNT():
            collidableDestroyableDamageableLayer.right()

method left*(this: AnalogControllerHelper, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer, xAnalogValue: int32) {.base.} =
        this.leftTimeElapsedHelper.delay = (ashr((this.SCALE_VALUE +% xAnalogValue), this.reduceTimeFactor))
        if this.leftTimeElapsedHelper.isTimeTNT():
            collidableDestroyableDamageableLayer.left()

method up*(this: AnalogControllerHelper, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer, xAnalogValue: int32) {.base.} =
        this.upTimeElapsedHelper.delay = (ashr((this.SCALE_VALUE -% xAnalogValue), this.reduceTimeFactor))
        if this.upTimeElapsedHelper.isTimeTNT():
            collidableDestroyableDamageableLayer.up()

method down*(this: AnalogControllerHelper, collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer, xAnalogValue: int32) {.base.} =
        this.downTimeElapsedHelper.delay = (ashr((this.SCALE_VALUE +% xAnalogValue), this.reduceTimeFactor))
        if this.downTimeElapsedHelper.isTimeTNT():
            collidableDestroyableDamageableLayer.down()

