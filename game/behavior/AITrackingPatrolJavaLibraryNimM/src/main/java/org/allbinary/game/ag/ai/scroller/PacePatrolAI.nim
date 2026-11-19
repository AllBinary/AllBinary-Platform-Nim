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
import org/allbinary/direction/Direction as DirectionModule
export DirectionModule
import org/allbinary/game/input/GameInput as GameInputModule
export GameInputModule
import org/allbinary/game/tracking/TrackingEvent as TrackingEventModule
export TrackingEventModule
import org/allbinary/game/tracking/TrackingEventListenerInterface as TrackingEventListenerInterfaceModule
export TrackingEventListenerInterfaceModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/ag/ai/scroller/BasePatrolAI as BasePatrolAIModule
export BasePatrolAIModule

type
    PacePatrolAI* = ref object of BasePatrolAI
        trackingList*: BasicArrayList
        firingDistance*: int32
        isFollowLimitedByTerrain*: bool

converter jAsTrackingEventListenerInterface*(value: PacePatrolAI): TrackingEventListenerInterface = cast[TrackingEventListenerInterface](value)
converter jAsEventListenerInterface*(value: PacePatrolAI): EventListenerInterface = cast[EventListenerInterface](value)
proc newPacePatrolAI*(hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): PacePatrolAI
proc initPacePatrolAI*(this: PacePatrolAI, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method processAI*(this: PacePatrolAI, allBinaryLayerManager: AllBinaryLayerManager)
method setFiringDirectionForTargetIfInRange*(this: PacePatrolAI): Direction {.base, discardable.}
method disable*(this: PacePatrolAI)
method onEvent*(this: PacePatrolAI, eventObject: AllBinaryEventObject)
method onMovement*(this: PacePatrolAI, trackingEvent: TrackingEvent)
method getFiringDistance*(this: PacePatrolAI): int32 {.base, discardable.}
method setFiringDistance*(this: PacePatrolAI, firingDistance: int32) {.base.}
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/direction/DirectionCompositeInterface as DirectionCompositeInterfaceModule
export DirectionCompositeInterfaceModule
import org/allbinary/direction/DirectionFactory as DirectionFactoryModule
export DirectionFactoryModule
import org/allbinary/game/tracking/TrackingEventHandler as TrackingEventHandlerModule
export TrackingEventHandlerModule
import org/allbinary/layer/LayerInterface as LayerInterfaceModule
export LayerInterfaceModule
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsPacePatrolAI(this: PacePatrolAI) =
    
    this.firingDistance = 0
    this.isFollowLimitedByTerrain = false
    discard

proc initPacePatrolAI*(this: PacePatrolAI, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initBasePatrolAI(this, hashtable, ownerLayerInterface, gameInput)
        this.initFieldsPacePatrolAI()
        TrackingEventHandler.getInstance().addListenerInterface(this)
        this.trackingList = newBasicArrayListD()

proc newPacePatrolAI*(hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): PacePatrolAI =
    result = PacePatrolAI()
    initPacePatrolAI(result, hashtable, ownerLayerInterface, gameInput)

method processAI*(this: PacePatrolAI, allBinaryLayerManager: AllBinaryLayerManager) =
        this.update()
        let direction: Direction = this.setFiringDirectionForTargetIfInRange()
        let directionFactory: DirectionFactory = DirectionFactory.getInstance()
        if (jSame(direction, directionFactory.LEFT)):
            if this.lastKeyDirection != this.keyDirection or (not this.isFollowLimitedByTerrain):
                jSuperStatement(procCall BasePatrolAI(this).processKeyAI(Canvas.LEFT))
            this.keyDirection = Canvas.LEFT
            this.lastKeyDirection = this.keyDirection
            this.xTotalDistance = 0
            jSuperStatement(procCall BasePatrolAI(this).processKeyAI(Canvas.KEY_NUM1))
        elif (jSame(direction, directionFactory.RIGHT)):
            if this.lastKeyDirection != this.keyDirection or (not this.isFollowLimitedByTerrain):
                jSuperStatement(procCall BasePatrolAI(this).processKeyAI(Canvas.RIGHT))
            this.keyDirection = Canvas.RIGHT
            this.lastKeyDirection = this.keyDirection
            this.xTotalDistance = 0
            jSuperStatement(procCall BasePatrolAI(this).processKeyAI(Canvas.KEY_NUM1))
        else:
            jSuperStatement(procCall BasePatrolAI(this).processKeyAI(this.keyDirection))

method setFiringDirectionForTargetIfInRange*(this: PacePatrolAI): Direction {.base, discardable.} =
        let directionFactory: DirectionFactory = DirectionFactory.getInstance()
        let ownerLayerInterface: AllBinaryLayer = this.getOwnerLayerInterface()
        var direction: Direction = directionFactory.NOT_BORDERED_WITH
        var lastTrackingEvent: TrackingEvent = nil
        var lastTrackingLayerInterface: LayerInterface = nil
        var directionCompositeInterface: DirectionCompositeInterface = nil
        let size: int32 = this.trackingList.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                lastTrackingEvent = TrackingEvent(JObject(this.trackingList.get(0)))
                lastTrackingLayerInterface = lastTrackingEvent.getLayerInterface()
                var x: int32 = lastTrackingLayerInterface.getXP()
                var y: int32 = lastTrackingLayerInterface.getYP()
                var yDistance: int32 = ownerLayerInterface.getYP() -% y -% ownerLayerInterface.getHeight()
                var xDistance: int32 = ownerLayerInterface.getXP() -% x -% ownerLayerInterface.getWidth()
                var absXDistance: int32 = abs(xDistance)
                var absYDistance: int32 = abs(yDistance)
                if absYDistance <= 100:
                    if absXDistance < this.getFiringDistance() div 2:
                        directionCompositeInterface = DirectionCompositeInterface(JObject(this.getOwnerLayerInterface()))
                        if xDistance < 0 and directionCompositeInterface.getDirection() == directionFactory.RIGHT:
                            direction = directionFactory.RIGHT
                        elif xDistance > 0 and directionCompositeInterface.getDirection() == directionFactory.LEFT:
                            direction = directionFactory.LEFT
        return direction

method disable*(this: PacePatrolAI) =
        discard

method onEvent*(this: PacePatrolAI, eventObject: AllBinaryEventObject) =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method onMovement*(this: PacePatrolAI, trackingEvent: TrackingEvent) =
        this.trackingList.clear()
        this.trackingList.add(trackingEvent)

method getFiringDistance*(this: PacePatrolAI): int32 {.base, discardable.} =
        return this.firingDistance

method setFiringDistance*(this: PacePatrolAI, firingDistance: int32) {.base.} =
        this.firingDistance = firingDistance

when declared(newPacePatrolAIHook3):
    newPacePatrolAIHook3 = proc (hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): BasePatrolAI = newPacePatrolAI(hashtable, ownerLayerInterface, gameInput)

