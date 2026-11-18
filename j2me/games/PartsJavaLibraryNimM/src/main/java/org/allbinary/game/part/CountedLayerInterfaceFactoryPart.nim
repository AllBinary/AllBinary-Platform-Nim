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
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory as CountedPickedUpLayerInterfaceFactoryModule
export CountedPickedUpLayerInterfaceFactoryModule
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/logic/math/PrimitiveLongUtil as PrimitiveLongUtilModule
export PrimitiveLongUtilModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/game/part/PartInterface as PartInterfaceModule
export PartInterfaceModule

type
    CountedLayerInterfaceFactoryPart* = ref object of PartInterface
        updateMyFontProcessor*: MyFontProcessor
        myFontProcessor*: MyFontProcessor
        animationInterface*: Animation
        total*: int32
        totalString*: JArray[uint16]
        xOffset*: int32
        countedPickedUpLayerInterfaceFactory*: CountedPickedUpLayerInterfaceFactory
        primitiveLongUtil*: PrimitiveLongUtil

converter jAsUpdateMyFontInterface*(value: CountedLayerInterfaceFactoryPart): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
proc newCountedLayerInterfaceFactoryPart*(total: int32, countedPickedUpLayerInterfaceFactory: CountedPickedUpLayerInterfaceFactory): CountedLayerInterfaceFactoryPart
proc initCountedLayerInterfaceFactoryPart*(this: CountedLayerInterfaceFactoryPart, total: int32, countedPickedUpLayerInterfaceFactory: CountedPickedUpLayerInterfaceFactory)
method updateMeasurement*(this: CountedLayerInterfaceFactoryPart, graphics: Graphics)
method init*(this: CountedLayerInterfaceFactoryPart, total: int32, countedPickedUpLayerInterfaceFactory: CountedPickedUpLayerInterfaceFactory) {.base.}
method getInstance*(this: CountedLayerInterfaceFactoryPart, hashtable: ABHashtable, x: int32, y: int32, z: int32): AllBinaryLayer {.base, discardable.}
method getTotal*(this: CountedLayerInterfaceFactoryPart): int32 {.base, discardable.}
method setTotal*(this: CountedLayerInterfaceFactoryPart, total: int32) {.base.}
method paint*(this: CountedLayerInterfaceFactoryPart, graphics: Graphics)
method paintThreed*(this: CountedLayerInterfaceFactoryPart, graphics: Graphics)
method getAnimationInterface*(this: CountedLayerInterfaceFactoryPart): Animation {.discardable.}
method setAnimationInterface*(this: CountedLayerInterfaceFactoryPart, animationInterface: Animation) {.base.}
method getXOffset*(this: CountedLayerInterfaceFactoryPart): int32 {.base, discardable.}
method setXOffset*(this: CountedLayerInterfaceFactoryPart, totalStringWidth: int32) {.base.}
method getTotalString*(this: CountedLayerInterfaceFactoryPart): JArray[uint16] {.base, discardable.}
method getCountedPickedUpLayerInterfaceFactory*(this: CountedLayerInterfaceFactoryPart): CountedPickedUpLayerInterfaceFactory {.base, discardable.}
method setCountedPickedUpLayerInterfaceFactory*(this: CountedLayerInterfaceFactoryPart, countedPickedUpLayerInterfaceFactory: CountedPickedUpLayerInterfaceFactory) {.base.}
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/animation/NullAnimationFactory as NullAnimationFactoryModule
export NullAnimationFactoryModule
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule

var CountedLayerInterfaceFactoryPart_NULL_COUNTED_LAYER_INTERFACE_FACTORYValue: CountedLayerInterfaceFactoryPart
var CountedLayerInterfaceFactoryPart_NULL_COUNTED_LAYER_INTERFACE_FACTORYSet = false
proc NULL_COUNTED_LAYER_INTERFACE_FACTORY*(t: typedesc[CountedLayerInterfaceFactoryPart]): CountedLayerInterfaceFactoryPart =
    if not CountedLayerInterfaceFactoryPart_NULL_COUNTED_LAYER_INTERFACE_FACTORYSet:
        CountedLayerInterfaceFactoryPart_NULL_COUNTED_LAYER_INTERFACE_FACTORYSet = true
        CountedLayerInterfaceFactoryPart_NULL_COUNTED_LAYER_INTERFACE_FACTORYValue = newCountedLayerInterfaceFactoryPart(0, CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY)
    CountedLayerInterfaceFactoryPart_NULL_COUNTED_LAYER_INTERFACE_FACTORYValue

