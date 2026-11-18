# Generated Code Do Not Modify
# package org.allbinary.graphics.form

{.warning[UnusedImport]: off.}
import allbinary_java

type
    CustomDisplayable* = ref object of JObject

proc newCustomDisplayable*(): CustomDisplayable
method setTitle*(this: CustomDisplayable, title: string) {.base.}


proc initCustomDisplayable*(this: CustomDisplayable) =
    discard

proc newCustomDisplayable*(): CustomDisplayable =
    result = CustomDisplayable()
    initCustomDisplayable(result)

method setTitle*(this: CustomDisplayable, title: string) {.base.} =
        discard

