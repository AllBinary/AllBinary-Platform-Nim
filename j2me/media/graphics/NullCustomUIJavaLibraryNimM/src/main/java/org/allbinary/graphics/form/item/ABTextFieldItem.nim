# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/logic/util/visitor/Visitor as VisitorModule
export VisitorModule
import org/allbinary/graphics/form/item/ABTextItem as ABTextItemModule
export ABTextItemModule

type
    ABTextFieldItem* = ref object of ABTextItem
        font*: Font

proc newABTextFieldItem*(canvas: Canvas, visitor: Visitor, label: string, value: string, maxSize: int32, layout: int32, altText: string, font: Font, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ABTextFieldItem
proc initABTextFieldItem*(this: ABTextFieldItem, canvas: Canvas, visitor: Visitor, label: string, value: string, maxSize: int32, layout: int32, altText: string, font: Font, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor)
method getLabel*(this: ABTextFieldItem): string {.discardable.}
method setLabel*(this: ABTextFieldItem, label: string)
method getString*(this: ABTextFieldItem): string {.base, discardable.}
method setString*(this: ABTextFieldItem, string: string) {.base.}
method setFocus*(this: ABTextFieldItem, state: bool) {.base.}
method getFontHeight*(this: ABTextFieldItem): int32 {.base, discardable.}
method setBackgroundBasicColorP*(this: ABTextFieldItem, basicColor: BasicColor) {.base.}
method setForegroundBasicColorP*(this: ABTextFieldItem, basicColor: BasicColor) {.base.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsABTextFieldItem(this: ABTextFieldItem) =
    
    discard

proc initABTextFieldItem*(this: ABTextFieldItem, canvas: Canvas, visitor: Visitor, label: string, value: string, maxSize: int32, layout: int32, altText: string, font: Font, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initABTextItem(this, label, layout, altText, backgroundBasicColor, foregroundBasicColor)
        this.initFieldsABTextFieldItem()
        this.font = font

proc newABTextFieldItem*(canvas: Canvas, visitor: Visitor, label: string, value: string, maxSize: int32, layout: int32, altText: string, font: Font, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ABTextFieldItem =
    result = ABTextFieldItem()
    initABTextFieldItem(result, canvas, visitor, label, value, maxSize, layout, altText, font, backgroundBasicColor, foregroundBasicColor)

method getLabel*(this: ABTextFieldItem): string {.discardable.} =
        return StringUtil.getInstance().EMPTY_STRING

method setLabel*(this: ABTextFieldItem, label: string) =
        discard

method getString*(this: ABTextFieldItem): string {.base, discardable.} =
        return StringUtil.getInstance().EMPTY_STRING

method setString*(this: ABTextFieldItem, string: string) {.base.} =
        discard

method setFocus*(this: ABTextFieldItem, state: bool) {.base.} =
        discard

method getFontHeight*(this: ABTextFieldItem): int32 {.base, discardable.} =
        return this.font.getHeight()

method setBackgroundBasicColorP*(this: ABTextFieldItem, basicColor: BasicColor) {.base.} =
        discard

method setForegroundBasicColorP*(this: ABTextFieldItem, basicColor: BasicColor) {.base.} =
        discard

when declared(newABTextFieldItemHook10):
    newABTextFieldItemHook10 = proc (canvas: Canvas, visitor: Visitor, label: string, value: string, maxSize: int32, layout: int32, altText: string, font: Font, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ABTextItem = newABTextFieldItem(canvas, visitor, label, value, maxSize, layout, altText, font, backgroundBasicColor, foregroundBasicColor)

