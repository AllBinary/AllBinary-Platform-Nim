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
# package org.allbinary.graphics.form

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule
import org/allbinary/graphics/form/item/ABCustomItem as ABCustomItemModule
export ABCustomItemModule
import org/allbinary/graphics/form/ScrollCurrentSelectionForm as ScrollCurrentSelectionFormModule
export ScrollCurrentSelectionFormModule

type
    CommandCurrentSelectionForm* = ref object of ScrollCurrentSelectionForm
        selectedAnimationArray*: JArray[Animation]
        unSelectedAnimationArray*: JArray[Animation]

converter jAsUpdateMyFontInterface*(value: CommandCurrentSelectionForm): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
proc newCommandCurrentSelectionForm*(title: string, items: JArray[ABCustomItem], border: int32, moveForSmallScreen: bool, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): CommandCurrentSelectionForm
proc initCommandCurrentSelectionForm*(this: CommandCurrentSelectionForm, title: string, items: JArray[ABCustomItem], border: int32, moveForSmallScreen: bool, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor)
method updateMeasurement*(this: CommandCurrentSelectionForm, graphics: Graphics)
method initAnimations*(this: CommandCurrentSelectionForm) {.base.}
method addAll*(this: CommandCurrentSelectionForm, items: JArray[ABCustomItem]) {.base.}
method addAt*(this: CommandCurrentSelectionForm, index: int32, item: ABCustomItem) {.base.}
method updateAll*(this: CommandCurrentSelectionForm, graphics: Graphics, items: JArray[ABCustomItem]) {.base.}
method updateAt*(this: CommandCurrentSelectionForm, index: int32, item: ABCustomItem) {.base.}
method getSelectedCommand*(this: CommandCurrentSelectionForm): Command {.base, discardable.}
method append*(this: CommandCurrentSelectionForm, item: ABCustomItem): int32 {.discardable.}
method delete*(this: CommandCurrentSelectionForm, itemNum: int32)
method deleteAll*(this: CommandCurrentSelectionForm)
method insert*(this: CommandCurrentSelectionForm, itemNum: int32, item: ABCustomItem)
method set*(this: CommandCurrentSelectionForm, itemNum: int32, item: ABCustomItem)
method paint*(this: CommandCurrentSelectionForm, graphics: Graphics)
method paintItem*(this: CommandCurrentSelectionForm, graphics: Graphics, index: int32, item: ABCustomItem, x: int32, y: int32): int32 {.discardable.}
method paintUnselectedItem*(this: CommandCurrentSelectionForm, graphics: Graphics, index: int32, item: ABCustomItem, x: int32, y: int32): int32 {.discardable.}
import org/allbinary/J2MEUtil as J2MEUtilModule
export J2MEUtilModule
import org/allbinary/animation/NullAnimationFactory as NullAnimationFactoryModule
export NullAnimationFactoryModule
import org/allbinary/animation/vector/RectangleAdjustedAnimation as RectangleAdjustedAnimationModule
export RectangleAdjustedAnimationModule
import org/allbinary/animation/vector/RectangleFilledAdjustedAnimation as RectangleFilledAdjustedAnimationModule
export RectangleFilledAdjustedAnimationModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/graphics/form/item/CommandTextItem as CommandTextItemModule
export CommandTextItemModule
import org/allbinary/graphics/form/ItemPaintableFactory as ItemPaintableFactoryModule
export ItemPaintableFactoryModule


# Java field initializers run after the base initializer
proc initFieldsCommandCurrentSelectionForm(this: CommandCurrentSelectionForm) =
    this.selectedAnimationArray = newJArray[Animation](16, default(Animation))
    this.unSelectedAnimationArray = newJArray[Animation](16, default(Animation))
    discard

