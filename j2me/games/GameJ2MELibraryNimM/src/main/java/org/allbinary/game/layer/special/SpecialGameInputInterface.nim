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
# package org.allbinary.game.layer.special

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/graphics/paint/PaintableInterface as PaintableInterfaceModule
export PaintableInterfaceModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule

type
    SpecialGameInputInterface* = ref object of PaintableInterface


method up*(this: SpecialGameInputInterface) {.base.} =
        raise newJException("AbstractMethodError", "up")

method down*(this: SpecialGameInputInterface) {.base.} =
        raise newJException("AbstractMethodError", "down")

method right*(this: SpecialGameInputInterface) {.base.} =
        raise newJException("AbstractMethodError", "right")

method left*(this: SpecialGameInputInterface) {.base.} =
        raise newJException("AbstractMethodError", "left")

method strafeLeft*(this: SpecialGameInputInterface) {.base.} =
        raise newJException("AbstractMethodError", "strafeLeft")

method strafeRight*(this: SpecialGameInputInterface) {.base.} =
        raise newJException("AbstractMethodError", "strafeRight")

method fire*(this: SpecialGameInputInterface, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) {.base.} =
        raise newJException("AbstractMethodError", "fire")

method special1*(this: SpecialGameInputInterface, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) {.base.} =
        raise newJException("AbstractMethodError", "special1")

method special2*(this: SpecialGameInputInterface, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) {.base.} =
        raise newJException("AbstractMethodError", "special2")

method special3*(this: SpecialGameInputInterface, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) {.base.} =
        raise newJException("AbstractMethodError", "special3")

method special4*(this: SpecialGameInputInterface, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) {.base.} =
        raise newJException("AbstractMethodError", "special4")

method special5*(this: SpecialGameInputInterface, layerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) {.base.} =
        raise newJException("AbstractMethodError", "special5")

