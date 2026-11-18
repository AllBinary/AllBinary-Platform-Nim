#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.game.ag.layer.hud.basic

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/ag/layer/hud/basic/NumberStringHud as NumberStringHudModule
export NumberStringHudModule

type
    NumberStringHudFactory* = ref object of JObject
        NULL_NUMBER_STRING_HUD*: NumberStringHud

proc newNumberStringHudFactory*(): NumberStringHudFactory
proc getInstance*(t: typedesc[NumberStringHudFactory]): NumberStringHudFactory {.discardable.}
method createHud*(this: NumberStringHudFactory): NumberStringHud {.base, discardable.}
import org/allbinary/game/graphics/hud/BasicHudFactory as BasicHudFactoryModule
export BasicHudFactoryModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var NumberStringHudFactory_instanceValue: JObject
var NumberStringHudFactory_instanceSet = false
proc instance*(t: typedesc[NumberStringHudFactory]): JObject =
    if not NumberStringHudFactory_instanceSet:
        NumberStringHudFactory_instanceSet = true
        NumberStringHudFactory_instanceValue = NullUtil.getInstance()
    NumberStringHudFactory_instanceValue
proc `instance=`*(t: typedesc[NumberStringHudFactory], value: JObject) =
    NumberStringHudFactory_instanceSet = true
    NumberStringHudFactory_instanceValue = value

# Java field initializers run after the base initializer
proc initFieldsNumberStringHudFactory(this: NumberStringHudFactory) =
    this.NULL_NUMBER_STRING_HUD = this.createHud()
    discard

proc initNumberStringHudFactory*(this: NumberStringHudFactory) =
    this.initFieldsNumberStringHudFactory()

proc newNumberStringHudFactory*(): NumberStringHudFactory =
    result = NumberStringHudFactory()
    initNumberStringHudFactory(result)

proc getInstance*(t: typedesc[NumberStringHudFactory]): NumberStringHudFactory {.discardable.} =
        if NumberStringHudFactory.instance == NullUtil.getInstance():
            NumberStringHudFactory.instance = newNumberStringHudFactory()
        return NumberStringHudFactory(JObject(NumberStringHudFactory.instance))

method createHud*(this: NumberStringHudFactory): NumberStringHud {.base, discardable.} =
        try:
            return newNumberStringHud(StringUtil.getInstance().EMPTY_STRING, 9, BasicHudFactory.getInstance().ABSOLUTE, 1, 0, BasicColorFactory.getInstance().NULL_COLOR)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let logUtil: LogUtil = LogUtil.getInstance()
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)
            raise newJException("RuntimeException", "")

