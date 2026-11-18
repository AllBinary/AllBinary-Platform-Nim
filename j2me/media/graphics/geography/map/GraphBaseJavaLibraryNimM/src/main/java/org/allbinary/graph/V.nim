# Generated Code Do Not Modify
# package org.allbinary.graph

{.warning[UnusedImport]: off.}
import allbinary_java

type
    V* = ref object of JObject

proc newV*(): V
method getId*(this: V): int32 {.base, discardable.}


proc initV*(this: V) =
    discard

proc newV*(): V =
    result = V()
    initV(result)

method getId*(this: V): int32 {.base, discardable.} =
        return 0

