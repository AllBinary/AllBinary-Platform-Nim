# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import javax/microedition/lcdui/Screen as ScreenModule
export ScreenModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule

type
    ABCustomItem* = ref object of JObject

proc newABCustomItem*(label: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ABCustomItem
proc initABCustomItem*(this: ABCustomItem, label: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor)
proc getNullInstance*(t: typedesc[ABCustomItem]): ABCustomItem {.discardable.}
method setOwner*(this: ABCustomItem, owner: Screen) {.base.}
method paintXY*(this: ABCustomItem, graphics: Graphics, x: int32, y: int32) {.base.}
method paintUnselected*(this: ABCustomItem, graphics: Graphics, x: int32, y: int32) {.base.}
method isFocusable*(this: ABCustomItem): bool {.base, discardable.}
method getLabel*(this: ABCustomItem): string {.base, discardable.}
method setLabel*(this: ABCustomItem, label: string) {.base.}
method getHeight*(this: ABCustomItem): int32 {.base, discardable.}
method setHeight*(this: ABCustomItem, height: int32) {.base.}
method getValue*(this: ABCustomItem): float32 {.base, discardable.}
method setValue*(this: ABCustomItem, value: float32) {.base.}
method getMinimumWidth*(this: ABCustomItem): int32 {.base, discardable.}
method getMinimumHeight*(this: ABCustomItem): int32 {.base, discardable.}
method preMeasurement*(this: ABCustomItem, graphics: Graphics) {.base.}
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var ABCustomItem_NULL_CUSTOM_ITEMValue: JObject
var ABCustomItem_NULL_CUSTOM_ITEMSet = false
proc NULL_CUSTOM_ITEM*(t: typedesc[ABCustomItem]): JObject =
    if not ABCustomItem_NULL_CUSTOM_ITEMSet:
        ABCustomItem_NULL_CUSTOM_ITEMSet = true
        ABCustomItem_NULL_CUSTOM_ITEMValue = NullUtil.getInstance().NULL_OBJECT
    ABCustomItem_NULL_CUSTOM_ITEMValue
proc `NULL_CUSTOM_ITEM=`*(t: typedesc[ABCustomItem], value: JObject) =
    ABCustomItem_NULL_CUSTOM_ITEMSet = true
    ABCustomItem_NULL_CUSTOM_ITEMValue = value

proc getNullInstance*(t: typedesc[ABCustomItem]): ABCustomItem {.discardable.} =
        if ABCustomItem.NULL_CUSTOM_ITEM == NullUtil.getInstance().NULL_OBJECT:
            ABCustomItem.NULL_CUSTOM_ITEM = newABCustomItem(StringUtil.getInstance().EMPTY_STRING, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
        return ABCustomItem(JObject(ABCustomItem.NULL_CUSTOM_ITEM))

proc initABCustomItem*(this: ABCustomItem, label: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        discard
        discard

proc newABCustomItem*(label: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ABCustomItem =
    result = ABCustomItem()
    initABCustomItem(result, label, backgroundBasicColor, foregroundBasicColor)

method setOwner*(this: ABCustomItem, owner: Screen) {.base.} =
        discard

method paintXY*(this: ABCustomItem, graphics: Graphics, x: int32, y: int32) {.base.} =
        discard

method paintUnselected*(this: ABCustomItem, graphics: Graphics, x: int32, y: int32) {.base.} =
        discard

method isFocusable*(this: ABCustomItem): bool {.base, discardable.} =
        return false

method getLabel*(this: ABCustomItem): string {.base, discardable.} =
        return StringUtil.getInstance().EMPTY_STRING

method setLabel*(this: ABCustomItem, label: string) {.base.} =
        discard

method getHeight*(this: ABCustomItem): int32 {.base, discardable.} =
        return 0

method setHeight*(this: ABCustomItem, height: int32) {.base.} =
        discard

method getValue*(this: ABCustomItem): float32 {.base, discardable.} =
        return 0.0'f32

method setValue*(this: ABCustomItem, value: float32) {.base.} =
        discard

method getMinimumWidth*(this: ABCustomItem): int32 {.base, discardable.} =
        return 0

method getMinimumHeight*(this: ABCustomItem): int32 {.base, discardable.} =
        return 0

method preMeasurement*(this: ABCustomItem, graphics: Graphics) {.base.} =
        discard

