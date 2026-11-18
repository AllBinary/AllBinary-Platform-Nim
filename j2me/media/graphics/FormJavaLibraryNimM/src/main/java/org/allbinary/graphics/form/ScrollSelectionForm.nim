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
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/form/item/ABCustomItem as ABCustomItemModule
export ABCustomItemModule
import org/allbinary/math/RectangleCollisionUtil as RectangleCollisionUtilModule
export RectangleCollisionUtilModule
import org/allbinary/graphics/form/PaintableForm as PaintableFormModule
export PaintableFormModule
import org/allbinary/graphics/form/ItemPaintableFactory as ItemPaintableFactoryModule
export ItemPaintableFactoryModule
import org/allbinary/graphics/form/ItemIndexPaintable as ItemIndexPaintableModule
export ItemIndexPaintableModule
import org/allbinary/graphics/form/ItemIndexDx as ItemIndexDxModule
export ItemIndexDxModule
import org/allbinary/graphics/form/ItemPaintable as ItemPaintableModule
export ItemPaintableModule
import org/allbinary/graphics/form/FormType as FormTypeModule
export FormTypeModule

type
    ScrollSelectionForm* = ref object of PaintableForm
        rectangleCollisionUtil*: RectangleCollisionUtil
        border*: int32
        halfBorder*: int32
        buttonBasicColor*: BasicColor
        scrollSelectionFormFormTypeItemIndexPaintable*: ItemIndexPaintable
        formTypeItemIndexDx*: ItemIndexDx
        paintable*: ItemPaintable
        adjustedExtraBorder*: int32

