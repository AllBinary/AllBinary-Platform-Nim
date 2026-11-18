#[
 
  AllBinary Open License Version 1
  Copyright (c) 2022 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
  
]#
# Generated Code Do Not Modify
# package org.allbinary.graphics.displayable.screen

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule

type
    AboutPaintableFactory* = ref object of JObject
        paintableArray*: JArray[Paintable]

proc newAboutPaintableFactory*(): AboutPaintableFactory
proc initAboutPaintableFactory*(this: AboutPaintableFactory)
proc getInstance*(t: typedesc[AboutPaintableFactory]): AboutPaintableFactory {.discardable.}
import org/allbinary/game/paint/AboutPaintable as AboutPaintableModule
export AboutPaintableModule
import org/allbinary/graphics/paint/NullPaintable as NullPaintableModule
export NullPaintableModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var AboutPaintableFactory_instanceValue: AboutPaintableFactory
var AboutPaintableFactory_instanceSet = false
proc instance*(t: typedesc[AboutPaintableFactory]): AboutPaintableFactory =
    if not AboutPaintableFactory_instanceSet:
        AboutPaintableFactory_instanceSet = true
        AboutPaintableFactory_instanceValue = newAboutPaintableFactory()
    AboutPaintableFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsAboutPaintableFactory(this: AboutPaintableFactory) =
    this.paintableArray = newJArrayFromRefs[Paintable](NullPaintable.getInstance())
    discard

proc getInstance*(t: typedesc[AboutPaintableFactory]): AboutPaintableFactory {.discardable.} =
        return AboutPaintableFactory.instance

proc initAboutPaintableFactory*(this: AboutPaintableFactory) =
        this.initFieldsAboutPaintableFactory()
        let INFO: JArray[string] = newJArrayFrom[string](["Built with the", "AllBinary Platform", StringUtil.getInstance().EMPTY_STRING, "Comments or Questions:", "support@allbinary.com"])
        let DEVELOPERS: JArray[string] = newJArrayFrom[string](["Developed By:", "Travis Berthelot"])
        this.paintableArray = AboutPaintable.getInstance(INFO, DEVELOPERS).getPaintableArrayInstance()

proc newAboutPaintableFactory*(): AboutPaintableFactory =
    result = AboutPaintableFactory()
    initAboutPaintableFactory(result)

