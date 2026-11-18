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
# package org.allbinary.game.paint

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/game/paint/ColorFillBasePaintable as ColorFillBasePaintableModule
export ColorFillBasePaintableModule

type
    ColorFillPaintableFactory* = ref object of JObject

proc newColorFillPaintableFactory*(): ColorFillPaintableFactory
proc getInstance*(t: typedesc[ColorFillPaintableFactory]): ColorFillPaintableFactory {.discardable.}
method getInstance*(this: ColorFillPaintableFactory, basicColor: BasicColor, forThreedCanvas: bool): ColorFillBasePaintable {.base, discardable.}
import org/allbinary/logic/system/os/GenericOperatingSystem as GenericOperatingSystemModule
export GenericOperatingSystemModule
import org/allbinary/logic/system/os/OperatingSystemFactory as OperatingSystemFactoryModule
export OperatingSystemFactoryModule
import org/allbinary/game/paint/ColorFillPaintable as ColorFillPaintableModule
export ColorFillPaintableModule
import org/allbinary/game/paint/OverScanColorFillPaintable as OverScanColorFillPaintableModule
export OverScanColorFillPaintableModule

var ColorFillPaintableFactory_instanceValue: ColorFillPaintableFactory
var ColorFillPaintableFactory_instanceSet = false
proc instance*(t: typedesc[ColorFillPaintableFactory]): ColorFillPaintableFactory =
    if not ColorFillPaintableFactory_instanceSet:
        ColorFillPaintableFactory_instanceSet = true
        ColorFillPaintableFactory_instanceValue = newColorFillPaintableFactory()
    ColorFillPaintableFactory_instanceValue

proc initColorFillPaintableFactory*(this: ColorFillPaintableFactory) =
    discard

proc newColorFillPaintableFactory*(): ColorFillPaintableFactory =
    result = ColorFillPaintableFactory()
    initColorFillPaintableFactory(result)

proc getInstance*(t: typedesc[ColorFillPaintableFactory]): ColorFillPaintableFactory {.discardable.} =
        return ColorFillPaintableFactory.instance

method getInstance*(this: ColorFillPaintableFactory, basicColor: BasicColor, forThreedCanvas: bool): ColorFillBasePaintable {.base, discardable.} =
        let operatingSystem: GenericOperatingSystem = OperatingSystemFactory.getInstance().getOperatingSystemInstance()
        if operatingSystem.isOverScan():
            return newOverScanColorFillPaintable(basicColor)
        else:
            return newColorFillPaintable(basicColor)

