#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2011 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.layer

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule

type
    Layer* = ref object of JObject
        logUtil*: LogUtil
        x*: int32
        y*: int32
        z*: int32
        width*: int32
        height*: int32
        visible*: bool

proc newLayer*(width: int32, height: int32): Layer
proc initLayer*(this: Layer, width: int32, height: int32)
method setPosition*(this: Layer, x: int32, y: int32, z: int32) {.base.}
method moveDXY*(this: Layer, dx: int32, dy: int32) {.base.}
method moveDXYZ*(this: Layer, dx: int32, dy: int32, dz: int32) {.base.}
method getXP*(this: Layer): int32 {.base, discardable.}
method getYP*(this: Layer): int32 {.base, discardable.}
method getZP*(this: Layer): int32 {.base, discardable.}
method getWidth*(this: Layer): int32 {.base, discardable.}
method getHeight*(this: Layer): int32 {.base, discardable.}
method getDepth*(this: Layer): int64 {.base, discardable.}
method setVisible*(this: Layer, visible: bool) {.base.}
method isVisible*(this: Layer): bool {.base, discardable.}
method paint*(this: Layer, graphics: Graphics) {.base.}
method setLayerWidth*(this: Layer, width: int32) {.base.}
method setLayerHeight*(this: Layer, height: int32) {.base.}
method toStringAppend*(this: Layer, stringBuffer: StringMaker) {.base.}
import org/allbinary/graphics/displayable/CanvasStrings as CanvasStringsModule
export CanvasStringsModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var Layer_IDValue: int32
var Layer_IDSet = false
proc ID*(t: typedesc[Layer]): int32 =
    if not Layer_IDSet:
        Layer_IDSet = true
        Layer_IDValue = SmallIntegerSingletonFactory.getInstance().getAt(0)
    Layer_IDValue

# Java field initializers run after the base initializer
proc initFieldsLayer(this: Layer) =
    this.logUtil = LogUtil.getInstance()
    this.x = 0
    this.y = 0
    this.z = 3
    this.width = 0
    this.height = 0
    this.visible = true
    discard

proc initLayer*(this: Layer, width: int32, height: int32) =
        this.initFieldsLayer()
        this.setLayerWidth(width)
        this.setLayerHeight(height)

proc newLayer*(width: int32, height: int32): Layer =
    result = Layer()
    initLayer(result, width, height)

method setPosition*(this: Layer, x: int32, y: int32, z: int32) {.base.} =
        this.x = x
        this.y = y
        this.z = z

method moveDXY*(this: Layer, dx: int32, dy: int32) {.base.} =
        this.x = this.x +% dx
        this.y = this.y +% dy

method moveDXYZ*(this: Layer, dx: int32, dy: int32, dz: int32) {.base.} =
        this.x = this.x +% dx
        this.y = this.y +% dy
        this.z = this.z +% dz

method getXP*(this: Layer): int32 {.base, discardable.} =
        return this.x

method getYP*(this: Layer): int32 {.base, discardable.} =
        return this.y

method getZP*(this: Layer): int32 {.base, discardable.} =
        return this.z

method getWidth*(this: Layer): int32 {.base, discardable.} =
        return this.width

method getHeight*(this: Layer): int32 {.base, discardable.} =
        return this.height

method getDepth*(this: Layer): int64 {.base, discardable.} =
        return 0'i64

method setVisible*(this: Layer, visible: bool) {.base.} =
        this.visible = visible

method isVisible*(this: Layer): bool {.base, discardable.} =
        return this.visible

method paint*(this: Layer, graphics: Graphics) {.base.} =
        let commonStrings: CommonStrings = CommonStrings.getInstance()
        let canvasStrings: CanvasStrings = CanvasStrings.getInstance()
        this.logUtil.putF(commonStrings.NOT_IMPLEMENTED, this, canvasStrings.PAINT)

method setLayerWidth*(this: Layer, width: int32) {.base.} =
        if width < 0:
            raise newJException("IllegalArgumentException", "")
        this.width = width

method setLayerHeight*(this: Layer, height: int32) {.base.} =
        if height < 0:
            raise newJException("IllegalArgumentException", "")
        this.height = height

method toStringAppend*(this: Layer, stringBuffer: StringMaker) {.base.} =
        discard

