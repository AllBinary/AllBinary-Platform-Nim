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
    LurchAI* = ref object of BasicAI
        currentRelativeAngle*: int32
        currentSpeed*: int32

proc newLurchAI*(ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): LurchAI
proc initLurchAI*(this: LurchAI, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method processAI*(this: LurchAI, allBinaryLayerManager: AllBinaryLayerManager)
method reverse*(this: LurchAI) {.base.}
method accelerate*(this: LurchAI) {.base.}
method drop*(this: LurchAI) {.base.}
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule


# Java field initializers run after the base initializer
proc initFieldsLurchAI(this: LurchAI) =
    this.currentRelativeAngle = 0
    this.currentSpeed = 0
    discard

proc initLurchAI*(this: LurchAI, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initBasicAI(this, ownerLayerInterface, gameInput)
        this.initFieldsLurchAI()

proc newLurchAI*(ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): LurchAI =
    result = LurchAI()
    initLurchAI(result, ownerLayerInterface, gameInput)

method processAI*(this: LurchAI, allBinaryLayerManager: AllBinaryLayerManager) =
        if this.currentSpeed == -1:
            this.currentSpeed = 5
        else:
            this.currentSpeed = -1
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
            jSuperStatement(procCall BasicAI(this).processKeyAI(Canvas.KEY_NUM0))
        elif this.currentRelativeAngle == 180:
            jSuperStatement(procCall BasicAI(this).processKeyAI(Canvas.KEY_POUND))

method reverse*(this: LurchAI) {.base.} =
        if this.currentRelativeAngle == 180:
            this.currentRelativeAngle = 0
        elif this.currentRelativeAngle == 0:
            this.currentRelativeAngle = 180

method accelerate*(this: LurchAI) {.base.} =
        if this.currentSpeed < 20:
            this.currentSpeed = this.currentSpeed +% 1

method drop*(this: LurchAI) {.base.} =
        var ownerLayerInterface: AllBinaryLayer = this.getOwnerLayerInterface()
        var y: int32 = ownerLayerInterface.getYP()
        if ownerLayerInterface.getY2() +% ownerLayerInterface.getHeight() > DisplayInfoSingleton.getInstance().getLastHeight():
            y = 0
        else:
            y = y +% ownerLayerInterface.getHeight() +% 1
        ownerLayerInterface.setPosition(ownerLayerInterface.getXP(), y, ownerLayerInterface.getZP())

when declared(newLurchAIHook2):
    newLurchAIHook2 = proc (ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): BasicAI = newLurchAI(ownerLayerInterface, gameInput)

