# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule

type
    ABStringComponent* = ref object of JObject

proc newABStringComponent*(backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ABStringComponent
proc initABStringComponent*(this: ABStringComponent, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor)
method getBackgroundBasicColor*(this: ABStringComponent): BasicColor {.base, discardable.}
method getForegroundBasicColor*(this: ABStringComponent): BasicColor {.base, discardable.}
method setForegroundBasicColor*(this: ABStringComponent, foregroundBasicColor: BasicColor) {.base.}
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule

var ABStringComponent_NULL_STRING_COMPONENTValue: ABStringComponent
var ABStringComponent_NULL_STRING_COMPONENTSet = false
proc NULL_STRING_COMPONENT*(t: typedesc[ABStringComponent]): ABStringComponent =
    if not ABStringComponent_NULL_STRING_COMPONENTSet:
        ABStringComponent_NULL_STRING_COMPONENTSet = true
        ABStringComponent_NULL_STRING_COMPONENTValue = newABStringComponent(BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
    ABStringComponent_NULL_STRING_COMPONENTValue

method getBackgroundBasicColor*(this: ABStringComponent): BasicColor {.base, discardable.} =
        return BasicColorFactory.getInstance().WHITE

proc initABStringComponent*(this: ABStringComponent, backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor) =
        discard
        discard

proc newABStringComponent*(backgroundBasicColor: BasicColor, foregroundBasicColor: BasicColor): ABStringComponent =
    result = ABStringComponent()
    initABStringComponent(result, backgroundBasicColor, foregroundBasicColor)

method getForegroundBasicColor*(this: ABStringComponent): BasicColor {.base, discardable.} =
        return BasicColorFactory.getInstance().WHITE

method setForegroundBasicColor*(this: ABStringComponent, foregroundBasicColor: BasicColor) {.base.} =
        discard

