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
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule

type
    GameInputProcessor* = ref object of JObject

proc newGameInputProcessor*(): GameInputProcessor
proc initGameInputProcessor*(this: GameInputProcessor)
proc getInstance*(t: typedesc[GameInputProcessor]): GameInputProcessor {.discardable.}
method processEvent*(this: GameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) {.base.}
method processReleasedEvent*(this: GameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) {.base.}
method processAnalog*(this: GameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent, analogValue: int32) {.base.}
method process*(this: GameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, keyAsInteger: int32) {.base.}
method processReleased*(this: GameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, keyAsInteger: int32) {.base.}

var GameInputProcessor_instanceValue: GameInputProcessor
var GameInputProcessor_instanceSet = false
proc instance*(t: typedesc[GameInputProcessor]): GameInputProcessor =
    if not GameInputProcessor_instanceSet:
        GameInputProcessor_instanceSet = true
        GameInputProcessor_instanceValue = newGameInputProcessor()
    GameInputProcessor_instanceValue

proc getInstance*(t: typedesc[GameInputProcessor]): GameInputProcessor {.discardable.} =
        return GameInputProcessor.instance

proc initGameInputProcessor*(this: GameInputProcessor) =
        discard
        discard

proc newGameInputProcessor*(): GameInputProcessor =
    result = GameInputProcessor()
    initGameInputProcessor(result)

method processEvent*(this: GameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) {.base.} =
        discard

method processReleasedEvent*(this: GameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) {.base.} =
        discard

method processAnalog*(this: GameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent, analogValue: int32) {.base.} =
        discard

method process*(this: GameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, keyAsInteger: int32) {.base.} =
        discard

method processReleased*(this: GameInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, keyAsInteger: int32) {.base.} =
        discard

