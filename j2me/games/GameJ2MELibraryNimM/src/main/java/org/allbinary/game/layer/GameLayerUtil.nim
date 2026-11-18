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
# package org.allbinary.game.layer

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule

type
    GameLayerUtil* = ref object of JObject

proc newGameLayerUtil*(): GameLayerUtil
proc initGameLayerUtil*(this: GameLayerUtil)
proc isOnScreen*(t: typedesc[GameLayerUtil], layer: AllBinaryLayer): bool {.discardable.}
proc isInside*(t: typedesc[GameLayerUtil], rectX1: int32, rectY1: int32, rectX2: int32, rectY2: int32, rect2X1: int32, rect2Y1: int32, rect2X2: int32, rect2Y2: int32): bool {.discardable.}
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/view/ViewPositionBase as ViewPositionBaseModule
export ViewPositionBaseModule


proc initGameLayerUtil*(this: GameLayerUtil) =
        discard
        discard

proc newGameLayerUtil*(): GameLayerUtil =
    result = GameLayerUtil()
    initGameLayerUtil(result)

proc isOnScreen*(t: typedesc[GameLayerUtil], layer: AllBinaryLayer): bool {.discardable.} =
        var displayInfo: DisplayInfoSingleton = DisplayInfoSingleton.getInstance()
        var viewPosition: ViewPositionBase = layer.getViewPosition()
        return GameLayerUtil.isInside(viewPosition.getX(), viewPosition.getY(), viewPosition.getX2(), viewPosition.getY2(), 0, 0, displayInfo.getLastWidth(), displayInfo.getLastHeight())

proc isInside*(t: typedesc[GameLayerUtil], rectX1: int32, rectY1: int32, rectX2: int32, rectY2: int32, rect2X1: int32, rect2Y1: int32, rect2X2: int32, rect2Y2: int32): bool {.discardable.} =
        if rectX1 > rect2X1 and rectX2 < rect2X2 and rectY1 > rect2Y1 and rectY2 < rect2Y2:
            return true
        else:
            return false

