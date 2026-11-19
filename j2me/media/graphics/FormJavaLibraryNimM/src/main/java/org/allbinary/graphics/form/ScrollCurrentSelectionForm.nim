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
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/canvas/Processor as ProcessorModule
export ProcessorModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule
import org/allbinary/graphics/form/item/ABCustomItem as ABCustomItemModule
export ABCustomItemModule
import org/allbinary/graphics/form/ScrollSelectionForm as ScrollSelectionFormModule
export ScrollSelectionFormModule
import org/allbinary/graphics/form/ItemIndexDx as ItemIndexDxModule
export ItemIndexDxModule
import org/allbinary/graphics/form/ItemPaintableFactory as ItemPaintableFactoryModule
export ItemPaintableFactoryModule
import org/allbinary/graphics/form/FormType as FormTypeModule
export FormTypeModule

type
    ScrollCurrentSelectionForm* = ref object of ScrollSelectionForm
        moveForSmallScreen*: bool
        updateMyFontProcessor*: MyFontProcessor
        myFontProcessor*: MyFontProcessor
        processor*: Processor
        preItemIndexDx*: ItemIndexDx
        dx*: int32
        dy*: int32
        maxWidth*: int32

converter jAsUpdateMyFontInterface*(value: ScrollCurrentSelectionForm): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
proc newScrollCurrentSelectionForm*(title: string, items: JArray[ABCustomItem], formPaintableFactory: ItemPaintableFactory, border: int32, adjustedExtraBorder: int32, moveForSmallScreen: bool, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ScrollCurrentSelectionForm
proc initScrollCurrentSelectionForm*(this: ScrollCurrentSelectionForm, title: string, items: JArray[ABCustomItem], formPaintableFactory: ItemPaintableFactory, border: int32, adjustedExtraBorder: int32, moveForSmallScreen: bool, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor)
method init*(this: ScrollCurrentSelectionForm, rectangle: Rectangle, formType: FormType)
method updateMeasurement*(this: ScrollCurrentSelectionForm, graphics: Graphics)
method processTempHorizontalForm*(this: ScrollCurrentSelectionForm) {.base.}
method processHorizontalForm*(this: ScrollCurrentSelectionForm) {.base.}
method processVerticalForm*(this: ScrollCurrentSelectionForm) {.base.}
method getXTempHorizontalForm*(this: ScrollCurrentSelectionForm, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.base, discardable.}
method getXHorizontalForm*(this: ScrollCurrentSelectionForm, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.base, discardable.}
method getXVerticalForm*(this: ScrollCurrentSelectionForm, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.base, discardable.}
method getDiffX*(this: ScrollCurrentSelectionForm, item: ABCustomItem): int32 {.discardable.}
method getDx*(this: ScrollCurrentSelectionForm): int32 {.discardable.}
method getDy*(this: ScrollCurrentSelectionForm): int32 {.discardable.}
method paint*(this: ScrollCurrentSelectionForm, graphics: Graphics)
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule
import org/allbinary/graphics/form/FormTypeFactory as FormTypeFactoryModule
export FormTypeFactoryModule
import org/allbinary/graphics/form/VerticalFormProcessor as VerticalFormProcessorModule
export VerticalFormProcessorModule
import org/allbinary/graphics/form/VerticalItemIndexDx as VerticalItemIndexDxModule
export VerticalItemIndexDxModule
import org/allbinary/graphics/form/HorizontalFormProcessor as HorizontalFormProcessorModule
export HorizontalFormProcessorModule
import org/allbinary/graphics/form/HorizontalItemIndexDx as HorizontalItemIndexDxModule
export HorizontalItemIndexDxModule
import org/allbinary/graphics/form/TempHorizontalFormProcessor as TempHorizontalFormProcessorModule
export TempHorizontalFormProcessorModule
import org/allbinary/graphics/form/TempHorizontalItemIndexDx as TempHorizontalItemIndexDxModule
export TempHorizontalItemIndexDxModule


# Java field initializers run after the base initializer
proc initFieldsScrollCurrentSelectionForm(this: ScrollCurrentSelectionForm) =
    
    this.updateMyFontProcessor = newUpdateMyFontProcessor(this)
    this.myFontProcessor = this.updateMyFontProcessor
    this.processor = Processor.getInstance()
    this.preItemIndexDx = ItemIndexDx.getInstance()
    this.dx = 0
    this.dy = 0
    this.maxWidth = 0
    discard

proc initScrollCurrentSelectionForm*(this: ScrollCurrentSelectionForm, title: string, items: JArray[ABCustomItem], formPaintableFactory: ItemPaintableFactory, border: int32, adjustedExtraBorder: int32, moveForSmallScreen: bool, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initScrollSelectionForm(this, title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor)
        this.initFieldsScrollCurrentSelectionForm()
        this.moveForSmallScreen = moveForSmallScreen

proc newScrollCurrentSelectionForm*(title: string, items: JArray[ABCustomItem], formPaintableFactory: ItemPaintableFactory, border: int32, adjustedExtraBorder: int32, moveForSmallScreen: bool, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ScrollCurrentSelectionForm =
    result = ScrollCurrentSelectionForm()
    initScrollCurrentSelectionForm(result, title, items, formPaintableFactory, border, adjustedExtraBorder, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)

method init*(this: ScrollCurrentSelectionForm, rectangle: Rectangle, formType: FormType) =
        jSuperStatement(procCall ScrollSelectionForm(this).init(rectangle, formType))
        let formTypeFactory: FormTypeFactory = FormTypeFactory.getInstance()
        if (jSame(formType, formTypeFactory.TEMP_HORIZONTAL_FORM)):
            this.processor = newTempHorizontalFormProcessor(this)
            this.preItemIndexDx = newTempHorizontalItemIndexDx(this)
        elif (jSame(formType, formTypeFactory.HORIZONTAL_FORM)):
            this.processor = newHorizontalFormProcessor(this)
            this.preItemIndexDx = newHorizontalItemIndexDx(this)
        elif (jSame(formType, formTypeFactory.VERTICAL_CENTER_FORM)):
            this.processor = newVerticalFormProcessor(this)
            this.preItemIndexDx = newVerticalItemIndexDx(this)
        elif (jSame(formType, formTypeFactory.NULL_FORM_TYPE)):
            discard
        else:
            this.logUtil.putF(formTypeFactory.UNK, this, this.commonStrings.INIT)
        this.myFontProcessor = this.updateMyFontProcessor

method updateMeasurement*(this: ScrollCurrentSelectionForm, graphics: Graphics) =
        this.myFontProcessor = MyFontProcessor.getInstance()

method processTempHorizontalForm*(this: ScrollCurrentSelectionForm) {.base.} =
        this.dx = this.x -% 30 +% (ashr(this.rectangle.getWidth(), 1))
        this.dy = this.y

method processHorizontalForm*(this: ScrollCurrentSelectionForm) {.base.} =
        let size: int32 = this.size()
        var totalWidth: int32 = 0
        var item: ABCustomItem = nil
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                item = this.get(index)
                totalWidth = totalWidth +% item.getMinimumWidth() +% this.border
        this.dx = this.x +% (ashr(this.rectangle.getWidth(), 1)) -% (ashr(totalWidth, 1))
        this.dy = this.y +% (ashr(this.rectangle.getHeight(), 1))
        if this.moveForSmallScreen:
            var maxTitleHeight: int32 = 175
            if this.dy < maxTitleHeight:
                this.dy = maxTitleHeight

method processVerticalForm*(this: ScrollCurrentSelectionForm) {.base.} =
        var totalHeight: int32 = 0
        let size: int32 = this.size()
        var item2: ABCustomItem = nil
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                item2 = this.get(index)
                if this.maxWidth < item2.getMinimumWidth():
                    this.maxWidth = item2.getMinimumWidth()
                totalHeight = totalHeight +% item2.getMinimumHeight() +% this.border
        this.dx = ((this.rectangle.getWidth() -% this.maxWidth) div 2)
        if this.size() > 0:
            this.dy = this.y +% ((this.rectangle.getHeight() -% totalHeight) div 2)
            if this.moveForSmallScreen:
                var maxTitleHeight: int32 = 175
                if this.dy < maxTitleHeight:
                    this.dy = maxTitleHeight
        else:
            this.dy = this.y

method getXTempHorizontalForm*(this: ScrollCurrentSelectionForm, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.base, discardable.} =
        return this.getDiffX(item)

method getXHorizontalForm*(this: ScrollCurrentSelectionForm, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.base, discardable.} =
        return 0

method getXVerticalForm*(this: ScrollCurrentSelectionForm, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.base, discardable.} =
        return this.getDiffX(item) +% this.halfBorder

method getDiffX*(this: ScrollCurrentSelectionForm, item: ABCustomItem): int32 {.discardable.} =
        return (ashr((this.maxWidth -% item.getMinimumWidth()), 1))

method getDx*(this: ScrollCurrentSelectionForm): int32 {.discardable.} =
        return this.dx

method getDy*(this: ScrollCurrentSelectionForm): int32 {.discardable.} =
        return this.dy

method paint*(this: ScrollCurrentSelectionForm, graphics: Graphics) =
        try:
            this.processor.process()
            var delta: int32 = 0
            var deltaX: int32 = this.getDx()
            var deltaY: int32 = this.getDy()
            let size: int32 = this.size()
            let formTypeFactory: FormTypeFactory = FormTypeFactory.getInstance()
            var item: ABCustomItem = nil
            block:
                var index: int32 = 0
                while index < size:
                    defer: index = index +% 1
                    item = this.get(index)
                    var diffX: int32 = this.preItemIndexDx.getDx(index, item, this.dx, this.dy)
                    if index == this.getSelectedIndex():
                        delta = this.paintItem(graphics, index, item, deltaX +% diffX, deltaY)
                        this.paintable.paint(graphics, index, deltaX +% diffX, deltaY)
                    else:
                        delta = this.paintUnselectedItem(graphics, index, item, deltaX +% diffX, deltaY)
                        this.paintable.paint(graphics, index, deltaX +% diffX, deltaY)
                    if (jSame(this.formType, formTypeFactory.TEMP_HORIZONTAL_FORM)):
                        discard
                    elif (jSame(this.formType, formTypeFactory.HORIZONTAL_FORM)):
                        deltaX = delta
                    elif (jSame(this.formType, formTypeFactory.VERTICAL_CENTER_FORM)):
                        deltaY = delta
                    else:
                        raise newJException("Exception", formTypeFactory.UNK)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.PAINT, e)

when declared(newScrollCurrentSelectionFormHook8):
    newScrollCurrentSelectionFormHook8 = proc (title: string, items: JArray[ABCustomItem], formPaintableFactory: ItemPaintableFactory, border: int32, adjustedExtraBorder: int32, moveForSmallScreen: bool, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ScrollSelectionForm = newScrollCurrentSelectionForm(title, items, formPaintableFactory, border, adjustedExtraBorder, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)

