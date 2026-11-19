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
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule

type
    FlockingAI* = ref object of BasicAI
        allowedDistance*: int32

proc newFlockingAI*(hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): FlockingAI
proc initFlockingAI*(this: FlockingAI, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method processAI*(this: FlockingAI, allBinaryLayerManager: AllBinaryLayerManager)
method getXYDistance*(this: FlockingAI, allBinaryLayer: AllBinaryLayer): int32 {.base, discardable.}
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/game/identification/BasicGroupFactory as BasicGroupFactoryModule
export BasicGroupFactoryModule
import org/allbinary/game/layer/identification/GroupLayerManagerListener as GroupLayerManagerListenerModule
export GroupLayerManagerListenerModule
import org/allbinary/game/layer/weapon/WeaponLayer as WeaponLayerModule
export WeaponLayerModule
import org/allbinary/logic/math/MathUtil as MathUtilModule
export MathUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/ag/ai/scroller/BasePatrolAI as BasePatrolAIModule
export BasePatrolAIModule


# Java field initializers run after the base initializer
proc initFieldsFlockingAI(this: FlockingAI) =
    
    discard

proc initFlockingAI*(this: FlockingAI, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initBasicAI(this, ownerLayerInterface, gameInput)
        this.initFieldsFlockingAI()
        let allowedDistance: int32 = jUnboxInteger(hashtable.get(BasePatrolAI.MAX_DISTANCE))
        this.allowedDistance = allowedDistance.intValue()

proc newFlockingAI*(hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): FlockingAI =
    result = FlockingAI()
    initFlockingAI(result, hashtable, ownerLayerInterface, gameInput)

method processAI*(this: FlockingAI, allBinaryLayerManager: AllBinaryLayerManager) =
        var maxDistance: int32 = 0
        var farAllbinaryLayer: AllBinaryLayer = AllBinaryLayer.NULL_ALLBINARY_LAYER
        let groupLayerManagerListener: GroupLayerManagerListener = GroupLayerManagerListener.getInstance()
        let list: BasicArrayList = groupLayerManagerListener.getList(BasicGroupFactory.getInstance().ENEMY)
        let size: int32 = list.size()
        var allBinaryLayer: AllBinaryLayer = nil
        var ownerLayerInterface: AllBinaryLayer = nil
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                allBinaryLayer = AllBinaryLayer(JObject(list.get(index)))
                if allBinaryLayer.getType() != WeaponLayer.getStaticType():
                    var distance: int32 = this.getXYDistance(allBinaryLayer)
                    if distance > maxDistance:
                        maxDistance = distance
                        farAllbinaryLayer = allBinaryLayer
                        if distance > this.allowedDistance:
                            break
        if maxDistance > this.allowedDistance:
            if (not jSame(farAllbinaryLayer, AllBinaryLayer.NULL_ALLBINARY_LAYER)):
                ownerLayerInterface = this.getOwnerLayerInterface()
                if farAllbinaryLayer.getXP() < ownerLayerInterface.getXP():
                    this.processKeyAI(Canvas.LEFT)
                elif farAllbinaryLayer.getXP() > ownerLayerInterface.getXP():
                    this.processKeyAI(Canvas.RIGHT)
                elif farAllbinaryLayer.getYP() > ownerLayerInterface.getYP():
                    this.processKeyAI(Canvas.UP)
                elif farAllbinaryLayer.getYP() < ownerLayerInterface.getYP():
                    this.processKeyAI(Canvas.DOWN)

method getXYDistance*(this: FlockingAI, allBinaryLayer: AllBinaryLayer): int32 {.base, discardable.} =
        let ownerLayerInterface: AllBinaryLayer = this.getOwnerLayerInterface()
        let xTotalDistance: int32 = (allBinaryLayer.getXP() +% allBinaryLayer.getHalfWidth()) -% (ownerLayerInterface.getXP() +% ownerLayerInterface.getHalfWidth())
        let yTotalDistance: int32 = (allBinaryLayer.getYP() +% allBinaryLayer.getHalfHeight()) -% (ownerLayerInterface.getYP() +% ownerLayerInterface.getHalfHeight())
        let mathUtil: MathUtil = MathUtil.getInstance()
        let totalDistance: int32 = mathUtil.abs(xTotalDistance) +% mathUtil.abs(yTotalDistance)
        return totalDistance

when declared(newFlockingAIHook3):
    newFlockingAIHook3 = proc (hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): BasicAI = newFlockingAI(hashtable, ownerLayerInterface, gameInput)

