# Generated Code Do Not Modify
# package org.allbinary.graphics.form

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/displayable/CanvasStrings as CanvasStringsModule
export CanvasStringsModule
import org/allbinary/graphics/form/item/ABCustomItem as ABCustomItemModule
export ABCustomItemModule
import org/allbinary/graphics/form/ABCustomForm as ABCustomFormModule
export ABCustomFormModule
import org/allbinary/graphics/form/FormType as FormTypeModule
export FormTypeModule

type
    PaintableForm* = ref object of ABCustomForm
        canvasStrings*: CanvasStrings
        rectangle*: Rectangle
        x*: int32
        y*: int32
        formType*: FormType

proc newPaintableForm*(title: string, items: JArray[ABCustomItem], backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): PaintableForm
proc initPaintableForm*(this: PaintableForm, title: string, items: JArray[ABCustomItem], backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor)
proc getNullPaintableForm*(t: typedesc[PaintableForm]): PaintableForm {.discardable.}
method init*(this: PaintableForm, rectangle: Rectangle, formType: FormType) {.base.}
method getWidth*(this: PaintableForm): int32 {.discardable.}
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule
import org/allbinary/graphics/RectangleFactory as RectangleFactoryModule
export RectangleFactoryModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/graphics/form/FormTypeFactory as FormTypeFactoryModule
export FormTypeFactoryModule

var PaintableForm_NULL_PAINTABLE_FORMValue: JObject
var PaintableForm_NULL_PAINTABLE_FORMSet = false
proc NULL_PAINTABLE_FORM*(t: typedesc[PaintableForm]): JObject =
    if not PaintableForm_NULL_PAINTABLE_FORMSet:
        PaintableForm_NULL_PAINTABLE_FORMSet = true
        PaintableForm_NULL_PAINTABLE_FORMValue = NullUtil.getInstance().NULL_OBJECT
    PaintableForm_NULL_PAINTABLE_FORMValue
proc `NULL_PAINTABLE_FORM=`*(t: typedesc[PaintableForm], value: JObject) =
    PaintableForm_NULL_PAINTABLE_FORMSet = true
    PaintableForm_NULL_PAINTABLE_FORMValue = value

# Java field initializers run after the base initializer
proc initFieldsPaintableForm(this: PaintableForm) =
    this.canvasStrings = CanvasStrings.getInstance()
    this.rectangle = RectangleFactory.SINGLETON
    this.x = 0
    this.y = 0
    this.formType = FormTypeFactory.getInstance().NULL_FORM_TYPE
    discard

proc getNullPaintableForm*(t: typedesc[PaintableForm]): PaintableForm {.discardable.} =
        if PaintableForm.NULL_PAINTABLE_FORM == NullUtil.getInstance().NULL_OBJECT:
            PaintableForm.NULL_PAINTABLE_FORM = newPaintableForm(StringUtil.getInstance().EMPTY_STRING, newJArray[ABCustomItem](0, default(ABCustomItem)), BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
        return PaintableForm(JObject(PaintableForm.NULL_PAINTABLE_FORM))

proc initPaintableForm*(this: PaintableForm, title: string, items: JArray[ABCustomItem], backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initABCustomForm(this, title, items, backgroundBasicColor, foregroundBasicColor)
        this.initFieldsPaintableForm()
        this.setSelectedIndex(0)

proc newPaintableForm*(title: string, items: JArray[ABCustomItem], backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): PaintableForm =
    result = PaintableForm()
    initPaintableForm(result, title, items, backgroundBasicColor, foregroundBasicColor)

method init*(this: PaintableForm, rectangle: Rectangle, formType: FormType) {.base.} =
        this.rectangle = rectangle
        let point: GPoint = this.rectangle.getPoint()
        this.x = point.getX()
        this.y = point.getY()
        this.formType = formType

method getWidth*(this: PaintableForm): int32 {.discardable.} =
        return this.rectangle.getWidth()

when declared(newPaintableFormHook4):
    newPaintableFormHook4 = proc (title: string, items: JArray[ABCustomItem], backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ABCustomForm = newPaintableForm(title, items, backgroundBasicColor, foregroundBasicColor)

