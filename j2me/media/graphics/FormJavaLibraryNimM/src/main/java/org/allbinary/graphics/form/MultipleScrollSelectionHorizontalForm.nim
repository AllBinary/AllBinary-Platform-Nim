# Generated Code Do Not Modify
# package org.allbinary.graphics.form

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
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
import org/allbinary/graphics/paint/Paintable as PaintableModule
export PaintableModule
import org/allbinary/graphics/form/ScrollSelectionForm as ScrollSelectionFormModule
export ScrollSelectionFormModule
import org/allbinary/graphics/form/ItemPaintableFactory as ItemPaintableFactoryModule
export ItemPaintableFactoryModule
import org/allbinary/graphics/form/FormType as FormTypeModule
export FormTypeModule
import org/allbinary/graphics/form/ItemIndexPaintable as ItemIndexPaintableModule
export ItemIndexPaintableModule

type
    MultipleScrollSelectionHorizontalForm* = ref object of ScrollSelectionForm
        rectPaintable*: Paintable
        multipleScrollSelectionHorizontalFormTypeItemIndexPaintable*: ItemIndexPaintable
        backgroundColor*: int32
        myFontProcessor*: MyFontProcessor
        logged*: bool
        fontHeight*: int32

converter jAsUpdateMyFontInterface*(value: MultipleScrollSelectionHorizontalForm): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
proc newMultipleScrollSelectionHorizontalForm*(title: string, items: JArray[ABCustomItem], formPaintableFactory: ItemPaintableFactory, border: int32, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): MultipleScrollSelectionHorizontalForm
proc initMultipleScrollSelectionHorizontalForm*(this: MultipleScrollSelectionHorizontalForm, title: string, items: JArray[ABCustomItem], formPaintableFactory: ItemPaintableFactory, border: int32, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor)
proc createForm*(t: typedesc[MultipleScrollSelectionHorizontalForm], title: string, items: JArray[ABCustomItem], rectangle: Rectangle, formType: FormType, border: int32, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ScrollSelectionForm {.discardable.}
method fillRect*(this: MultipleScrollSelectionHorizontalForm, graphics: Graphics) {.base.}
method init*(this: MultipleScrollSelectionHorizontalForm, rectangle: Rectangle, formType: FormType)
method updateMeasurement*(this: MultipleScrollSelectionHorizontalForm, graphics: Graphics)
method paintHorizontal*(this: MultipleScrollSelectionHorizontalForm, graphics: Graphics, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.base, discardable.}
method paintVertical*(this: MultipleScrollSelectionHorizontalForm, graphics: Graphics, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.base, discardable.}
method getStartIndex*(this: MultipleScrollSelectionHorizontalForm): int32 {.discardable.}
method paint*(this: MultipleScrollSelectionHorizontalForm, graphics: Graphics)
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/J2MEUtil as J2MEUtilModule
export J2MEUtilModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule
import org/allbinary/graphics/paint/NullPaintable as NullPaintableModule
export NullPaintableModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/graphics/form/MultipleScrollSelectionFormRectPaintable as MultipleScrollSelectionFormRectPaintableModule
export MultipleScrollSelectionFormRectPaintableModule
import org/allbinary/graphics/form/FormTypeFactory as FormTypeFactoryModule
export FormTypeFactoryModule
import org/allbinary/graphics/form/MultipleScrollSelectionFormVerticalPaintable as MultipleScrollSelectionFormVerticalPaintableModule
export MultipleScrollSelectionFormVerticalPaintableModule
import org/allbinary/graphics/form/MultipleScrollSelectionFormHorizontalPaintable as MultipleScrollSelectionFormHorizontalPaintableModule
export MultipleScrollSelectionFormHorizontalPaintableModule


# Java field initializers run after the base initializer
proc initFieldsMultipleScrollSelectionHorizontalForm(this: MultipleScrollSelectionHorizontalForm) =
    this.rectPaintable = NullPaintable.getInstance()
    this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = ItemIndexPaintable.getInstance()
    this.backgroundColor = BasicColorFactory.getInstance().TRANSPARENT_GREY.intValue()
    this.myFontProcessor = newUpdateMyFontProcessor(this)
    this.logged = false
    this.fontHeight = 0
    discard

proc createForm*(t: typedesc[MultipleScrollSelectionHorizontalForm], title: string, items: JArray[ABCustomItem], rectangle: Rectangle, formType: FormType, border: int32, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ScrollSelectionForm {.discardable.} =
        let scrollSelectionForm: ScrollSelectionForm = newMultipleScrollSelectionHorizontalForm(title, items, ItemPaintableFactory.getInstance(), border, backgroundBasicColor, foregroundBasicColor)
        scrollSelectionForm.init(rectangle, formType)
        return scrollSelectionForm

proc initMultipleScrollSelectionHorizontalForm*(this: MultipleScrollSelectionHorizontalForm, title: string, items: JArray[ABCustomItem], formPaintableFactory: ItemPaintableFactory, border: int32, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initScrollSelectionForm(this, title, items, formPaintableFactory, border, 3, backgroundBasicColor, foregroundBasicColor)
        this.initFieldsMultipleScrollSelectionHorizontalForm()
        if J2MEUtil.isJ2ME() or J2MEUtil.isHTML():
            discard
        else:
            this.rectPaintable = newMultipleScrollSelectionFormRectPaintable(this)

proc newMultipleScrollSelectionHorizontalForm*(title: string, items: JArray[ABCustomItem], formPaintableFactory: ItemPaintableFactory, border: int32, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): MultipleScrollSelectionHorizontalForm =
    result = MultipleScrollSelectionHorizontalForm()
    initMultipleScrollSelectionHorizontalForm(result, title, items, formPaintableFactory, border, backgroundBasicColor, foregroundBasicColor)

method fillRect*(this: MultipleScrollSelectionHorizontalForm, graphics: Graphics) {.base.} =
        graphics.setColor(this.backgroundColor)
        graphics.fillRect(this.x, this.y, this.rectangle.getWidth(), this.rectangle.getHeight())

method init*(this: MultipleScrollSelectionHorizontalForm, rectangle: Rectangle, formType: FormType) =
        procCall ScrollSelectionForm(this).init(rectangle, formType)
        let formTypeFactory: FormTypeFactory = FormTypeFactory.getInstance()
        if formType == formTypeFactory.HORIZONTAL_FORM:
            this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = newMultipleScrollSelectionFormHorizontalPaintable(this)
        elif formType == formTypeFactory.VERTICAL_CENTER_FORM:
            this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = newMultipleScrollSelectionFormVerticalPaintable(this)
        elif formType == formTypeFactory.NULL_FORM_TYPE:
            discard
        else:
            raise newJException("Exception", formTypeFactory.UNK)

method updateMeasurement*(this: MultipleScrollSelectionHorizontalForm, graphics: Graphics) =
        let font: Font = graphics.getFont()
        this.fontHeight = font.getHeight()
        this.myFontProcessor = MyFontProcessor.getInstance()

method paintHorizontal*(this: MultipleScrollSelectionHorizontalForm, graphics: Graphics, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.base, discardable.} =
        var dx = dx
        var dx2: int32 = this.paintItem(graphics, index, item, dx, dy) +% this.border
        this.paintable.paint(graphics, index, dx, dy)
        dx = dx2
        return dx

method paintVertical*(this: MultipleScrollSelectionHorizontalForm, graphics: Graphics, index: int32, item: ABCustomItem, dx: int32, dy: int32): int32 {.base, discardable.} =
        this.paintItem(graphics, index, item, dx, dy)
        this.paintable.paint(graphics, index, dx, dy)
        return dx

method getStartIndex*(this: MultipleScrollSelectionHorizontalForm): int32 {.discardable.} =
        return this.getSelectedIndex()

method paint*(this: MultipleScrollSelectionHorizontalForm, graphics: Graphics) =
        try:
            this.myFontProcessor.process(graphics)
            let start: int32 = this.getStartIndex()
            let size: int32 = this.size()
            var dx: int32 = this.x
            let dy: int32 = this.y
            this.rectPaintable.paint(graphics)
            graphics.drawString(this.getTitle(), this.x, this.y -% this.fontHeight, 0)
            var item: ABCustomItem = nil
            block:
                var index: int32 = start
                while index < size:
                    defer: index = index +% 1
                    item = this.get(index)
                    if dx >= this.rectangle.getMaxX():
                        if this.logged:
                            discard
                        else:
                            this.logged = true
                            PreLogUtil.put(newStringMaker().append("painting beyond maxx: ").appendint(this.rectangle.getMaxX()).toString(), this, this.canvasStrings.PAINT)
                    dx = this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable.paint(graphics, index, item, dx, dy)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            PreLogUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.PAINT)

when declared(newMultipleScrollSelectionHorizontalFormHook6):
    newMultipleScrollSelectionHorizontalFormHook6 = proc (title: string, items: JArray[ABCustomItem], formPaintableFactory: ItemPaintableFactory, border: int32, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ScrollSelectionForm = newMultipleScrollSelectionHorizontalForm(title, items, formPaintableFactory, border, backgroundBasicColor, foregroundBasicColor)

