# Generated Code Do Not Modify
# package org.allbinary

{.warning[UnusedImport]: off.}
import allbinary_java

type
    KotlinUtil* = ref object of JObject

proc newKotlinUtil*(): KotlinUtil
proc isKotlin*(t: typedesc[KotlinUtil]): bool {.discardable.}
proc getShortName*(t: typedesc[KotlinUtil]): string {.discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


proc initKotlinUtil*(this: KotlinUtil) =
    discard

proc newKotlinUtil*(): KotlinUtil =
    result = KotlinUtil()
    initKotlinUtil(result)

proc isKotlin*(t: typedesc[KotlinUtil]): bool {.discardable.} =
        return false

proc getShortName*(t: typedesc[KotlinUtil]): string {.discardable.} =
        return StringUtil.getInstance().EMPTY_STRING

