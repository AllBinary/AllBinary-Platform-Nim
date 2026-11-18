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
# package org.allbinary.game.configuration.feature

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule

type
    GameFeatureCanvas* = ref object of Canvas

proc newGameFeatureCanvas*(): GameFeatureCanvas
proc initGameFeatureCanvas*(this: GameFeatureCanvas)
method paint*(this: GameFeatureCanvas, graphics: Graphics)


proc initGameFeatureCanvas*(this: GameFeatureCanvas) =
        initCanvas(this)
        discard

proc newGameFeatureCanvas*(): GameFeatureCanvas =
    result = GameFeatureCanvas()
    initGameFeatureCanvas(result)

method paint*(this: GameFeatureCanvas, graphics: Graphics) =
        discard

when declared(newGameFeatureCanvasHook0):
    newGameFeatureCanvasHook0 = proc (): Canvas = newGameFeatureCanvas()

