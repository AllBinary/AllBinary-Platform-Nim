# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/form/item/CustomCustomItem as CustomCustomItemModule
export CustomCustomItemModule
import org/allbinary/graphics/form/item/ABCustomItemInterface as ABCustomItemInterfaceModule
export ABCustomItemInterfaceModule
import org/allbinary/graphics/form/item/ABStringComponent as ABStringComponentModule
export ABStringComponentModule

type
    ABTextItem* = ref object of CustomCustomItem

converter jAsABCustomItemInterface*(value: ABTextItem): ABCustomItemInterface = cast[ABCustomItemInterface](value)
proc newABTextItem*(label: string, layout: int32, altText: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ABTextItem
proc initABTextItem*(this: ABTextItem, label: string, layout: int32, altText: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor)
method keyPressed*(this: ABTextItem, keyCode: int32) {.base.}
method paintUnselected*(this: ABTextItem, graphics: Graphics, x: int32, y: int32)
method getLabelStringComponent*(this: ABTextItem): ABStringComponent {.base, discardable.}
method getMinimumWidth*(this: ABTextItem): int32 {.discardable.}
method getMinimumHeight*(this: ABTextItem): int32 {.discardable.}
method getLabel*(this: ABTextItem): string {.discardable.}
method paintXY*(this: ABTextItem, graphics: Graphics, x: int32, y: int32)


proc initABTextItem*(this: ABTextItem, label: string, layout: int32, altText: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initCustomCustomItem(this, label, backgroundBasicColor, foregroundBasicColor)

proc newABTextItem*(label: string, layout: int32, altText: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ABTextItem =
    result = ABTextItem()
    initABTextItem(result, label, layout, altText, backgroundBasicColor, foregroundBasicColor)

method keyPressed*(this: ABTextItem, keyCode: int32) {.base.} =
        discard

method paintUnselected*(this: ABTextItem, graphics: Graphics, x: int32, y: int32) =
        discard

method getLabelStringComponent*(this: ABTextItem): ABStringComponent {.base, discardable.} =
        return ABStringComponent.NULL_STRING_COMPONENT

method getMinimumWidth*(this: ABTextItem): int32 {.discardable.} =
        return procCall CustomCustomItem(this).getMinimumWidth()

method getMinimumHeight*(this: ABTextItem): int32 {.discardable.} =
        return procCall CustomCustomItem(this).getMinimumHeight()

method getLabel*(this: ABTextItem): string {.discardable.} =
        return procCall CustomCustomItem(this).getLabel()

method paintXY*(this: ABTextItem, graphics: Graphics, x: int32, y: int32) =
        procCall CustomCustomItem(this).paintXY(graphics, x, y)

when declared(newABTextItemHook5):
    newABTextItemHook5 = proc (label: string, layout: int32, altText: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): CustomCustomItem = newABTextItem(label, layout, altText, backgroundBasicColor, foregroundBasicColor)

