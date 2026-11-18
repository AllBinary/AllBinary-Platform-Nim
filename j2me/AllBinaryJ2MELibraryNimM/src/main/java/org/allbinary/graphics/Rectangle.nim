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
# package org.allbinary.graphics

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule

type
    Rectangle* = ref object of JObject
        point*: GPoint
        width*: int32
        height*: int32

proc newRectangle*(point: GPoint, width: int32, height: int32): Rectangle
proc initRectangle*(this: Rectangle, point: GPoint, width: int32, height: int32)
method getPoint*(this: Rectangle): GPoint {.base, discardable.}
method setPoint*(this: Rectangle, point: GPoint) {.base.}
method getMaxX*(this: Rectangle): int32 {.base, discardable.}
method getMaxY*(this: Rectangle): int32 {.base, discardable.}
method getWidth*(this: Rectangle): int32 {.base, discardable.}
method setWidth*(this: Rectangle, width: int32) {.base.}
method getHeight*(this: Rectangle): int32 {.base, discardable.}
method setHeight*(this: Rectangle, height: int32) {.base.}
method toString*(this: Rectangle): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule


# Java field initializers run after the base initializer
proc initFieldsRectangle(this: Rectangle) =
    
    
    
    discard

proc initRectangle*(this: Rectangle, point: GPoint, width: int32, height: int32) =
        this.initFieldsRectangle()
        this.point = point
        this.width = width
        this.height = height

proc newRectangle*(point: GPoint, width: int32, height: int32): Rectangle =
    result = Rectangle()
    initRectangle(result, point, width, height)

method getPoint*(this: Rectangle): GPoint {.base, discardable.} =
        return this.point

method setPoint*(this: Rectangle, point: GPoint) {.base.} =
        this.point = point

method getMaxX*(this: Rectangle): int32 {.base, discardable.} =
        return this.point.getX() +% this.width

method getMaxY*(this: Rectangle): int32 {.base, discardable.} =
        return this.point.getY() +% this.height

method getWidth*(this: Rectangle): int32 {.base, discardable.} =
        return this.width

method setWidth*(this: Rectangle, width: int32) {.base.} =
        this.width = width

method getHeight*(this: Rectangle): int32 {.base, discardable.} =
        return this.height

method setHeight*(this: Rectangle, height: int32) {.base.} =
        this.height = height

method toString*(this: Rectangle): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(this.getPoint().toString())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(CommonLabels.getInstance().WIDTH_LABEL)
        stringBuffer.appendint(this.getWidth())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(CommonLabels.getInstance().HEIGHT_LABEL)
        stringBuffer.appendint(this.getHeight())
        stringBuffer.append(" MaxX: ")
        stringBuffer.appendint(this.getMaxX())
        stringBuffer.append(" MaxY: ")
        stringBuffer.appendint(this.getMaxY())
        return stringBuffer.toString()