proc newScrollSelectionForm*(title: string, items: JArray[ABCustomItem], formPaintableFactory: ItemPaintableFactory, border: int32, adjustedExtraBorder: int32, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ScrollSelectionForm
proc initScrollSelectionForm*(this: ScrollSelectionForm, title: string, items: JArray[ABCustomItem], formPaintableFactory: ItemPaintableFactory, border: int32, adjustedExtraBorder: int32, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor)
proc createForm*(t: typedesc[ScrollSelectionForm], title: string, items: JArray[ABCustomItem], formPaintableFactory: ItemPaintableFactory, border: int32, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): PaintableForm {.discardable.}
proc getNullScrollSelectionForm*(t: typedesc[ScrollSelectionForm]): ScrollSelectionForm {.discardable.}
proc getNullScrollSelectionFormHorizontal*(t: typedesc[ScrollSelectionForm]): ScrollSelectionForm {.discardable.}
method init*(this: ScrollSelectionForm, rectangle: Rectangle, formType: FormType)
method paintItemHorizontal*(this: ScrollSelectionForm, graphics: Graphics, index: int32, item: ABCustomItem, x: int32, y: int32): int32 {.base, discardable.}
method paintItemVertical*(this: ScrollSelectionForm, graphics: Graphics, index: int32, item: ABCustomItem, x: int32, y: int32): int32 {.base, discardable.}
method paintItemTempHorizontal*(this: ScrollSelectionForm, graphics: Graphics, index: int32, item: ABCustomItem, x: int32, y: int32): int32 {.base, discardable.}
method getSelectedIndexForPointHorizontalDx*(this: ScrollSelectionForm, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.base, discardable.}
method getSelectedIndexForPointVerticalDx*(this: ScrollSelectionForm, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.base, discardable.}
method getSelectedIndexForPointTempHorizontalDx*(this: ScrollSelectionForm, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.base, discardable.}
method append*(this: ScrollSelectionForm, item: ABCustomItem): int32 {.discardable.}
method getSelectedItem*(this: ScrollSelectionForm, point: GPoint): ABCustomItem {.base, discardable.}
method getItemIndex*(this: ScrollSelectionForm, item: ABCustomItem): int32 {.base, discardable.}
method getStartIndex*(this: ScrollSelectionForm): int32 {.base, discardable.}
method getSelectedIndexForPoint*(this: ScrollSelectionForm, point: GPoint): int32 {.base, discardable.}
method processInputKey*(this: ScrollSelectionForm, gameKeyCode: int32): int32 {.base, discardable.}
method isInForm*(this: ScrollSelectionForm, point: GPoint): bool {.base, discardable.}
method paintItem*(this: ScrollSelectionForm, graphics: Graphics, index: int32, item: ABCustomItem, x: int32, y: int32): int32 {.base, discardable.}
method paintUnselectedItem*(this: ScrollSelectionForm, graphics: Graphics, index: int32, item: ABCustomItem, x: int32, y: int32): int32 {.base, discardable.}
method getDiffX*(this: ScrollSelectionForm, item: ABCustomItem): int32 {.base, discardable.}
method getDx*(this: ScrollSelectionForm): int32 {.base, discardable.}
method getDy*(this: ScrollSelectionForm): int32 {.base, discardable.}
method setButtonBasicColor*(this: ScrollSelectionForm, buttonBasicColor: BasicColor) {.base.}
method getButtonBasicColor*(this: ScrollSelectionForm): BasicColor {.base, discardable.}
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/graphics/form/FormTypeFactory as FormTypeFactoryModule
export FormTypeFactoryModule
import org/allbinary/graphics/form/ScrollSelectionFormTempHorizontalPaintable as ScrollSelectionFormTempHorizontalPaintableModule
export ScrollSelectionFormTempHorizontalPaintableModule
import org/allbinary/graphics/form/ScrollSelectionFormTempHorizontalDx as ScrollSelectionFormTempHorizontalDxModule
export ScrollSelectionFormTempHorizontalDxModule
import org/allbinary/graphics/form/ScrollSelectionFormVerticalPaintable as ScrollSelectionFormVerticalPaintableModule
export ScrollSelectionFormVerticalPaintableModule
import org/allbinary/graphics/form/ScrollSelectionFormVericalDx as ScrollSelectionFormVericalDxModule
export ScrollSelectionFormVericalDxModule
import org/allbinary/graphics/form/ScrollSelectionFormHorizontalPaintable as ScrollSelectionFormHorizontalPaintableModule
export ScrollSelectionFormHorizontalPaintableModule
import org/allbinary/graphics/form/ScrollSelectionFormHorizontalDx as ScrollSelectionFormHorizontalDxModule
export ScrollSelectionFormHorizontalDxModule

var ScrollSelectionForm_NULL_SCROLL_SELECTION_FORMValue: JObject
var ScrollSelectionForm_NULL_SCROLL_SELECTION_FORMSet = false
proc NULL_SCROLL_SELECTION_FORM*(t: typedesc[ScrollSelectionForm]): JObject =
    if not ScrollSelectionForm_NULL_SCROLL_SELECTION_FORMSet:
        ScrollSelectionForm_NULL_SCROLL_SELECTION_FORMSet = true
        ScrollSelectionForm_NULL_SCROLL_SELECTION_FORMValue = NullUtil.getInstance().NULL_OBJECT
    ScrollSelectionForm_NULL_SCROLL_SELECTION_FORMValue
proc `NULL_SCROLL_SELECTION_FORM=`*(t: typedesc[ScrollSelectionForm], value: JObject) =
    ScrollSelectionForm_NULL_SCROLL_SELECTION_FORMSet = true
    ScrollSelectionForm_NULL_SCROLL_SELECTION_FORMValue = value
var ScrollSelectionForm_NULL_SCROLL_SELECTION_HORIZONTAL_FORMValue: JObject
var ScrollSelectionForm_NULL_SCROLL_SELECTION_HORIZONTAL_FORMSet = false
proc NULL_SCROLL_SELECTION_HORIZONTAL_FORM*(t: typedesc[ScrollSelectionForm]): JObject =
    if not ScrollSelectionForm_NULL_SCROLL_SELECTION_HORIZONTAL_FORMSet:
        ScrollSelectionForm_NULL_SCROLL_SELECTION_HORIZONTAL_FORMSet = true
        ScrollSelectionForm_NULL_SCROLL_SELECTION_HORIZONTAL_FORMValue = NullUtil.getInstance().NULL_OBJECT
    ScrollSelectionForm_NULL_SCROLL_SELECTION_HORIZONTAL_FORMValue
proc `NULL_SCROLL_SELECTION_HORIZONTAL_FORM=`*(t: typedesc[ScrollSelectionForm], value: JObject) =
    ScrollSelectionForm_NULL_SCROLL_SELECTION_HORIZONTAL_FORMSet = true
    ScrollSelectionForm_NULL_SCROLL_SELECTION_HORIZONTAL_FORMValue = value
var ScrollSelectionForm_INSIDE_FORMValue: string
var ScrollSelectionForm_INSIDE_FORMSet = false
proc INSIDE_FORM*(t: typedesc[ScrollSelectionForm]): string =
    if not ScrollSelectionForm_INSIDE_FORMSet:
        ScrollSelectionForm_INSIDE_FORMSet = true
        ScrollSelectionForm_INSIDE_FORMValue = " inside form"
    ScrollSelectionForm_INSIDE_FORMValue
var ScrollSelectionForm_IS_IN_FORMValue: string
var ScrollSelectionForm_IS_IN_FORMSet = false
proc IS_IN_FORM*(t: typedesc[ScrollSelectionForm]): string =
    if not ScrollSelectionForm_IS_IN_FORMSet:
        ScrollSelectionForm_IS_IN_FORMSet = true
        ScrollSelectionForm_IS_IN_FORMValue = "isInForm"
    ScrollSelectionForm_IS_IN_FORMValue
var ScrollSelectionForm_GET_SELECTED_INDEXValue: string
var ScrollSelectionForm_GET_SELECTED_INDEXSet = false
proc GET_SELECTED_INDEX*(t: typedesc[ScrollSelectionForm]): string =
    if not ScrollSelectionForm_GET_SELECTED_INDEXSet:
        ScrollSelectionForm_GET_SELECTED_INDEXSet = true
        ScrollSelectionForm_GET_SELECTED_INDEXValue = "getSelectedIndexForPoint"
    ScrollSelectionForm_GET_SELECTED_INDEXValue

# Java field initializers run after the base initializer
proc initFieldsScrollSelectionForm(this: ScrollSelectionForm) =
    this.rectangleCollisionUtil = RectangleCollisionUtil.getInstance()
    
    
    
    this.scrollSelectionFormFormTypeItemIndexPaintable = ItemIndexPaintable.getInstance()
    this.formTypeItemIndexDx = ItemIndexDx.getInstance()
    this.paintable = ItemPaintableFactory.getInstance()
    
    discard

proc createForm*(t: typedesc[ScrollSelectionForm], title: string, items: JArray[ABCustomItem], formPaintableFactory: ItemPaintableFactory, border: int32, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): PaintableForm {.discardable.} =
        try:
            if formPaintableFactory == ItemPaintableFactory.getInstance():
                return newScrollSelectionForm(title, items, formPaintableFactory, border, -3, backgroundBasicColor, foregroundBasicColor)
            else:
                let commonStrings: CommonStrings = CommonStrings.getInstance()
                let logUtil: LogUtil = LogUtil.getInstance()
                logUtil.putF(commonStrings.EXCEPTION, logUtil, commonStrings.EXCEPTION)
                return PaintableForm.getNullPaintableForm()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            let logUtil: LogUtil = LogUtil.getInstance()
            logUtil.put(commonStrings.EXCEPTION, logUtil, commonStrings.EXCEPTION, e)
            return PaintableForm.getNullPaintableForm()

proc getNullScrollSelectionForm*(t: typedesc[ScrollSelectionForm]): ScrollSelectionForm {.discardable.} =
        if ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM == NullUtil.getInstance().NULL_OBJECT:
            ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM = ScrollSelectionForm.createForm(StringUtil.getInstance().EMPTY_STRING, newJArray[ABCustomItem](0, default(ABCustomItem)), ItemPaintableFactory.getInstance(), 0, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
        return ScrollSelectionForm(JObject(ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM))

proc getNullScrollSelectionFormHorizontal*(t: typedesc[ScrollSelectionForm]): ScrollSelectionForm {.discardable.} =
        if ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM == NullUtil.getInstance().NULL_OBJECT:
            ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM = ScrollSelectionForm.createForm(StringUtil.getInstance().EMPTY_STRING, newJArray[ABCustomItem](0, default(ABCustomItem)), ItemPaintableFactory.getInstance(), 0, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
        return ScrollSelectionForm(JObject(ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM))

proc initScrollSelectionForm*(this: ScrollSelectionForm, title: string, items: JArray[ABCustomItem], formPaintableFactory: ItemPaintableFactory, border: int32, adjustedExtraBorder: int32, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initPaintableForm(this, title, items, backgroundBasicColor, foregroundBasicColor)
        this.initFieldsScrollSelectionForm()
        this.adjustedExtraBorder = adjustedExtraBorder
        this.buttonBasicColor = foregroundBasicColor
        this.border = border
        this.halfBorder = (ashr(border, 1))
        this.paintable = formPaintableFactory.getInstanceItemPaintable(this)

proc newScrollSelectionForm*(title: string, items: JArray[ABCustomItem], formPaintableFactory: ItemPaintableFactory, border: int32, adjustedExtraBorder: int32, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ScrollSelectionForm =
    result = ScrollSelectionForm()
    initScrollSelectionForm(result, title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor)

method init*(this: ScrollSelectionForm, rectangle: Rectangle, formType: FormType) =
        procCall PaintableForm(this).init(rectangle, formType)
        let formTypeFactory: FormTypeFactory = FormTypeFactory.getInstance()
        if formType == formTypeFactory.HORIZONTAL_FORM:
            this.scrollSelectionFormFormTypeItemIndexPaintable = newScrollSelectionFormHorizontalPaintable(this)
            this.formTypeItemIndexDx = newScrollSelectionFormHorizontalDx(this)
        elif formType == formTypeFactory.VERTICAL_CENTER_FORM:
            this.scrollSelectionFormFormTypeItemIndexPaintable = newScrollSelectionFormVerticalPaintable(this)
            this.formTypeItemIndexDx = newScrollSelectionFormVericalDx(this)
        elif formType == formTypeFactory.TEMP_HORIZONTAL_FORM:
            this.scrollSelectionFormFormTypeItemIndexPaintable = newScrollSelectionFormTempHorizontalPaintable(this)
            this.formTypeItemIndexDx = newScrollSelectionFormTempHorizontalDx(this)
        elif formType == formTypeFactory.NULL_FORM_TYPE:
            discard
        else:
            raise newJException("Exception", formTypeFactory.UNK)

method paintItemHorizontal*(this: ScrollSelectionForm, graphics: Graphics, index: int32, item: ABCustomItem, x: int32, y: int32): int32 {.base, discardable.} =
        let width: int32 = item.getMinimumWidth()
        return x +% width +% this.border

method paintItemVertical*(this: ScrollSelectionForm, graphics: Graphics, index: int32, item: ABCustomItem, x: int32, y: int32): int32 {.base, discardable.} =
        let height: int32 = item.getMinimumHeight()
        return y +% height +% this.border

method paintItemTempHorizontal*(this: ScrollSelectionForm, graphics: Graphics, index: int32, item: ABCustomItem, x: int32, y: int32): int32 {.base, discardable.} =
        return 0

method getSelectedIndexForPointHorizontalDx*(this: ScrollSelectionForm, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.base, discardable.} =
        return dx -% this.halfBorder

method getSelectedIndexForPointVerticalDx*(this: ScrollSelectionForm, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.base, discardable.} =
        return dx +% this.getDiffX(item)

method getSelectedIndexForPointTempHorizontalDx*(this: ScrollSelectionForm, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.base, discardable.} =
        return dx +% this.getDiffX(item)

method append*(this: ScrollSelectionForm, item: ABCustomItem): int32 {.discardable.} =
        return procCall PaintableForm(this).append(item)

method getSelectedItem*(this: ScrollSelectionForm, point: GPoint): ABCustomItem {.base, discardable.} =
        var index: int32 = this.getSelectedIndexForPoint(point)
        if index != -1:
            return this.get(index)
        else:
            return ABCustomItem.getNullInstance()

method getItemIndex*(this: ScrollSelectionForm, item: ABCustomItem): int32 {.base, discardable.} =
        var nextItem: ABCustomItem = nil
        let size: int32 = this.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                nextItem = ABCustomItem(JObject(this.get(index)))
                if nextItem == item:
                    return index
        return -1

method getStartIndex*(this: ScrollSelectionForm): int32 {.base, discardable.} =
        return 0

method getSelectedIndexForPoint*(this: ScrollSelectionForm, point: GPoint): int32 {.base, discardable.} =
        let start: int32 = this.getStartIndex()
        let size: int32 = this.size()
        var dx: int32 = this.getDx()
        var dy: int32 = this.getDy()
        let formTypeFactory: FormTypeFactory = FormTypeFactory.getInstance()
        let commonLabels: CommonLabels = CommonLabels.getInstance()
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(commonLabels.START_LABEL)
        stringBuffer.appendint(start)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(commonLabels.TOTAL_LABEL)
        stringBuffer.appendint(size)
        this.logUtil.putF(stringBuffer.toString(), this, ScrollSelectionForm.GET_SELECTED_INDEX)
        var item: ABCustomItem = nil
        var width: int32 = 0
        var height: int32 = 0
        var diffX: int32 = 0
        block:
            var index: int32 = start
            while index < size:
                defer: index = index +% 1
                item = this.get(index)
                width = item.getMinimumWidth()
                height = item.getMinimumHeight()
                diffX = this.formTypeItemIndexDx.getDx(index, item, dx, dy)
                if this.rectangleCollisionUtil.isInside(diffX, dy -% this.halfBorder, diffX +% width +% this.border, dy +% height +% this.halfBorder +% 1, point.getX(), point.getY()):
                    stringBuffer.delete(0, stringBuffer.length())
                    stringBuffer.append(commonLabels.ITEM_LABEL)
                    stringBuffer.append(item.getLabel())
                    stringBuffer.append(CommonSeps.getInstance().SPACE)
                    stringBuffer.append(commonLabels.INDEX_LABEL)
                    stringBuffer.appendint(index)
                    this.logUtil.putF(stringBuffer.toString(), this, ScrollSelectionForm.GET_SELECTED_INDEX)
                    return index
                if this.formType == formTypeFactory.HORIZONTAL_FORM:
                    dx = dx +% width +% this.border
                    if dx > this.rectangle.getMaxX():
                        break
                elif this.formType == formTypeFactory.VERTICAL_CENTER_FORM:
                    dy = dy +% height +% this.border
                    if dy > this.rectangle.getMaxY():
                        break
                elif this.formType == formTypeFactory.NULL_FORM_TYPE:
                    discard
                else:
                    raise newJException("Exception", formTypeFactory.UNK)
        return -1

method processInputKey*(this: ScrollSelectionForm, gameKeyCode: int32): int32 {.base, discardable.} =
        let formTypeFactory: FormTypeFactory = FormTypeFactory.getInstance()
        if this.size() == 0:
            return -1
        var index: int32 = this.getSelectedIndex()
        if this.formType == formTypeFactory.HORIZONTAL_FORM or this.formType == formTypeFactory.TEMP_HORIZONTAL_FORM:
            if gameKeyCode == Canvas.RIGHT:
                index = index +% 1
            elif gameKeyCode == Canvas.LEFT:
                index = index -% 1
        elif this.formType == formTypeFactory.VERTICAL_CENTER_FORM:
            if gameKeyCode == Canvas.DOWN:
                index = index +% 1
            elif gameKeyCode == Canvas.UP:
                index = index -% 1
        elif this.formType == formTypeFactory.NULL_FORM_TYPE:
            discard
        else:
            raise newJException("Exception", formTypeFactory.UNK)
        let max: int32 = this.size() -% 1
        if index < 0:
            this.setSelectedIndex(0)
        elif index > max:
            this.setSelectedIndex(max)
        else:
            this.setSelectedIndex(index)
        return -1

method isInForm*(this: ScrollSelectionForm, point: GPoint): bool {.base, discardable.} =
        if this.rectangleCollisionUtil.isInside(this.x, this.y -% this.halfBorder, this.rectangle.getMaxX() +% this.border, this.rectangle.getMaxY() +% this.border, point.getX(), point.getY()):
            this.logUtil.putF(newStringMaker().append(StringUtil.getInstance().toString(point)).append(ScrollSelectionForm.INSIDE_FORM).toString(), this, ScrollSelectionForm.IS_IN_FORM)
            return true
        return false

method paintItem*(this: ScrollSelectionForm, graphics: Graphics, index: int32, item: ABCustomItem, x: int32, y: int32): int32 {.base, discardable.} =
        item.paintXY(graphics, x, y)
        let width: int32 = item.getMinimumWidth()
        let height: int32 = item.getMinimumHeight()
        graphics.setColor(this.getButtonBasicColor().intValue())
        let adjustedBorder: int32 = 3
        graphics.drawRect(x -% this.halfBorder -% adjustedBorder, y -% this.halfBorder -% adjustedBorder, width +% this.border +% this.adjustedExtraBorder, height +% this.border +% this.adjustedExtraBorder)
        return this.scrollSelectionFormFormTypeItemIndexPaintable.paint(graphics, index, item, x, y)

method paintUnselectedItem*(this: ScrollSelectionForm, graphics: Graphics, index: int32, item: ABCustomItem, x: int32, y: int32): int32 {.base, discardable.} =
        graphics.setColor(this.getButtonBasicColor().intValue())
        item.paintUnselected(graphics, x, y)
        return this.scrollSelectionFormFormTypeItemIndexPaintable.paint(graphics, index, item, x, y)

method getDiffX*(this: ScrollSelectionForm, item: ABCustomItem): int32 {.base, discardable.} =
        return 0

method getDx*(this: ScrollSelectionForm): int32 {.base, discardable.} =
        return this.x

method getDy*(this: ScrollSelectionForm): int32 {.base, discardable.} =
        return this.y

method setButtonBasicColor*(this: ScrollSelectionForm, buttonBasicColor: BasicColor) {.base.} =
        this.buttonBasicColor = buttonBasicColor

method getButtonBasicColor*(this: ScrollSelectionForm): BasicColor {.base, discardable.} =
        return this.buttonBasicColor

when declared(newScrollSelectionFormHook7):
    newScrollSelectionFormHook7 = proc (title: string, items: JArray[ABCustomItem], formPaintableFactory: ItemPaintableFactory, border: int32, adjustedExtraBorder: int32, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): PaintableForm = newScrollSelectionForm(title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor)

