# Generated Code Do Not Modify
# package org.eclipse.swt.graphics

{.warning[UnusedImport]: off.}
import allbinary_java

type
    Resource* = ref object of JObject

proc newResource*(): Resource
method dispose*(this: Resource) {.base.}
method isDisposed*(this: Resource): bool {.base, discardable.}


proc initResource*(this: Resource) =
    discard

proc newResource*(): Resource =
    result = Resource()
    initResource(result)

method dispose*(this: Resource) {.base.} =
        discard

method isDisposed*(this: Resource): bool {.base, discardable.} =
        return false

