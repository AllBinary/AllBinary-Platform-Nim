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
# package org.allbinary.game.graphics.hud

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule

type
    HudGraphicsPosition* = ref object of JObject
        anchor*: int32
        point*: GPoint

proc newHudGraphicsPosition*(point: GPoint, anchor: int32): HudGraphicsPosition
proc initHudGraphicsPosition*(this: HudGraphicsPosition, point: GPoint, anchor: int32)
method getAnchor*(this: HudGraphicsPosition): int32 {.base, discardable.}
method setAnchor*(this: HudGraphicsPosition, anchor: int32) {.base.}
method getPoint*(this: HudGraphicsPosition): GPoint {.base, discardable.}
method setPoint*(this: HudGraphicsPosition, point: GPoint) {.base.}
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule

var HudGraphicsPosition_NULL_HUD_GRAPHICS_POSITIONValue: HudGraphicsPosition
var HudGraphicsPosition_NULL_HUD_GRAPHICS_POSITIONSet = false
proc NULL_HUD_GRAPHICS_POSITION*(t: typedesc[HudGraphicsPosition]): HudGraphicsPosition =
    if not HudGraphicsPosition_NULL_HUD_GRAPHICS_POSITIONSet:
        HudGraphicsPosition_NULL_HUD_GRAPHICS_POSITIONSet = true
        HudGraphicsPosition_NULL_HUD_GRAPHICS_POSITIONValue = newHudGraphicsPosition(PointFactory.getInstance().ZERO_ZERO, 9)
    HudGraphicsPosition_NULL_HUD_GRAPHICS_POSITIONValue

# Java field initializers run after the base initializer
proc initFieldsHudGraphicsPosition(this: HudGraphicsPosition) =
    this.anchor = 0
    this.point = PointFactory.getInstance().ZERO_ZERO
    discard

proc initHudGraphicsPosition*(this: HudGraphicsPosition, point: GPoint, anchor: int32) =
        this.initFieldsHudGraphicsPosition()
        this.setAnchor(anchor)
        this.setPoint(point)

proc newHudGraphicsPosition*(point: GPoint, anchor: int32): HudGraphicsPosition =
    result = HudGraphicsPosition()
    initHudGraphicsPosition(result, point, anchor)

method getAnchor*(this: HudGraphicsPosition): int32 {.base, discardable.} =
        return this.anchor

method setAnchor*(this: HudGraphicsPosition, anchor: int32) {.base.} =
        this.anchor = anchor

method getPoint*(this: HudGraphicsPosition): GPoint {.base, discardable.} =
        return this.point

method setPoint*(this: HudGraphicsPosition, point: GPoint) {.base.} =
        this.point = point