proc initCommandCurrentSelectionForm*(this: CommandCurrentSelectionForm, title: string, items: JArray[ABCustomItem], border: int32, moveForSmallScreen: bool, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initScrollCurrentSelectionForm(this, title, items, ItemPaintableFactory.getInstance(), border, -3, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
        this.initFieldsCommandCurrentSelectionForm()
        this.initAnimations()
        this.addAll(items)

proc newCommandCurrentSelectionForm*(title: string, items: JArray[ABCustomItem], border: int32, moveForSmallScreen: bool, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): CommandCurrentSelectionForm =
    result = CommandCurrentSelectionForm()
    initCommandCurrentSelectionForm(result, title, items, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)

method updateMeasurement*(this: CommandCurrentSelectionForm, graphics: Graphics) =
        this.updateAll(graphics, this.getAllitems())
        procCall ScrollCurrentSelectionForm(this).updateMeasurement(graphics)

method initAnimations*(this: CommandCurrentSelectionForm) {.base.} =
        let nullAnimation: Animation = NullAnimationFactory.getFactoryInstance().getInstance(0)
        block:
            var index: int32 = this.selectedAnimationArray.length
            while jPreDecrement(index) >= 0:
                this.selectedAnimationArray[index] = nullAnimation
        block:
            var index: int32 = this.unSelectedAnimationArray.length
            while jPreDecrement(index) >= 0:
                this.unSelectedAnimationArray[index] = nullAnimation

method addAll*(this: CommandCurrentSelectionForm, items: JArray[ABCustomItem]) {.base.} =
        block:
            var index: int32 = items.length
            while jPreDecrement(index) >= 0:
                this.addAt(index, items[index])

method addAt*(this: CommandCurrentSelectionForm, index: int32, item: ABCustomItem) {.base.} =
        let basicColorFactory: BasicColorFactory = BasicColorFactory.getInstance()
        let buttonColor: BasicColor = basicColorFactory.TRANSPARENT_GREY
        let selectedButtonColor: BasicColor = basicColorFactory.TRANSPARENT_RED
        var width: int32 = item.getMinimumWidth()
        var height: int32 = item.getMinimumHeight()
        var adjustedBorder: int32 = 3
        let offset: int32 = -(this.halfBorder +% adjustedBorder)
        let rectWidth: int32 = width +% this.border -% adjustedBorder
        let rectHeight: int32 = height +% this.border -% adjustedBorder
        if J2MEUtil.isJ2ME() or J2MEUtil.isHTML():
            this.selectedAnimationArray[index] = newRectangleAdjustedAnimation(rectWidth, rectHeight, offset, offset, selectedButtonColor)
        else:
            this.selectedAnimationArray[index] = newRectangleFilledAdjustedAnimation(rectWidth, rectHeight, offset, offset, selectedButtonColor)
        adjustedBorder = 4
        if J2MEUtil.isJ2ME() or J2MEUtil.isHTML():
            this.unSelectedAnimationArray[index] = newRectangleAdjustedAnimation(rectWidth, rectHeight, offset, offset, buttonColor)
        else:
            this.unSelectedAnimationArray[index] = newRectangleFilledAdjustedAnimation(rectWidth, rectHeight, offset, offset, buttonColor)

method updateAll*(this: CommandCurrentSelectionForm, graphics: Graphics, items: JArray[ABCustomItem]) {.base.} =
        block:
            var index: int32 = items.length
            while jPreDecrement(index) >= 0:
                items[index].preMeasurement(graphics)
                this.updateAt(index, items[index])

method updateAt*(this: CommandCurrentSelectionForm, index: int32, item: ABCustomItem) {.base.} =
        let basicColorFactory: BasicColorFactory = BasicColorFactory.getInstance()
        let buttonColor: BasicColor = basicColorFactory.TRANSPARENT_GREY
        let selectedButtonColor: BasicColor = basicColorFactory.TRANSPARENT_RED
        let width: int32 = item.getMinimumWidth()
        let height: int32 = item.getMinimumHeight()
        var adjustedBorder: int32 = 3
        let offset: int32 = -(this.halfBorder +% adjustedBorder)
        let rectWidth: int32 = width +% this.border -% adjustedBorder
        let rectHeight: int32 = height +% this.border -% adjustedBorder
        if J2MEUtil.isJ2ME() or J2MEUtil.isHTML():
            let rectangleAdjustedAnimation: RectangleAdjustedAnimation = RectangleAdjustedAnimation(JObject(this.selectedAnimationArray[index]))
            rectangleAdjustedAnimation.setWidth(rectWidth)
            rectangleAdjustedAnimation.setHeight(rectHeight)
            rectangleAdjustedAnimation.setOffsetX(offset)
            rectangleAdjustedAnimation.setOffsetY(offset)
            rectangleAdjustedAnimation.setBasicColorP(selectedButtonColor)
        else:
            let rectangleAdjustedAnimation: RectangleFilledAdjustedAnimation = RectangleFilledAdjustedAnimation(JObject(this.selectedAnimationArray[index]))
            rectangleAdjustedAnimation.setWidth(rectWidth)
            rectangleAdjustedAnimation.setHeight(rectHeight)
            rectangleAdjustedAnimation.setOffsetX(offset)
            rectangleAdjustedAnimation.setOffsetY(offset)
            rectangleAdjustedAnimation.setBasicColorP(selectedButtonColor)
        adjustedBorder = 4
        if J2MEUtil.isJ2ME() or J2MEUtil.isHTML():
            let rectangleAdjustedAnimation: RectangleAdjustedAnimation = RectangleAdjustedAnimation(JObject(this.unSelectedAnimationArray[index]))
            rectangleAdjustedAnimation.setWidth(rectWidth)
            rectangleAdjustedAnimation.setHeight(rectHeight)
            rectangleAdjustedAnimation.setOffsetX(offset)
            rectangleAdjustedAnimation.setOffsetY(offset)
            rectangleAdjustedAnimation.setBasicColorP(buttonColor)
        else:
            let rectangleAdjustedAnimation: RectangleFilledAdjustedAnimation = RectangleFilledAdjustedAnimation(JObject(this.unSelectedAnimationArray[index]))
            rectangleAdjustedAnimation.setWidth(rectWidth)
            rectangleAdjustedAnimation.setHeight(rectHeight)
            rectangleAdjustedAnimation.setOffsetX(offset)
            rectangleAdjustedAnimation.setOffsetY(offset)
            rectangleAdjustedAnimation.setBasicColorP(buttonColor)

method getSelectedCommand*(this: CommandCurrentSelectionForm): Command {.base, discardable.} =
        let index: int32 = procCall ScrollCurrentSelectionForm(this).getSelectedIndex()
        let commandTextItem: CommandTextItem = CommandTextItem(JObject(this.get(index)))
        return commandTextItem.getCommand()

method append*(this: CommandCurrentSelectionForm, item: ABCustomItem): int32 {.discardable.} =
        var `result`: int32 = procCall ScrollCurrentSelectionForm(this).append(item)
        this.addAt(`result`, item)
        return `result`

method delete*(this: CommandCurrentSelectionForm, itemNum: int32) =
        procCall ScrollCurrentSelectionForm(this).delete(itemNum)

method deleteAll*(this: CommandCurrentSelectionForm) =
        this.initAnimations()
        procCall ScrollCurrentSelectionForm(this).deleteAll()

method insert*(this: CommandCurrentSelectionForm, itemNum: int32, item: ABCustomItem) =
        procCall ScrollCurrentSelectionForm(this).insert(itemNum, item)

method set*(this: CommandCurrentSelectionForm, itemNum: int32, item: ABCustomItem) =
        procCall ScrollCurrentSelectionForm(this).set(itemNum, item)

method paint*(this: CommandCurrentSelectionForm, graphics: Graphics) =
        this.myFontProcessor.process(graphics)
        procCall ScrollCurrentSelectionForm(this).paint(graphics)

method paintItem*(this: CommandCurrentSelectionForm, graphics: Graphics, index: int32, item: ABCustomItem, x: int32, y: int32): int32 {.discardable.} =
        this.selectedAnimationArray[index].paintXY(graphics, x, y)
        return procCall ScrollCurrentSelectionForm(this).paintItem(graphics, index, item, x, y)

method paintUnselectedItem*(this: CommandCurrentSelectionForm, graphics: Graphics, index: int32, item: ABCustomItem, x: int32, y: int32): int32 {.discardable.} =
        this.unSelectedAnimationArray[index].paintXY(graphics, x, y)
        return procCall ScrollCurrentSelectionForm(this).paintUnselectedItem(graphics, index, item, x, y)

when declared(newCommandCurrentSelectionFormHook6):
    newCommandCurrentSelectionFormHook6 = proc (title: string, items: JArray[ABCustomItem], border: int32, moveForSmallScreen: bool, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ScrollCurrentSelectionForm = newCommandCurrentSelectionForm(title, items, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)

