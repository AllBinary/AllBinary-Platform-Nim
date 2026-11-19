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
# package org.allbinary.game.ag.ai

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/ai/BasicAI as BasicAIModule
export BasicAIModule
import org/allbinary/game/input/GameInput as GameInputModule
export GameInputModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule

type
    SpinnerAI* = ref object of BasicAI
        isEven*: bool
        direction*: JArray[int32]

proc newSpinnerAI*(direction: JArray[int32], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): SpinnerAI
proc initSpinnerAI*(this: SpinnerAI, direction: JArray[int32], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method processAI*(this: SpinnerAI, allBinaryLayerManager: AllBinaryLayerManager)
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule


# Java field initializers run after the base initializer
proc initFieldsSpinnerAI(this: SpinnerAI) =
    this.isEven = false
    
    discard

proc initSpinnerAI*(this: SpinnerAI, direction: JArray[int32], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initBasicAI(this, ownerLayerInterface, gameInput)
        this.initFieldsSpinnerAI()
        this.direction = direction

proc newSpinnerAI*(direction: JArray[int32], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): SpinnerAI =
    result = SpinnerAI()
    initSpinnerAI(result, direction, ownerLayerInterface, gameInput)

method processAI*(this: SpinnerAI, allBinaryLayerManager: AllBinaryLayerManager) =
        if this.isEven:
            jSuperStatement(procCall BasicAI(this).processKeyAI(this.direction[0]))
            this.isEven = false
        else:
            jSuperStatement(procCall BasicAI(this).processKeyAI(Canvas.KEY_NUM1))
            this.isEven = true

when declared(newSpinnerAIHook3):
    newSpinnerAIHook3 = proc (direction: JArray[int32], ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): BasicAI = newSpinnerAI(direction, ownerLayerInterface, gameInput)

