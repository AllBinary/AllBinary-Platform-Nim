# Generated Code Do Not Modify
# package org.allbinary.graph

{.warning[UnusedImport]: off.}
import allbinary_java

type
    E* = ref object of JObject

proc newE*(): E
method newInstance*(this: E): E {.base, discardable.}

var E_eValue: E
var E_eSet = false
proc e*(t: typedesc[E]): E =
    if not E_eSet:
        E_eSet = true
        E_eValue = newE()
    E_eValue

proc initE*(this: E) =
    discard

proc newE*(): E =
    result = E()
    initE(result)

method newInstance*(this: E): E {.base, discardable.} =
        return E.e

