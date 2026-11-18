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
# package org.allbinary.game.ag.ai.tactical

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
    HorizontalManeuverAI* = ref object of BasicAI
        currentRelativeAngle*: int32
        currentSpeed*: int32

proc newHorizontalManeuverAI*(ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): HorizontalManeuverAI
proc initHorizontalManeuverAI*(this: HorizontalManeuverAI, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method processAI*(this: HorizontalManeuverAI, allBinaryLayerManager: AllBinaryLayerManager)
method reverse*(this: HorizontalManeuverAI) {.base.}
method accelerate*(this: HorizontalManeuverAI) {.base.}
method drop*(this: HorizontalManeuverAI) {.base.}
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule


# Java field initializers run after the base initializer
proc initFieldsHorizontalManeuverAI(this: HorizontalManeuverAI) =
    this.currentRelativeAngle = 0
    
    discard

proc initHorizontalManeuverAI*(this: HorizontalManeuverAI, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initBasicAI(this, ownerLayerInterface, gameInput)
        this.initFieldsHorizontalManeuverAI()
        this.currentSpeed = 5

proc newHorizontalManeuverAI*(ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): HorizontalManeuverAI =
    result = HorizontalManeuverAI()
    initHorizontalManeuverAI(result, ownerLayerInterface, gameInput)

method processAI*(this: HorizontalManeuverAI, allBinaryLayerManager: AllBinaryLayerManager) =
        var ownerLayerInterface: AllBinaryLayer = this.getOwnerLayerInterface()
        var x: int32 = ownerLayerInterface.getXP()
        if ownerLayerInterface.getXP() -% this.currentSpeed <= 0:
            this.reverse()
            this.drop()
        if ownerLayerInterface.getX2() +% this.currentSpeed > DisplayInfoSingleton.getInstance().getLastWidth():
            this.reverse()
            this.accelerate()
            this.drop()
        if this.currentRelativeAngle == 0:
            x = x +% this.currentSpeed
        elif this.currentRelativeAngle == 180:
            x = x -% this.currentSpeed
        ownerLayerInterface.setPosition(x, ownerLayerInterface.getYP(), ownerLayerInterface.getZP())
        if this.currentRelativeAngle == 0:
            procCall BasicAI(this).processKeyAI(Canvas.KEY_NUM0)
        elif this.currentRelativeAngle == 180:
            procCall BasicAI(this).processKeyAI(Canvas.KEY_POUND)

method reverse*(this: HorizontalManeuverAI) {.base.} =
        if this.currentRelativeAngle == 180:
            this.currentRelativeAngle = 0
        elif this.currentRelativeAngle == 0:
            this.currentRelativeAngle = 180

method accelerate*(this: HorizontalManeuverAI) {.base.} =
        if this.currentSpeed < 20:
            this.currentSpeed = this.currentSpeed +% 1

method drop*(this: HorizontalManeuverAI) {.base.} =
        var ownerLayerInterface: AllBinaryLayer = this.getOwnerLayerInterface()
        var y: int32 = ownerLayerInterface.getYP()
        if ownerLayerInterface.getY2() +% ownerLayerInterface.getHeight() > DisplayInfoSingleton.getInstance().getLastHeight():
            y = 0
        else:
            y = y +% ownerLayerInterface.getHeight() +% 1
        ownerLayerInterface.setPosition(ownerLayerInterface.getXP(), y, ownerLayerInterface.getZP())

when declared(newHorizontalManeuverAIHook2):
    newHorizontalManeuverAIHook2 = proc (ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): BasicAI = newHorizontalManeuverAI(ownerLayerInterface, gameInput)

