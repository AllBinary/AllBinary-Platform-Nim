# Generated Code Do Not Modify
# package org.allbinary.graphics.form

{.warning[UnusedImport]: off.}
import allbinary_java

type
    ScreenInfo* = ref object of JObject
        SMALL_WIDTH*: int32
        SMALL_HEIGHT*: int32
        MEDIUM_WIDTH*: int32
        MEDIUM_HEIGHT*: int32

proc newScreenInfo*(): ScreenInfo
proc getInstance*(t: typedesc[ScreenInfo]): ScreenInfo {.discardable.}

var ScreenInfo_instanceValue: ScreenInfo
var ScreenInfo_instanceSet = false
proc instance*(t: typedesc[ScreenInfo]): ScreenInfo =
    if not ScreenInfo_instanceSet:
        ScreenInfo_instanceSet = true
        ScreenInfo_instanceValue = newScreenInfo()
    ScreenInfo_instanceValue

# Java field initializers run after the base initializer
proc initFieldsScreenInfo(this: ScreenInfo) =
    this.SMALL_WIDTH = 320
    this.SMALL_HEIGHT = 240
    this.MEDIUM_WIDTH = 800
    this.MEDIUM_HEIGHT = 600
    discard

proc initScreenInfo*(this: ScreenInfo) =
    this.initFieldsScreenInfo()

proc newScreenInfo*(): ScreenInfo =
    result = ScreenInfo()
    initScreenInfo(result)

proc getInstance*(t: typedesc[ScreenInfo]): ScreenInfo {.discardable.} =
        return ScreenInfo.instance

