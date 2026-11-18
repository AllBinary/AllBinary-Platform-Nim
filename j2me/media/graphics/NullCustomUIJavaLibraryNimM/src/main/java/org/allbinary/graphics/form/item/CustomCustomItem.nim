# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule
import org/allbinary/graphics/form/item/ABCustomItem as ABCustomItemModule
export ABCustomItemModule

type
    CustomCustomItem* = ref object of ABCustomItem
        updateMyFontProcessor*: MyFontProcessor
        myFontProcessor*: MyFontProcessor

converter jAsUpdateMyFontInterface*(value: CustomCustomItem): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
proc newCustomCustomItem*(label: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): CustomCustomItem
proc initCustomCustomItem*(this: CustomCustomItem, label: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor)
method updateMeasurement*(this: CustomCustomItem, graphics: Graphics)
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule


# Java field initializers run after the base initializer
proc initFieldsCustomCustomItem(this: CustomCustomItem) =
    this.updateMyFontProcessor = newUpdateMyFontProcessor(this)
    this.myFontProcessor = this.updateMyFontProcessor
    discard

proc initCustomCustomItem*(this: CustomCustomItem, label: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        initABCustomItem(this, label, backgroundBasicColor, foregroundBasicColor)
        this.initFieldsCustomCustomItem()

proc newCustomCustomItem*(label: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): CustomCustomItem =
    result = CustomCustomItem()
    initCustomCustomItem(result, label, backgroundBasicColor, foregroundBasicColor)

method updateMeasurement*(this: CustomCustomItem, graphics: Graphics) =
        discard

when declared(newCustomCustomItemHook3):
    newCustomCustomItemHook3 = proc (label: string, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ABCustomItem = newCustomCustomItem(label, backgroundBasicColor, foregroundBasicColor)

