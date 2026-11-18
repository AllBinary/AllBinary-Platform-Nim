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
    Line* = ref object of JObject
        p1*: GPoint
        p2*: GPoint
        deltaX*: float64
        deltaY*: float64

proc newLine*(p1: GPoint, p2: GPoint): Line
proc initLine*(this: Line, p1: GPoint, p2: GPoint)
method getGradient*(this: Line): float64 {.base, discardable.}
method update*(this: Line) {.base.}
method getDeltaX*(this: Line): float64 {.base, discardable.}
method getDeltaY*(this: Line): float64 {.base, discardable.}
method getP1*(this: Line): GPoint {.base, discardable.}
method getP2*(this: Line): GPoint {.base, discardable.}
method setP1*(this: Line, p1: GPoint) {.base.}
method setP2*(this: Line, p2: GPoint) {.base.}
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule


# Java field initializers run after the base initializer
proc initFieldsLine(this: Line) =
    
    
    this.deltaX = 0.0
    this.deltaY = 0.0
    discard

proc initLine*(this: Line, p1: GPoint, p2: GPoint) =
        this.initFieldsLine()
        this.p1 = PointFactory.getInstance().ZERO_ZERO
        this.p2 = this.p1
        this.setP1(p1)
        this.setP2(p2)

proc newLine*(p1: GPoint, p2: GPoint): Line =
    result = Line()
    initLine(result, p1, p2)

method getGradient*(this: Line): float64 {.base, discardable.} =
        return this.getDeltaY() / this.getDeltaX()

method update*(this: Line) {.base.} =
        this.deltaX = float64(this.getP1().getX()) - float64(this.getP2().getX())
        this.deltaY = float64(this.getP1().getY()) - float64(this.getP2().getY())

method getDeltaX*(this: Line): float64 {.base, discardable.} =
        return this.deltaX

method getDeltaY*(this: Line): float64 {.base, discardable.} =
        return this.deltaY

method getP1*(this: Line): GPoint {.base, discardable.} =
        return this.p1

method getP2*(this: Line): GPoint {.base, discardable.} =
        return this.p2

method setP1*(this: Line, p1: GPoint) {.base.} =
        this.p1 = p1
        this.update()

method setP2*(this: Line, p2: GPoint) {.base.} =
        this.p2 = p2
        this.update()

