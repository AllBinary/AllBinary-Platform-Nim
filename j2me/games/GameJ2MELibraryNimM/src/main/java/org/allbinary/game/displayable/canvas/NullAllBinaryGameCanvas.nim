#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.game.displayable.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import org/allbinary/game/layer/AllBinaryGameLayerManager as AllBinaryGameLayerManagerModule
export AllBinaryGameLayerManagerModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvasInterface as AllBinaryGameCanvasInterfaceModule
export AllBinaryGameCanvasInterfaceModule

type
    NullAllBinaryGameCanvas* = ref object of AllBinaryGameCanvasInterface

proc newNullAllBinaryGameCanvas*(): NullAllBinaryGameCanvas
method getLayerManager*(this: NullAllBinaryGameCanvas): AllBinaryGameLayerManager {.discardable.}
method addCommand*(this: NullAllBinaryGameCanvas, cmd: Command)
method getHeight*(this: NullAllBinaryGameCanvas): int32 {.discardable.}
method getWidth*(this: NullAllBinaryGameCanvas): int32 {.discardable.}
method removeCommand*(this: NullAllBinaryGameCanvas, cmd: Command)
method setCommandListener*(this: NullAllBinaryGameCanvas, l: CommandListener)

var NullAllBinaryGameCanvas_NULL_ALLBINARY_GAME_CANVASValue: NullAllBinaryGameCanvas
var NullAllBinaryGameCanvas_NULL_ALLBINARY_GAME_CANVASSet = false
proc NULL_ALLBINARY_GAME_CANVASStatic*(t: typedesc[NullAllBinaryGameCanvas]): NullAllBinaryGameCanvas =
    if not NullAllBinaryGameCanvas_NULL_ALLBINARY_GAME_CANVASSet:
        NullAllBinaryGameCanvas_NULL_ALLBINARY_GAME_CANVASSet = true
        NullAllBinaryGameCanvas_NULL_ALLBINARY_GAME_CANVASValue = newNullAllBinaryGameCanvas()
    NullAllBinaryGameCanvas_NULL_ALLBINARY_GAME_CANVASValue

proc initNullAllBinaryGameCanvas*(this: NullAllBinaryGameCanvas) =
    discard

proc newNullAllBinaryGameCanvas*(): NullAllBinaryGameCanvas =
    result = NullAllBinaryGameCanvas()
    initNullAllBinaryGameCanvas(result)

method getLayerManager*(this: NullAllBinaryGameCanvas): AllBinaryGameLayerManager {.discardable.} =
        raise newJException("RuntimeException", "")

method addCommand*(this: NullAllBinaryGameCanvas, cmd: Command) =
        raise newJException("RuntimeException", "")

method getHeight*(this: NullAllBinaryGameCanvas): int32 {.discardable.} =
        raise newJException("RuntimeException", "")

method getWidth*(this: NullAllBinaryGameCanvas): int32 {.discardable.} =
        raise newJException("RuntimeException", "")

method removeCommand*(this: NullAllBinaryGameCanvas, cmd: Command) =
        raise newJException("RuntimeException", "")

method setCommandListener*(this: NullAllBinaryGameCanvas, l: CommandListener) =
        raise newJException("RuntimeException", "")

