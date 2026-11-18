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
# package org.allbinary.game.part

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule
import org/allbinary/graphics/paint/PaintableInterface as PaintableInterfaceModule
export PaintableInterfaceModule
import org/allbinary/game/part/PartInterface as PartInterfaceModule
export PartInterfaceModule

type
    CountedLayersHudPaintable* = ref object of PaintableInterface
        displayInfoSingleton*: DisplayInfoSingleton
        partInterfaceArray*: JArray[PartInterface]
        countedTotalStringColor*: int32
        countedPartsBorder*: int32
        startIndex*: int32
        dropSize*: int32
        myFontProcessor*: MyFontProcessor
        height*: int32

converter jAsUpdateMyFontInterface*(value: CountedLayersHudPaintable): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
proc newCountedLayersHudPaintable*(partInterfaceArray: JArray[PartInterface], dropSize: int32, startIndex: int32, countedTotalStringColor: int32, countedPartsBorder: int32): CountedLayersHudPaintable
proc initCountedLayersHudPaintable*(this: CountedLayersHudPaintable, partInterfaceArray: JArray[PartInterface], dropSize: int32, startIndex: int32, countedTotalStringColor: int32, countedPartsBorder: int32)
method updateMeasurement*(this: CountedLayersHudPaintable, graphics: Graphics)
method paint*(this: CountedLayersHudPaintable, graphics: Graphics)
method paintThreed*(this: CountedLayersHudPaintable, graphics: Graphics)
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface as PickedUpLayerInterfaceFactoryInterfaceModule
export PickedUpLayerInterfaceFactoryInterfaceModule
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/game/part/CountedLayerInterfaceFactoryPart as CountedLayerInterfaceFactoryPartModule
export CountedLayerInterfaceFactoryPartModule

var CountedLayersHudPaintable_XXStringWidthValue: int32
var CountedLayersHudPaintable_XXStringWidthSet = false
proc XXStringWidth*(t: typedesc[CountedLayersHudPaintable]): int32 =
    if not CountedLayersHudPaintable_XXStringWidthSet:
        CountedLayersHudPaintable_XXStringWidthSet = true
        CountedLayersHudPaintable_XXStringWidthValue = 0
    CountedLayersHudPaintable_XXStringWidthValue
proc `XXStringWidth=`*(t: typedesc[CountedLayersHudPaintable], value: int32) =
    CountedLayersHudPaintable_XXStringWidthSet = true
    CountedLayersHudPaintable_XXStringWidthValue = value

# Java field initializers run after the base initializer
proc initFieldsCountedLayersHudPaintable(this: CountedLayersHudPaintable) =
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance()
    
    
    
    
    
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    this.height = 0
    discard

proc initCountedLayersHudPaintable*(this: CountedLayersHudPaintable, partInterfaceArray: JArray[PartInterface], dropSize: int32, startIndex: int32, countedTotalStringColor: int32, countedPartsBorder: int32) =
        this.initFieldsCountedLayersHudPaintable()
        this.partInterfaceArray = partInterfaceArray
        this.startIndex = startIndex
        this.countedTotalStringColor = countedTotalStringColor
        this.countedPartsBorder = countedPartsBorder
        this.dropSize = dropSize

proc newCountedLayersHudPaintable*(partInterfaceArray: JArray[PartInterface], dropSize: int32, startIndex: int32, countedTotalStringColor: int32, countedPartsBorder: int32): CountedLayersHudPaintable =
    result = CountedLayersHudPaintable()
    initCountedLayersHudPaintable(result, partInterfaceArray, dropSize, startIndex, countedTotalStringColor, countedPartsBorder)

method updateMeasurement*(this: CountedLayersHudPaintable, graphics: Graphics) =
        let font: Font = graphics.getFont()
        this.height = font.getHeight()
        if this.dropSize > font.getHeight():
            this.height = this.dropSize
        if CountedLayersHudPaintable.XXStringWidth == 0:
            let XXString: string = "XX"
            CountedLayersHudPaintable.XXStringWidth = font.stringWidth(XXString)
        this.myFontProcessor = MyFontProcessor.getInstance()

method paint*(this: CountedLayersHudPaintable, graphics: Graphics) =
        this.myFontProcessor.process(graphics)
        let lastWidth: int32 = this.displayInfoSingleton.getLastWidth()
        let widthEdge: int32 = lastWidth -% this.dropSize
        let size: int32 = this.partInterfaceArray.length
        var count: int32 = 0
        var y: int32 = 0
        var countedLayerInterfaceFactory: CountedLayerInterfaceFactoryPart = nil
        var pickedUpLayerInterfaceFactoryInterface: PickedUpLayerInterfaceFactoryInterface = nil
        var layerInterface: AllBinaryLayer = nil
        var charArray: JArray[uint16] = nil
        block:
            var index: int32 = this.startIndex
            while index < size:
                defer: index = index +% 1
                countedLayerInterfaceFactory = CountedLayerInterfaceFactoryPart(JObject(this.partInterfaceArray[index]))
                if countedLayerInterfaceFactory.getTotal() > 0:
                    pickedUpLayerInterfaceFactoryInterface = countedLayerInterfaceFactory.getCountedPickedUpLayerInterfaceFactory()
                    layerInterface = pickedUpLayerInterfaceFactoryInterface.getIconLayer()
                    y = 40 +% (count *% this.height)
                    layerInterface.setPosition(widthEdge, y, layerInterface.getZP())
                    layerInterface.paint(graphics)
                    graphics.setColor(this.countedTotalStringColor)
                    countedLayerInterfaceFactory.paint(graphics)
                    charArray = countedLayerInterfaceFactory.getTotalString()
                    graphics.drawChars(charArray, 0, charArray.length, widthEdge -% countedLayerInterfaceFactory.getXOffset(), y, 0)
                    count = count +% 1
        if count > 0:
            graphics.setColor(this.countedPartsBorder)
            graphics.drawRect(lastWidth -% (CountedLayersHudPaintable.XXStringWidth +% this.dropSize), 40, CountedLayersHudPaintable.XXStringWidth +% this.dropSize, (count *% this.height) +% 3)

method paintThreed*(this: CountedLayersHudPaintable, graphics: Graphics) =
        discard

