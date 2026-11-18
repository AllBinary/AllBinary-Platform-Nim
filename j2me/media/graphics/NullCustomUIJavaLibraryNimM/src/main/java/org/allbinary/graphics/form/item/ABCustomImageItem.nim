# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/form/item/ABCustomItem as ABCustomItemModule
export ABCustomItemModule

type
    ABCustomImageItem* = ref object of ABCustomItem
        yOffset*: int32

proc newABCustomImageItem*(label: string, image: Image, layout: int32, altText: string, basicColor: BasicColor, yOffset: int32): ABCustomImageItem
proc initABCustomImageItem*(this: ABCustomImageItem, label: string, image: Image, layout: int32, altText: string, basicColor: BasicColor, yOffset: int32)
method getImage*(this: ABCustomImageItem): Image {.base, discardable.}
import javax/microedition/lcdui/NullImage as NullImageModule
export NullImageModule


# Java field initializers run after the base initializer
proc initFieldsABCustomImageItem(this: ABCustomImageItem) =
    this.yOffset = 0
    discard

proc initABCustomImageItem*(this: ABCustomImageItem, label: string, image: Image, layout: int32, altText: string, basicColor: BasicColor, yOffset: int32) =
        initABCustomItem(this, label, basicColor, basicColor)
        this.initFieldsABCustomImageItem()

proc newABCustomImageItem*(label: string, image: Image, layout: int32, altText: string, basicColor: BasicColor, yOffset: int32): ABCustomImageItem =
    result = ABCustomImageItem()
    initABCustomImageItem(result, label, image, layout, altText, basicColor, yOffset)

method getImage*(this: ABCustomImageItem): Image {.base, discardable.} =
        return NullImage.NULL_IMAGEStatic

when declared(newABCustomImageItemHook6):
    newABCustomImageItemHook6 = proc (label: string, image: Image, layout: int32, altText: string, basicColor: BasicColor, yOffset: int32): ABCustomItem = newABCustomImageItem(label, image, layout, altText, basicColor, yOffset)

