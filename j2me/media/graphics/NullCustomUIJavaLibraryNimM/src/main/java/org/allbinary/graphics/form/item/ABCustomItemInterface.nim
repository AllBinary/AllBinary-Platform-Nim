# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule

type
    ABCustomItemInterface* = ref object of JObject


method getMinimumWidth*(this: ABCustomItemInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getMinimumWidth")

method getMinimumHeight*(this: ABCustomItemInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getMinimumHeight")

method getLabel*(this: ABCustomItemInterface): string {.base, discardable.} =
        raise newJException("AbstractMethodError", "getLabel")

method paintXY*(this: ABCustomItemInterface, graphics: Graphics, x: int32, y: int32) {.base.} =
        raise newJException("AbstractMethodError", "paintXY")

method paintUnselected*(this: ABCustomItemInterface, graphics: Graphics, x: int32, y: int32) {.base.} =
        raise newJException("AbstractMethodError", "paintUnselected")

