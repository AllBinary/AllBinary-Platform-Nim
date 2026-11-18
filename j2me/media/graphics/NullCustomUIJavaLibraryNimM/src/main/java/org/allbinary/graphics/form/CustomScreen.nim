# Generated Code Do Not Modify
# package org.allbinary.graphics.form

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/form/CustomDisplayable as CustomDisplayableModule
export CustomDisplayableModule

type
    CustomScreen* = ref object of CustomDisplayable

proc newCustomScreen*(): CustomScreen


proc initCustomScreen*(this: CustomScreen) =
    initCustomDisplayable(this)

proc newCustomScreen*(): CustomScreen =
    result = CustomScreen()
    initCustomScreen(result)

when declared(newCustomScreenHook0):
    newCustomScreenHook0 = proc (): CustomDisplayable = newCustomScreen()

