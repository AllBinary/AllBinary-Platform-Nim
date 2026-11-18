# Generated Code Do Not Modify
# package org.allbinary.graphics.displayable

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Image as ImageModule
export ImageModule

type
    ScreenRelationalUtil* = ref object of JObject

proc newScreenRelationalUtil*(): ScreenRelationalUtil
proc getInstance*(t: typedesc[ScreenRelationalUtil]): ScreenRelationalUtil {.discardable.}
method getScaleImage*(this: ScreenRelationalUtil, image: Image): float32 {.base, discardable.}
method getScaleWH*(this: ScreenRelationalUtil, aWidth: int32, aHeight: int32): float32 {.base, discardable.}
method getScaleWHA*(this: ScreenRelationalUtil, aWidth: int32, aHeight: int32, add: int32): float32 {.base, discardable.}
method getScaledHeight*(this: ScreenRelationalUtil, aWidth: int32, aHeight: int32): int32 {.base, discardable.}
method getScaledHeightAdd*(this: ScreenRelationalUtil, aWidth: int32, aHeight: int32, add: int32): int32 {.base, discardable.}
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule

var ScreenRelationalUtil_instanceValue: ScreenRelationalUtil
var ScreenRelationalUtil_instanceSet = false
proc instance*(t: typedesc[ScreenRelationalUtil]): ScreenRelationalUtil =
    if not ScreenRelationalUtil_instanceSet:
        ScreenRelationalUtil_instanceSet = true
        ScreenRelationalUtil_instanceValue = newScreenRelationalUtil()
    ScreenRelationalUtil_instanceValue

proc initScreenRelationalUtil*(this: ScreenRelationalUtil) =
    discard

proc newScreenRelationalUtil*(): ScreenRelationalUtil =
    result = ScreenRelationalUtil()
    initScreenRelationalUtil(result)

proc getInstance*(t: typedesc[ScreenRelationalUtil]): ScreenRelationalUtil {.discardable.} =
        return ScreenRelationalUtil.instance

method getScaleImage*(this: ScreenRelationalUtil, image: Image): float32 {.base, discardable.} =
        return this.getScaleWH(image.getWidth(), image.getHeight())

method getScaleWH*(this: ScreenRelationalUtil, aWidth: int32, aHeight: int32): float32 {.base, discardable.} =
        return this.getScaleWHA(aWidth, aHeight, 20)

method getScaleWHA*(this: ScreenRelationalUtil, aWidth: int32, aHeight: int32, add: int32): float32 {.base, discardable.} =
        let displayInfoSingleton: DisplayInfoSingleton = DisplayInfoSingleton.getInstance()
        let last: JArray[int32] = displayInfoSingleton.getLast()
        let width: float32 = float32(last[displayInfoSingleton.WIDTH])
        let height: float32 = float32(last[displayInfoSingleton.HEIGHT])
        var largestSize: float32 = width
        if largestSize < height:
            largestSize = height
        var scale: float32 = (largestSize) / float32(aWidth)
        return scale

method getScaledHeight*(this: ScreenRelationalUtil, aWidth: int32, aHeight: int32): int32 {.base, discardable.} =
        return jToInt32(float64((this.getScaleWH(aWidth, aHeight) * float32(aHeight))))

method getScaledHeightAdd*(this: ScreenRelationalUtil, aWidth: int32, aHeight: int32, add: int32): int32 {.base, discardable.} =
        return jToInt32(float64((this.getScaleWHA(aWidth, aHeight, add) * float32(aHeight))))

