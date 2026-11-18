# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

{.warning[UnusedImport]: off.}
import allbinary_java

type
    ImageItem* = ref object of JObject

proc newImageItem*(): ImageItem


proc initImageItem*(this: ImageItem) =
    discard

proc newImageItem*(): ImageItem =
    result = ImageItem()
    initImageItem(result)

