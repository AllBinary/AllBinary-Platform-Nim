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
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/ai/ArtificialIntelligenceTransitionInterface as ArtificialIntelligenceTransitionInterfaceModule
export ArtificialIntelligenceTransitionInterfaceModule
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule
import org/allbinary/game/ai/BasicAI as BasicAIModule
export BasicAIModule
import org/allbinary/game/input/GameInput as GameInputModule
export GameInputModule
import org/allbinary/game/physics/velocity/BasicVelocityProperties as BasicVelocityPropertiesModule
export BasicVelocityPropertiesModule
import org/allbinary/game/physics/velocity/VelocityInterface as VelocityInterfaceModule
export VelocityInterfaceModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule

type
    HorizontaRotationManeuverAI* = ref object of BasicAI
        circularIndexUtil*: CircularIndexUtil
        currentSpeedDivisor*: int32
        rotationAnimationInterface*: IndexedAnimation
        baseVelocityInterface*: BasicVelocityProperties
        velocityInterface*: VelocityInterface

converter jAsArtificialIntelligenceTransitionInterface*(value: HorizontaRotationManeuverAI): ArtificialIntelligenceTransitionInterface = cast[ArtificialIntelligenceTransitionInterface](value)
proc newHorizontaRotationManeuverAI*(ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): HorizontaRotationManeuverAI
proc initHorizontaRotationManeuverAI*(this: HorizontaRotationManeuverAI, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method transition*(this: HorizontaRotationManeuverAI)
method processAI*(this: HorizontaRotationManeuverAI, allBinaryLayerManager: AllBinaryLayerManager)
method reverse*(this: HorizontaRotationManeuverAI) {.base.}
method accelerate*(this: HorizontaRotationManeuverAI) {.base.}
method drop*(this: HorizontaRotationManeuverAI) {.base.}
method getId*(this: HorizontaRotationManeuverAI): int32 {.discardable.}
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/ai/ArtificialIntelligence as ArtificialIntelligenceModule
export ArtificialIntelligenceModule
import org/allbinary/animation/RotationAnimationInterface as RotationAnimationInterfaceModule
export RotationAnimationInterfaceModule
import org/allbinary/animation/RotationAnimationInterfaceCompositeInterface as RotationAnimationInterfaceCompositeInterfaceModule
export RotationAnimationInterfaceCompositeInterfaceModule
import org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface as VelocityInterfaceCompositeInterfaceModule
export VelocityInterfaceCompositeInterfaceModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/math/AngleIncrementInfo as AngleIncrementInfoModule
export AngleIncrementInfoModule


# Java field initializers run after the base initializer
proc initFieldsHorizontaRotationManeuverAI(this: HorizontaRotationManeuverAI) =
    this.circularIndexUtil = CircularIndexUtil.createInstanceAt(10, Integer.MAX_VALUE)
    this.currentSpeedDivisor = 5
    
    
    
    discard

proc initHorizontaRotationManeuverAI*(this: HorizontaRotationManeuverAI, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initBasicAI(this, ownerLayerInterface, gameInput)
        this.initFieldsHorizontaRotationManeuverAI()
        let rotationAnimationInterfaceCompositeInterface: RotationAnimationInterfaceCompositeInterface = RotationAnimationInterfaceCompositeInterface(JObject(this.getOwnerLayerInterface()))
        this.rotationAnimationInterface = rotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface()
        var velocityInterfaceCompositeInterface: VelocityInterfaceCompositeInterface = VelocityInterfaceCompositeInterface(JObject(this.getOwnerLayerInterface()))
        this.baseVelocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties()
        this.velocityInterface = VelocityInterface(JObject(this.baseVelocityInterface))
        let rotationAnimationInterface: RotationAnimationInterface = RotationAnimationInterface(JObject(this.rotationAnimationInterface))
        let angleIncrementInfo: AngleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
        rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue())

proc newHorizontaRotationManeuverAI*(ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): HorizontaRotationManeuverAI =
    result = HorizontaRotationManeuverAI()
    initHorizontaRotationManeuverAI(result, ownerLayerInterface, gameInput)

method transition*(this: HorizontaRotationManeuverAI) =
        let rotationAnimationInterface: RotationAnimationInterface = RotationAnimationInterface(JObject(this.rotationAnimationInterface))
        let angleIncrementInfo: AngleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
        let rotationAnimationInterfaceCompositeInterface: RotationAnimationInterfaceCompositeInterface = RotationAnimationInterfaceCompositeInterface(JObject(this.getOwnerLayerInterface()))
        rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue())
        var allbinaryLayer: AllBinaryLayer = this.getOwnerLayerInterface()
        allbinaryLayer.setPosition(allbinaryLayer.getXP(), 1, allbinaryLayer.getZP())

