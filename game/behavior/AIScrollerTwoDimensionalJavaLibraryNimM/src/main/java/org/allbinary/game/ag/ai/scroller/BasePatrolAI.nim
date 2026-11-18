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
# package org.allbinary.game.ag.ai.scroller

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import org/allbinary/game/ai/BasicAI as BasicAIModule
export BasicAIModule
import org/allbinary/game/input/GameInput as GameInputModule
export GameInputModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule

type
    BasePatrolAI* = ref object of BasicAI
        maxDistance*: int32
        currentDistance*: int32
        xTotalDistance*: int32
        lastKeyDirection*: int32
        keyDirection*: int32

proc newBasePatrolAI*(hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): BasePatrolAI
proc initBasePatrolAI*(this: BasePatrolAI, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method update*(this: BasePatrolAI) {.base.}
method updateTotalDistance*(this: BasePatrolAI) {.base.}
method changeDirectionIfReachedPacingAreaMax*(this: BasePatrolAI) {.base.}
method nextDirection*(this: BasePatrolAI) {.base.}
method disable*(this: BasePatrolAI) {.base.}
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/game/physics/velocity/BasicVelocityProperties as BasicVelocityPropertiesModule
export BasicVelocityPropertiesModule
import org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface as VelocityInterfaceCompositeInterfaceModule
export VelocityInterfaceCompositeInterfaceModule
import org/allbinary/logic/math/MathUtil as MathUtilModule
export MathUtilModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule

var BasePatrolAI_MAX_DISTANCEValue: int32
var BasePatrolAI_MAX_DISTANCESet = false
proc MAX_DISTANCE*(t: typedesc[BasePatrolAI]): int32 =
    if not BasePatrolAI_MAX_DISTANCESet:
        BasePatrolAI_MAX_DISTANCESet = true
        BasePatrolAI_MAX_DISTANCEValue = SmallIntegerSingletonFactory.getInstance().getAt(2)
    BasePatrolAI_MAX_DISTANCEValue
var BasePatrolAI_DIRECTION_ARRAYValue: int32
var BasePatrolAI_DIRECTION_ARRAYSet = false
proc DIRECTION_ARRAY*(t: typedesc[BasePatrolAI]): int32 =
    if not BasePatrolAI_DIRECTION_ARRAYSet:
        BasePatrolAI_DIRECTION_ARRAYSet = true
        BasePatrolAI_DIRECTION_ARRAYValue = SmallIntegerSingletonFactory.getInstance().getAt(3)
    BasePatrolAI_DIRECTION_ARRAYValue
var BasePatrolAI_FIRING_DISTANCEValue: int32
var BasePatrolAI_FIRING_DISTANCESet = false
proc FIRING_DISTANCE*(t: typedesc[BasePatrolAI]): int32 =
    if not BasePatrolAI_FIRING_DISTANCESet:
        BasePatrolAI_FIRING_DISTANCESet = true
        BasePatrolAI_FIRING_DISTANCEValue = SmallIntegerSingletonFactory.getInstance().getAt(4)
    BasePatrolAI_FIRING_DISTANCEValue
var BasePatrolAI_SPEEDValue: int32
var BasePatrolAI_SPEEDSet = false
proc SPEED*(t: typedesc[BasePatrolAI]): int32 =
    if not BasePatrolAI_SPEEDSet:
        BasePatrolAI_SPEEDSet = true
        BasePatrolAI_SPEEDValue = SmallIntegerSingletonFactory.getInstance().getAt(5)
    BasePatrolAI_SPEEDValue
proc `SPEED=`*(t: typedesc[BasePatrolAI], value: int32) =
    BasePatrolAI_SPEEDSet = true
    BasePatrolAI_SPEEDValue = value

# Java field initializers run after the base initializer
proc initFieldsBasePatrolAI(this: BasePatrolAI) =
    
    
    this.xTotalDistance = 0
    this.lastKeyDirection = Canvas.RIGHT
    this.keyDirection = Canvas.RIGHT
    discard

proc initBasePatrolAI*(this: BasePatrolAI, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initBasicAI(this, ownerLayerInterface, gameInput)
        this.initFieldsBasePatrolAI()
        this.maxDistance = jUnboxInteger(hashtable.get(BasePatrolAI.MAX_DISTANCE))
        this.currentDistance = this.maxDistance.intValue()

proc newBasePatrolAI*(hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): BasePatrolAI =
    result = BasePatrolAI()
    initBasePatrolAI(result, hashtable, ownerLayerInterface, gameInput)

method update*(this: BasePatrolAI) {.base.} =
        this.updateTotalDistance()
        this.changeDirectionIfReachedPacingAreaMax()

method updateTotalDistance*(this: BasePatrolAI) {.base.} =
        let velocityInterfaceCompositeInterface: VelocityInterfaceCompositeInterface = VelocityInterfaceCompositeInterface(JObject(this.getOwnerLayerInterface()))
        let velocityProperties: BasicVelocityProperties = velocityInterfaceCompositeInterface.getVelocityProperties()
        this.xTotalDistance = this.xTotalDistance +% velocityProperties.getVelocityXBasicDecimalP().getScaled()

method changeDirectionIfReachedPacingAreaMax*(this: BasePatrolAI) {.base.} =
        let mathUtil: MathUtil = MathUtil.getInstance()
        let totalDistance: int32 = mathUtil.abs(this.xTotalDistance)
        if totalDistance > this.currentDistance:
            this.nextDirection()

method nextDirection*(this: BasePatrolAI) {.base.} =
        if this.lastKeyDirection == Canvas.LEFT:
            this.keyDirection = Canvas.RIGHT
            this.lastKeyDirection = this.keyDirection
            this.xTotalDistance = 0
        elif this.lastKeyDirection == Canvas.RIGHT:
            this.keyDirection = Canvas.LEFT
            this.lastKeyDirection = this.keyDirection
            this.xTotalDistance = 0

method disable*(this: BasePatrolAI) {.base.} =
        discard

when declared(newBasePatrolAIHook3):
    newBasePatrolAIHook3 = proc (hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): BasicAI = newBasePatrolAI(hashtable, ownerLayerInterface, gameInput)

