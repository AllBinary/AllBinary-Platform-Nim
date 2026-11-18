# Generated Code Do Not Modify
# package java.lang

{.warning[UnusedImport]: off.}
import allbinary_java

#J2SE to J2ME compatibility
type
    Deprecated* = ref object of JObject

proc newDeprecated*(): Deprecated


proc initDeprecated*(this: Deprecated) =
    discard

proc newDeprecated*(): Deprecated =
    result = Deprecated()
    initDeprecated(result)

