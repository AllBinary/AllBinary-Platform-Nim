# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

{.warning[UnusedImport]: off.}
import allbinary_java

type
    ChoiceGroupItem* = ref object of JObject

proc newChoiceGroupItem*(): ChoiceGroupItem


proc initChoiceGroupItem*(this: ChoiceGroupItem) =
    discard

proc newChoiceGroupItem*(): ChoiceGroupItem =
    result = ChoiceGroupItem()
    initChoiceGroupItem(result)