method processAI*(this: HorizontaRotationManeuverAI, allBinaryLayerManager: AllBinaryLayerManager) =
        let rotationAnimationInterface: RotationAnimationInterface = (RotationAnimationInterface(JObject(this.rotationAnimationInterface)))
        let angleIncrementInfo: AngleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
        let frame: int32 = this.rotationAnimationInterface.getFrame()
        let ownerLayerInterface: AllBinaryLayer = this.getOwnerLayerInterface()
        if ownerLayerInterface.getXP() -% ownerLayerInterface.getWidth() <= 0 and frame == angleIncrementInfo.LEFT_FRAME.intValue():
            this.reverse()
            this.drop()
        let displayInfo: DisplayInfoSingleton = DisplayInfoSingleton.getInstance()
        if ownerLayerInterface.getX2() +% ownerLayerInterface.getWidth() > displayInfo.getLastWidth() and frame == angleIncrementInfo.RIGHT_FRAME.intValue():
            this.reverse()
            this.accelerate()
            this.drop()
        let index: int32 = this.circularIndexUtil.getIndex()
        if index mod this.currentSpeedDivisor == 0 and index mod 2 == 0:
            procCall BasicAI(this).processKeyAI(Canvas.UP)
            this.velocityInterface.limitMaxXYVelocity(this.velocityInterface.getMaxForwardVelocity() div this.currentSpeedDivisor)
        this.circularIndexUtil.next()
        if frame == angleIncrementInfo.LEFT_FRAME.intValue():
            procCall BasicAI(this).processKeyAI(Canvas.KEY_NUM0)
        elif frame == angleIncrementInfo.RIGHT_FRAME.intValue():
            procCall BasicAI(this).processKeyAI(Canvas.KEY_POUND)

method reverse*(this: HorizontaRotationManeuverAI) {.base.} =
        let rotationAnimationInterface: RotationAnimationInterface = RotationAnimationInterface(JObject(this.rotationAnimationInterface))
        let angleIncrementInfo: AngleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo()
        let frame: int32 = this.rotationAnimationInterface.getFrame()
        if frame == angleIncrementInfo.LEFT_FRAME.intValue():
            let rotationAnimationInterfaceCompositeInterface: RotationAnimationInterfaceCompositeInterface = RotationAnimationInterfaceCompositeInterface(JObject(this.getOwnerLayerInterface()))
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.RIGHT_FRAME.intValue())
            this.baseVelocityInterface.zero()
        elif frame == angleIncrementInfo.RIGHT_FRAME.intValue():
            let rotationAnimationInterfaceCompositeInterface: RotationAnimationInterfaceCompositeInterface = RotationAnimationInterfaceCompositeInterface(JObject(this.getOwnerLayerInterface()))
            rotationAnimationInterfaceCompositeInterface.setFrame(angleIncrementInfo.LEFT_FRAME.intValue())
            this.baseVelocityInterface.zero()

method accelerate*(this: HorizontaRotationManeuverAI) {.base.} =
        if this.currentSpeedDivisor > 1:
            this.currentSpeedDivisor = this.currentSpeedDivisor -% 1

method drop*(this: HorizontaRotationManeuverAI) {.base.} =
        let displayInfo: DisplayInfoSingleton = DisplayInfoSingleton.getInstance()
        let ownerLayerInterface: AllBinaryLayer = this.getOwnerLayerInterface()
        var y: int32 = ownerLayerInterface.getYP()
        if ownerLayerInterface.getY2() +% ownerLayerInterface.getHeight() > displayInfo.getLastHeight():
            y = 0
        else:
            y = y +% ownerLayerInterface.getHeight() +% 1
        ownerLayerInterface.setPosition(ownerLayerInterface.getXP(), y, ownerLayerInterface.getZP())

method getId*(this: HorizontaRotationManeuverAI): int32 {.discardable.} =
        return ArtificialIntelligence.AI_ID

when declared(newHorizontaRotationManeuverAIHook2):
    newHorizontaRotationManeuverAIHook2 = proc (ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): BasicAI = newHorizontaRotationManeuverAI(ownerLayerInterface, gameInput)

