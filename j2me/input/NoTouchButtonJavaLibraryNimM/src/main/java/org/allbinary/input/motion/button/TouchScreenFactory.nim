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
import org/allbinary/input/motion/button/TouchScreenType as TouchScreenTypeModule
export TouchScreenTypeModule

type
    TouchScreenFactory* = ref object of JObject
        multiTouch*: bool
        touch*: bool
        touchScreenType*: TouchScreenType

proc newTouchScreenFactory*(): TouchScreenFactory
proc initTouchScreenFactory*(this: TouchScreenFactory)
proc getInstance*(t: typedesc[TouchScreenFactory]): TouchScreenFactory {.discardable.}
method isMultiTouch*(this: TouchScreenFactory): bool {.base, discardable.}
method setTouch*(this: TouchScreenFactory, touch: bool) {.base.}
method isTouch*(this: TouchScreenFactory): bool {.base, discardable.}
method getTouchScreenType*(this: TouchScreenFactory): TouchScreenType {.base, discardable.}
import org/allbinary/input/motion/button/TouchScreenTypesFactory as TouchScreenTypesFactoryModule
export TouchScreenTypesFactoryModule

var TouchScreenFactory_SINGLETONValue: TouchScreenFactory
var TouchScreenFactory_SINGLETONSet = false
proc SINGLETON*(t: typedesc[TouchScreenFactory]): TouchScreenFactory =
    if not TouchScreenFactory_SINGLETONSet:
        TouchScreenFactory_SINGLETONSet = true
        TouchScreenFactory_SINGLETONValue = newTouchScreenFactory()
    TouchScreenFactory_SINGLETONValue

# Java field initializers run after the base initializer
proc initFieldsTouchScreenFactory(this: TouchScreenFactory) =
    this.multiTouch = false
    this.touch = false
    this.touchScreenType = TouchScreenTypesFactory.getInstance().NOTOUCH
    discard

proc initTouchScreenFactory*(this: TouchScreenFactory) =
        this.initFieldsTouchScreenFactory()
        discard

proc newTouchScreenFactory*(): TouchScreenFactory =
    result = TouchScreenFactory()
    initTouchScreenFactory(result)

proc getInstance*(t: typedesc[TouchScreenFactory]): TouchScreenFactory {.discardable.} =
        return TouchScreenFactory.SINGLETON

method isMultiTouch*(this: TouchScreenFactory): bool {.base, discardable.} =
        return this.multiTouch

method setTouch*(this: TouchScreenFactory, touch: bool) {.base.} =
        discard

method isTouch*(this: TouchScreenFactory): bool {.base, discardable.} =
        return this.touch

method getTouchScreenType*(this: TouchScreenFactory): TouchScreenType {.base, discardable.} =
        return this.touchScreenType

