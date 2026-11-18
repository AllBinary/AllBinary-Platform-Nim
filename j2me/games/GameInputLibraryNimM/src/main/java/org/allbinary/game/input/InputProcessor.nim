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
# package org.allbinary.game.input

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/game/input/GameInputStrings as GameInputStringsModule
export GameInputStringsModule

type
    InputProcessor* = ref object of JObject
        gameInputStrings*: GameInputStrings

proc newInputProcessor*(): InputProcessor
method keyPressedByDevice*(this: InputProcessor, keyCode: int32, deviceId: int32) {.base.}
method keyReleasedByDevice*(this: InputProcessor, canvas: Canvas, keyCode: int32, deviceId: int32) {.base.}


# Java field initializers run after the base initializer
proc initFieldsInputProcessor(this: InputProcessor) =
    this.gameInputStrings = GameInputStrings.getInstance()
    discard

proc initInputProcessor*(this: InputProcessor) =
    this.initFieldsInputProcessor()

proc newInputProcessor*(): InputProcessor =
    result = InputProcessor()
    initInputProcessor(result)

method keyPressedByDevice*(this: InputProcessor, keyCode: int32, deviceId: int32) {.base.} =
        discard

method keyReleasedByDevice*(this: InputProcessor, canvas: Canvas, keyCode: int32, deviceId: int32) {.base.} =
        discard

