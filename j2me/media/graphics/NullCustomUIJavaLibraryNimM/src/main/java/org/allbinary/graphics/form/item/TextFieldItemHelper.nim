# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

{.warning[UnusedImport]: off.}
import allbinary_java

type
    TextFieldItemHelper* = ref object of JObject

proc newTextFieldItemHelper*(): TextFieldItemHelper


proc initTextFieldItemHelper*(this: TextFieldItemHelper) =
    discard

proc newTextFieldItemHelper*(): TextFieldItemHelper =
    result = TextFieldItemHelper()
    initTextFieldItemHelper(result)

