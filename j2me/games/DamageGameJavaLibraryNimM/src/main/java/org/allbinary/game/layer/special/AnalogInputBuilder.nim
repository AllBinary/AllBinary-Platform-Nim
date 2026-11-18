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
import org/allbinary/game/input/GameInputProcessor as GameInputProcessorModule
export GameInputProcessorModule
import org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer as CollidableDestroyableDamageableLayerModule
export CollidableDestroyableDamageableLayerModule

type
    AnalogInputBuilder* = ref object of JObject

proc newAnalogInputBuilder*(): AnalogInputBuilder
proc getInstance*(t: typedesc[AnalogInputBuilder]): AnalogInputBuilder {.discardable.}
method disable*(this: AnalogInputBuilder, inputProcessorArray: JArray[GameInputProcessor], collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer) {.base.}
method enable*(this: AnalogInputBuilder, inputProcessorArray: JArray[GameInputProcessor], collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer) {.base.}
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/game/layer/special/SpecialUpGameInputProcessor as SpecialUpGameInputProcessorModule
export SpecialUpGameInputProcessorModule
import org/allbinary/game/layer/special/SpecialDownGameInputProcessor as SpecialDownGameInputProcessorModule
export SpecialDownGameInputProcessorModule
import org/allbinary/game/layer/special/SpecialRightGameInputProcessor as SpecialRightGameInputProcessorModule
export SpecialRightGameInputProcessorModule
import org/allbinary/game/layer/special/SpecialLeftGameInputProcessor as SpecialLeftGameInputProcessorModule
export SpecialLeftGameInputProcessorModule
import org/allbinary/game/layer/special/Special1GameInputProcessor as Special1GameInputProcessorModule
export Special1GameInputProcessorModule
import org/allbinary/game/layer/special/Special3GameInputProcessor as Special3GameInputProcessorModule
export Special3GameInputProcessorModule
import org/allbinary/game/layer/special/SpecialAnalogUpGameInputProcessor as SpecialAnalogUpGameInputProcessorModule
export SpecialAnalogUpGameInputProcessorModule
import org/allbinary/game/layer/special/SpecialAnalogDownGameInputProcessor as SpecialAnalogDownGameInputProcessorModule
export SpecialAnalogDownGameInputProcessorModule
import org/allbinary/game/layer/special/SpecialAnalogRightGameInputProcessor as SpecialAnalogRightGameInputProcessorModule
export SpecialAnalogRightGameInputProcessorModule
import org/allbinary/game/layer/special/SpecialAnalogLeftGameInputProcessor as SpecialAnalogLeftGameInputProcessorModule
export SpecialAnalogLeftGameInputProcessorModule
import org/allbinary/game/layer/special/SpecialAnalogLeftTriggerGameInputProcessor as SpecialAnalogLeftTriggerGameInputProcessorModule
export SpecialAnalogLeftTriggerGameInputProcessorModule
import org/allbinary/game/layer/special/SpecialAnalogRightTriggerGameInputProcessor as SpecialAnalogRightTriggerGameInputProcessorModule
export SpecialAnalogRightTriggerGameInputProcessorModule

var AnalogInputBuilder_instanceValue: AnalogInputBuilder
var AnalogInputBuilder_instanceSet = false
proc instance*(t: typedesc[AnalogInputBuilder]): AnalogInputBuilder =
    if not AnalogInputBuilder_instanceSet:
        AnalogInputBuilder_instanceSet = true
        AnalogInputBuilder_instanceValue = newAnalogInputBuilder()
    AnalogInputBuilder_instanceValue

proc initAnalogInputBuilder*(this: AnalogInputBuilder) =
    discard

proc newAnalogInputBuilder*(): AnalogInputBuilder =
    result = AnalogInputBuilder()
    initAnalogInputBuilder(result)

proc getInstance*(t: typedesc[AnalogInputBuilder]): AnalogInputBuilder {.discardable.} =
        return AnalogInputBuilder.instance

method disable*(this: AnalogInputBuilder, inputProcessorArray: JArray[GameInputProcessor], collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer) {.base.} =
        inputProcessorArray[Canvas.UP] = newSpecialUpGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.DOWN] = newSpecialDownGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.RIGHT] = newSpecialRightGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.LEFT] = newSpecialLeftGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.KEY_NUM0] = newSpecial1GameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.KEY_NUM5] = newSpecial3GameInputProcessor(collidableDestroyableDamageableLayer)

method enable*(this: AnalogInputBuilder, inputProcessorArray: JArray[GameInputProcessor], collidableDestroyableDamageableLayer: CollidableDestroyableDamageableLayer) {.base.} =
        inputProcessorArray[Canvas.UP] = newSpecialAnalogUpGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.DOWN] = newSpecialAnalogDownGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.RIGHT] = newSpecialAnalogRightGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.LEFT] = newSpecialAnalogLeftGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.KEY_NUM0] = newSpecialAnalogLeftTriggerGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray[Canvas.KEY_NUM5] = newSpecialAnalogRightTriggerGameInputProcessor(collidableDestroyableDamageableLayer)

