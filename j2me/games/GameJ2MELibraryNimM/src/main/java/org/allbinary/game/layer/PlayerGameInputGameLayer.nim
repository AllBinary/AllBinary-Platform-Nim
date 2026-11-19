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
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/input/PlayerGameInput as PlayerGameInputModule
export PlayerGameInputModule
import org/allbinary/game/input/PlayerGameInputCompositeInterface as PlayerGameInputCompositeInterfaceModule
export PlayerGameInputCompositeInterfaceModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/game/layer/AllBinaryGameLayer as AllBinaryGameLayerModule
export AllBinaryGameLayerModule

type
    PlayerGameInputGameLayer* = ref object of AllBinaryGameLayer
        playerGameInput*: PlayerGameInput

converter jAsPlayerGameInputCompositeInterface*(value: PlayerGameInputGameLayer): PlayerGameInputCompositeInterface = cast[PlayerGameInputCompositeInterface](value)
converter jAsGameInputInterface*(value: PlayerGameInputGameLayer): GameInputInterface = cast[GameInputInterface](value)
converter jAsNamedInterface*(value: PlayerGameInputGameLayer): NamedInterface = cast[NamedInterface](value)
proc newPlayerGameInputGameLayer*(playerInputId: int32): PlayerGameInputGameLayer
proc initPlayerGameInputGameLayer*(this: PlayerGameInputGameLayer, playerInputId: int32)
method getPlayerGameInput*(this: PlayerGameInputGameLayer): PlayerGameInput {.discardable.}
method initInputProcessors*(this: PlayerGameInputGameLayer)
method processInput*(this: PlayerGameInputGameLayer, myManager: AllBinaryLayerManager)
method paint*(this: PlayerGameInputGameLayer, graphics: Graphics)
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/graphics/Rectangle as RectangleModule
export RectangleModule
import org/allbinary/graphics/displayable/CanvasStrings as CanvasStringsModule
export CanvasStringsModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/view/StaticViewPosition as StaticViewPositionModule
export StaticViewPositionModule


# Java field initializers run after the base initializer
proc initFieldsPlayerGameInputGameLayer(this: PlayerGameInputGameLayer) =
    
    discard

proc initPlayerGameInputGameLayer*(this: PlayerGameInputGameLayer, playerInputId: int32) =
        initAllBinaryGameLayer(this, StringUtil.getInstance().EMPTY_STRING, newRectangle(PointFactory.getInstance().ZERO_ZERO, 0, 0), newStaticViewPosition(0, 0, 0))
        this.initFieldsPlayerGameInputGameLayer()
        this.playerGameInput = newPlayerGameInput(this.getGameKeyEventList(), newBasicArrayListD(), playerInputId)
        let canvasStrings: CanvasStrings = CanvasStrings.getInstance()
        this.logUtil.putF("Danger Danger Danger: Should Not Be Called Except For Testing Input", this, canvasStrings.PAINT)

proc newPlayerGameInputGameLayer*(playerInputId: int32): PlayerGameInputGameLayer =
    result = PlayerGameInputGameLayer()
    initPlayerGameInputGameLayer(result, playerInputId)

method getPlayerGameInput*(this: PlayerGameInputGameLayer): PlayerGameInput {.discardable.} =
        return this.playerGameInput

method initInputProcessors*(this: PlayerGameInputGameLayer) =
        discard

method processInput*(this: PlayerGameInputGameLayer, myManager: AllBinaryLayerManager) =
        discard

method paint*(this: PlayerGameInputGameLayer, graphics: Graphics) =
        discard

when declared(newPlayerGameInputGameLayerHook1):
    newPlayerGameInputGameLayerHook1 = proc (playerInputId: int32): AllBinaryGameLayer = newPlayerGameInputGameLayer(playerInputId)

