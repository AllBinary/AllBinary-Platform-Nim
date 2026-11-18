# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/form/item/ABCustomItem as ABCustomItemModule
export ABCustomItemModule

type
    ABCustomGaugeItem* = ref object of ABCustomItem

proc newABCustomGaugeItem*(label: string, maxValue: int32, initialValue: int32, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ABCustomGaugeItem
proc initABCustomGaugeItem*(this: ABCustomGaugeItem, label: string, maxValue: int32, initialValue: int32, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor)
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var ABCustomGaugeItem_NULL_GAUGE_ITEMValue: ABCustomGaugeItem
var ABCustomGaugeItem_NULL_GAUGE_ITEMSet = false
proc NULL_GAUGE_ITEM*(t: typedesc[ABCustomGaugeItem]): ABCustomGaugeItem =
    if not ABCustomGaugeItem_NULL_GAUGE_ITEMSet:
        ABCustomGaugeItem_NULL_GAUGE_ITEMSet = true
        ABCustomGaugeItem_NULL_GAUGE_ITEMValue = newABCustomGaugeItem(StringUtil.getInstance().EMPTY_STRING, 1, 0, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
    ABCustomGaugeItem_NULL_GAUGE_ITEMValue

proc initABCustomGaugeItem*(this: ABCustomGaugeItem, label: string, maxValue: int32, initialValue: int32, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initABCustomItem(this, label, backgroundBasicColor, foregroundBasicColor)

proc newABCustomGaugeItem*(label: string, maxValue: int32, initialValue: int32, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ABCustomGaugeItem =
    result = ABCustomGaugeItem()
    initABCustomGaugeItem(result, label, maxValue, initialValue, backgroundBasicColor, foregroundBasicColor)

when declared(newABCustomGaugeItemHook5):
    newABCustomGaugeItemHook5 = proc (label: string, maxValue: int32, initialValue: int32, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ABCustomItem = newABCustomGaugeItem(label, maxValue, initialValue, backgroundBasicColor, foregroundBasicColor)

