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
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/input/motion/button/TouchScreenType as TouchScreenTypeModule
export TouchScreenTypeModule

type
    TouchScreenFactory* = ref object of JObject
        logUtil*: LogUtil
        touch*: bool
        multiTouch*: bool
        multiTouchDistinct*: bool
        touchScreenType*: TouchScreenType

proc newTouchScreenFactory*(): TouchScreenFactory
proc initTouchScreenFactory*(this: TouchScreenFactory)
proc getInstance*(t: typedesc[TouchScreenFactory]): TouchScreenFactory {.discardable.}
method setMultiTouch*(this: TouchScreenFactory, multiTouch: bool) {.base.}
method isMultiTouch*(this: TouchScreenFactory): bool {.base, discardable.}
method setTouch*(this: TouchScreenFactory, touch: bool) {.base.}
method isTouch*(this: TouchScreenFactory): bool {.base, discardable.}
method setMultiTouchDistinct*(this: TouchScreenFactory, multiTouchDistinct: bool) {.base.}
method isMultiTouchDistinct*(this: TouchScreenFactory): bool {.base, discardable.}
method setTouchScreenType*(this: TouchScreenFactory, touchScreenType: TouchScreenType) {.base.}
method getTouchScreenType*(this: TouchScreenFactory): TouchScreenType {.base, discardable.}
method toString*(this: TouchScreenFactory): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
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
    this.logUtil = LogUtil.getInstance()
    this.touch = false
    this.multiTouch = false
    this.multiTouchDistinct = false
    this.touchScreenType = TouchScreenTypesFactory.getInstance().NOTOUCH
    discard

proc initTouchScreenFactory*(this: TouchScreenFactory) =
        this.initFieldsTouchScreenFactory()
        try:
            this.setTouch(true)
            this.setMultiTouch(false)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, TouchScreenFactory.SINGLETON, commonStrings.GET_INSTANCE, e)

proc newTouchScreenFactory*(): TouchScreenFactory =
    result = TouchScreenFactory()
    initTouchScreenFactory(result)

proc getInstance*(t: typedesc[TouchScreenFactory]): TouchScreenFactory {.discardable.} =
        return TouchScreenFactory.SINGLETON

method setMultiTouch*(this: TouchScreenFactory, multiTouch: bool) {.base.} =
        this.multiTouch = multiTouch

method isMultiTouch*(this: TouchScreenFactory): bool {.base, discardable.} =
        return this.multiTouch

method setTouch*(this: TouchScreenFactory, touch: bool) {.base.} =
        this.touch = touch

method isTouch*(this: TouchScreenFactory): bool {.base, discardable.} =
        return this.touch

method setMultiTouchDistinct*(this: TouchScreenFactory, multiTouchDistinct: bool) {.base.} =
        this.multiTouchDistinct = multiTouchDistinct

method isMultiTouchDistinct*(this: TouchScreenFactory): bool {.base, discardable.} =
        return this.multiTouchDistinct

method setTouchScreenType*(this: TouchScreenFactory, touchScreenType: TouchScreenType) {.base.} =
        this.touchScreenType = touchScreenType

method getTouchScreenType*(this: TouchScreenFactory): TouchScreenType {.base, discardable.} =
        return this.touchScreenType

method toString*(this: TouchScreenFactory): string {.discardable.} =
        var stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("TouchScreen: ")
        stringBuffer.appendboolean(this.isTouch())
        stringBuffer.append(" MultiTouch: ")
        stringBuffer.appendboolean(this.isMultiTouch())
        stringBuffer.append(" Distinct MultiTouch: ")
        stringBuffer.appendboolean(this.isMultiTouchDistinct())
        stringBuffer.append(" TouchScreenType: ")
        stringBuffer.append(StringUtil.getInstance().toString(this.getTouchScreenType()))
        return stringBuffer.toString()