# Java field initializers run after the base initializer
proc initFieldsCountedLayerInterfaceFactoryPart(this: CountedLayerInterfaceFactoryPart) =
    this.updateMyFontProcessor = newUpdateMyFontProcessor(this)
    this.myFontProcessor = this.updateMyFontProcessor
    this.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
    this.total = 0
    this.totalString = NullUtil.getInstance().NULL_CHAR_ARRAY
    this.xOffset = 0
    this.countedPickedUpLayerInterfaceFactory = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY
    
    discard

proc initCountedLayerInterfaceFactoryPart*(this: CountedLayerInterfaceFactoryPart, total: int32, countedPickedUpLayerInterfaceFactory: CountedPickedUpLayerInterfaceFactory) =
        this.initFieldsCountedLayerInterfaceFactoryPart()
        this.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(1000)
        this.init(total, countedPickedUpLayerInterfaceFactory)

proc newCountedLayerInterfaceFactoryPart*(total: int32, countedPickedUpLayerInterfaceFactory: CountedPickedUpLayerInterfaceFactory): CountedLayerInterfaceFactoryPart =
    result = CountedLayerInterfaceFactoryPart()
    initCountedLayerInterfaceFactoryPart(result, total, countedPickedUpLayerInterfaceFactory)

method updateMeasurement*(this: CountedLayerInterfaceFactoryPart, graphics: Graphics) =
        let font: Font = graphics.getFont()
        this.setXOffset(font.charsWidth(this.totalString, 0, this.primitiveLongUtil.getCurrentTotalDigits()) +% (ashr(font.getSize(), 1)))
        this.myFontProcessor = MyFontProcessor.getInstance()

method init*(this: CountedLayerInterfaceFactoryPart, total: int32, countedPickedUpLayerInterfaceFactory: CountedPickedUpLayerInterfaceFactory) {.base.} =
        this.setCountedPickedUpLayerInterfaceFactory(countedPickedUpLayerInterfaceFactory)
        this.total = total

method getInstance*(this: CountedLayerInterfaceFactoryPart, hashtable: ABHashtable, x: int32, y: int32, z: int32): AllBinaryLayer {.base, discardable.} =
        if this.total > 0:
            this.setTotal(this.total -% 1)
            return this.getCountedPickedUpLayerInterfaceFactory().getNextInstance(hashtable, x, y, z)
        else:
            raise newJException("Exception", "No more left. Could use a listener to automatically remove")

method getTotal*(this: CountedLayerInterfaceFactoryPart): int32 {.base, discardable.} =
        return this.total

method setTotal*(this: CountedLayerInterfaceFactoryPart, total: int32) {.base.} =
        this.total = total
        this.totalString = this.primitiveLongUtil.getCharArray(total)
        this.myFontProcessor = this.updateMyFontProcessor

method paint*(this: CountedLayerInterfaceFactoryPart, graphics: Graphics) =
        this.myFontProcessor.process(graphics)

method paintThreed*(this: CountedLayerInterfaceFactoryPart, graphics: Graphics) =
        discard

method getAnimationInterface*(this: CountedLayerInterfaceFactoryPart): Animation {.discardable.} =
        return this.animationInterface

method setAnimationInterface*(this: CountedLayerInterfaceFactoryPart, animationInterface: Animation) {.base.} =
        this.animationInterface = animationInterface

method getXOffset*(this: CountedLayerInterfaceFactoryPart): int32 {.base, discardable.} =
        return this.xOffset

method setXOffset*(this: CountedLayerInterfaceFactoryPart, totalStringWidth: int32) {.base.} =
        this.xOffset = totalStringWidth

method getTotalString*(this: CountedLayerInterfaceFactoryPart): JArray[uint16] {.base, discardable.} =
        return this.totalString

method getCountedPickedUpLayerInterfaceFactory*(this: CountedLayerInterfaceFactoryPart): CountedPickedUpLayerInterfaceFactory {.base, discardable.} =
        return this.countedPickedUpLayerInterfaceFactory

method setCountedPickedUpLayerInterfaceFactory*(this: CountedLayerInterfaceFactoryPart, countedPickedUpLayerInterfaceFactory: CountedPickedUpLayerInterfaceFactory) {.base.} =
        this.countedPickedUpLayerInterfaceFactory = countedPickedUpLayerInterfaceFactory

