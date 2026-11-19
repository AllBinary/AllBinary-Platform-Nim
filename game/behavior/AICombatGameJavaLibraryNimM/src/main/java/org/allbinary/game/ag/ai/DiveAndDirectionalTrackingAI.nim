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
import org/allbinary/ai/ArtificialIntelligenceInterface as ArtificialIntelligenceInterfaceModule
export ArtificialIntelligenceInterfaceModule
import org/allbinary/direction/Direction as DirectionModule
export DirectionModule
import org/allbinary/direction/DirectionFactory as DirectionFactoryModule
export DirectionFactoryModule
import org/allbinary/direction/DirectionalInterface as DirectionalInterfaceModule
export DirectionalInterfaceModule
import org/allbinary/game/ai/BasicAI as BasicAIModule
export BasicAIModule
import org/allbinary/game/combat/destroy/event/DestroyedEvent as DestroyedEventModule
export DestroyedEventModule
import org/allbinary/game/combat/destroy/event/DestroyedEventListenerInterface as DestroyedEventListenerInterfaceModule
export DestroyedEventListenerInterfaceModule
import org/allbinary/game/input/GameInput as GameInputModule
export GameInputModule
import org/allbinary/game/physics/velocity/BasicVelocityProperties as BasicVelocityPropertiesModule
export BasicVelocityPropertiesModule
import org/allbinary/game/tracking/TrackingEvent as TrackingEventModule
export TrackingEventModule
import org/allbinary/game/tracking/TrackingEventListenerInterface as TrackingEventListenerInterfaceModule
export TrackingEventListenerInterfaceModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/logic/math/MathUtil as MathUtilModule
export MathUtilModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/logic/util/visitor/Visitor as VisitorModule
export VisitorModule
import org/allbinary/time/GameTickTimeDelayHelper as GameTickTimeDelayHelperModule
export GameTickTimeDelayHelperModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    DiveAndDirectionalTrackingAI* = ref object of BasicAI
        mathUtil*: MathUtil
        directionFactory*: DirectionFactory
        gameTickTimeDelayHelper*: GameTickTimeDelayHelper
        timeDelayHelper*: TimeDelayHelper
        list*: BasicArrayList
        directionalInterface*: DirectionalInterface
        velocityInterface*: BasicVelocityProperties
        directionToKeyMap*: JArray[int32]
        initialDropped*: bool
        diveP*: bool
        directionOfTarget*: Direction
        MIN_DISTANCE*: int32
        lastTrackingLayerInterface*: AllBinaryLayer
        artificialIntelligenceInterface*: ArtificialIntelligenceInterface
        aiVistor*: Visitor
        lastDirection*: Direction

converter jAsTrackingEventListenerInterface*(value: DiveAndDirectionalTrackingAI): TrackingEventListenerInterface = cast[TrackingEventListenerInterface](value)
converter jAsEventListenerInterface*(value: DiveAndDirectionalTrackingAI): EventListenerInterface = cast[EventListenerInterface](value)
converter jAsDestroyedEventListenerInterface*(value: DiveAndDirectionalTrackingAI): DestroyedEventListenerInterface = cast[DestroyedEventListenerInterface](value)
proc newDiveAndDirectionalTrackingAI*(ownerLayerInterface: AllBinaryLayer, artificialIntelligenceInterface: ArtificialIntelligenceInterface, gameInput: GameInput, visitor: Visitor): DiveAndDirectionalTrackingAI
proc initDiveAndDirectionalTrackingAI*(this: DiveAndDirectionalTrackingAI, ownerLayerInterface: AllBinaryLayer, artificialIntelligenceInterface: ArtificialIntelligenceInterface, gameInput: GameInput, visitor: Visitor)
method processAI*(this: DiveAndDirectionalTrackingAI, allBinaryLayerManager: AllBinaryLayerManager)
method init*(this: DiveAndDirectionalTrackingAI) {.base.}
method target*(this: DiveAndDirectionalTrackingAI, allBinaryLayerManager: AllBinaryLayerManager) {.base.}
method verticalTargeting*(this: DiveAndDirectionalTrackingAI, x: int32) {.base.}
method horizontalTargeting*(this: DiveAndDirectionalTrackingAI, y: int32) {.base.}
method setDive*(this: DiveAndDirectionalTrackingAI) {.base.}
method moveRight*(this: DiveAndDirectionalTrackingAI) {.base.}
method moveLeft*(this: DiveAndDirectionalTrackingAI) {.base.}
method moveDown*(this: DiveAndDirectionalTrackingAI) {.base.}
method moveUp*(this: DiveAndDirectionalTrackingAI) {.base.}
method dive*(this: DiveAndDirectionalTrackingAI) {.base.}
method attack*(this: DiveAndDirectionalTrackingAI) {.base.}
method drop*(this: DiveAndDirectionalTrackingAI) {.base.}
method isBeyondTarget*(this: DiveAndDirectionalTrackingAI): bool {.base, discardable.}
method onEvent*(this: DiveAndDirectionalTrackingAI, eventObject: AllBinaryEventObject)
method onMovement*(this: DiveAndDirectionalTrackingAI, trackingEvent: TrackingEvent)
method onDestroyed*(this: DiveAndDirectionalTrackingAI, destroyedEvent: DestroyedEvent)
method setLastDirection*(this: DiveAndDirectionalTrackingAI, lastDirection: Direction) {.base.}
method setLastKey*(this: DiveAndDirectionalTrackingAI, lastKey: int32)
method getLastDirection*(this: DiveAndDirectionalTrackingAI): Direction {.base, discardable.}
method toString*(this: DiveAndDirectionalTrackingAI): string {.discardable.}
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/direction/DirectionalCompositeInterface as DirectionalCompositeInterfaceModule
export DirectionalCompositeInterfaceModule
import org/allbinary/game/combat/destroy/event/DestroyedEventHandler as DestroyedEventHandlerModule
export DestroyedEventHandlerModule
import org/allbinary/game/identification/Group as GroupModule
export GroupModule
import org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface as VelocityInterfaceCompositeInterfaceModule
export VelocityInterfaceCompositeInterfaceModule
import org/allbinary/game/tracking/TrackingEventHandler as TrackingEventHandlerModule
export TrackingEventHandlerModule
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/time/GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactoryModule
export GameTickTimeDelayHelperFactoryModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsDiveAndDirectionalTrackingAI(this: DiveAndDirectionalTrackingAI) =
    this.mathUtil = MathUtil.getInstance()
    this.directionFactory = DirectionFactory.getInstance()
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    this.timeDelayHelper = newTimeDelayHelper(500)
    this.list = newBasicArrayListD()
    
    
    this.directionToKeyMap = newJArrayFrom[int32]([Canvas.LEFT, Canvas.DOWN, Canvas.UP, Canvas.RIGHT])
    this.initialDropped = false
    this.diveP = false
    this.directionOfTarget = Direction.getInstance(0)
    this.MIN_DISTANCE = 40
    this.lastTrackingLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER
    
    
    this.lastDirection = DirectionFactory.getInstance().NO_DIRECTION
    discard

proc initDiveAndDirectionalTrackingAI*(this: DiveAndDirectionalTrackingAI, ownerLayerInterface: AllBinaryLayer, artificialIntelligenceInterface: ArtificialIntelligenceInterface, gameInput: GameInput, visitor: Visitor) =
        initBasicAI(this, ownerLayerInterface, gameInput)
        this.initFieldsDiveAndDirectionalTrackingAI()
        this.aiVistor = visitor
        this.artificialIntelligenceInterface = artificialIntelligenceInterface
        var directionalCompositeInterface: DirectionalCompositeInterface = DirectionalCompositeInterface(JObject(this.getOwnerLayerInterface()))
        this.directionalInterface = directionalCompositeInterface.getDirectionalInterface()
        var velocityInterfaceCompositeInterface: VelocityInterfaceCompositeInterface = VelocityInterfaceCompositeInterface(JObject(this.getOwnerLayerInterface()))
        this.velocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties()
        DestroyedEventHandler.getInstance().addListenerInterface(this)
        this.init()

proc newDiveAndDirectionalTrackingAI*(ownerLayerInterface: AllBinaryLayer, artificialIntelligenceInterface: ArtificialIntelligenceInterface, gameInput: GameInput, visitor: Visitor): DiveAndDirectionalTrackingAI =
    result = DiveAndDirectionalTrackingAI()
    initDiveAndDirectionalTrackingAI(result, ownerLayerInterface, artificialIntelligenceInterface, gameInput, visitor)

method processAI*(this: DiveAndDirectionalTrackingAI, allBinaryLayerManager: AllBinaryLayerManager) =
        if this.isBeyondTarget():
            this.init()
            this.velocityInterface.zero()
        if (not this.diveP):
            this.target(allBinaryLayerManager)
        else:
            this.dive()
            this.attack()
        this.list.clear()

method init*(this: DiveAndDirectionalTrackingAI) {.base.} =
        this.diveP = false
        this.directionOfTarget = DirectionFactory.getInstance().NOT_BORDERED_WITH
        TrackingEventHandler.getInstance().addListenerInterface(this)

method target*(this: DiveAndDirectionalTrackingAI, allBinaryLayerManager: AllBinaryLayerManager) {.base.} =
        if this.list.size() == 0:
            return
        var lastTrackingEvent: TrackingEvent = TrackingEvent(JObject(this.list.removeAt(0)))
        this.lastTrackingLayerInterface = lastTrackingEvent.getLayerInterface()
        var layerInterface: AllBinaryLayer = this.lastTrackingLayerInterface
        var ownerLayerInterface: AllBinaryLayer = this.getOwnerLayerInterface()
        let groupArray: JArray[Group] = layerInterface.getGroupInterface()
        let ownerGroupArray: JArray[Group] = ownerLayerInterface.getGroupInterface()
        if groupArray == ownerGroupArray:
            return
        var x: int32 = this.lastTrackingLayerInterface.getXP()
        var y: int32 = this.lastTrackingLayerInterface.getYP()
        var yDistance: int32 = ownerLayerInterface.getYP() -% y -% ownerLayerInterface.getHeight()
        var xDistance: int32 = ownerLayerInterface.getXP() -% x -% ownerLayerInterface.getWidth()
        let directionFactory: DirectionFactory = DirectionFactory.getInstance()
        if this.mathUtil.abs(yDistance) > this.mathUtil.abs(xDistance):
            if yDistance > this.MIN_DISTANCE:
                this.directionOfTarget = directionFactory.UP
            elif yDistance < -this.MIN_DISTANCE:
                this.directionOfTarget = directionFactory.DOWN
        else:
            if xDistance > this.MIN_DISTANCE:
                this.directionOfTarget = directionFactory.LEFT
            elif xDistance < -this.MIN_DISTANCE:
                this.directionOfTarget = directionFactory.RIGHT
        if (not this.initialDropped) and (not jSame(this.directionOfTarget, directionFactory.NOT_BORDERED_WITH)):
            this.drop()
        if this.initialDropped:
            if (jSame(this.directionOfTarget, directionFactory.UP)) or (jSame(this.directionOfTarget, directionFactory.DOWN)):
                this.verticalTargeting(x)
            elif (jSame(this.directionOfTarget, directionFactory.LEFT)) or (jSame(this.directionOfTarget, directionFactory.RIGHT)):
                this.horizontalTargeting(y)
            else:
                this.artificialIntelligenceInterface.processAI(allBinaryLayerManager)

method verticalTargeting*(this: DiveAndDirectionalTrackingAI, x: int32) {.base.} =
        var ownerLayerInterface: AllBinaryLayer = this.getOwnerLayerInterface()
        if ownerLayerInterface.getXP() < x:
            this.moveRight()
        if ownerLayerInterface.getXP() > x:
            this.moveLeft()
        if ownerLayerInterface.getXP() > x -% 3 and ownerLayerInterface.getXP() < x +% 3:
            this.setDive()

method horizontalTargeting*(this: DiveAndDirectionalTrackingAI, y: int32) {.base.} =
        var ownerLayerInterface: AllBinaryLayer = this.getOwnerLayerInterface()
        if ownerLayerInterface.getYP() < y:
            this.moveDown()
        if ownerLayerInterface.getYP() > y:
            this.moveUp()
        if ownerLayerInterface.getYP() > y -% 3 and ownerLayerInterface.getYP() < y +% 3:
            this.setDive()

method setDive*(this: DiveAndDirectionalTrackingAI) {.base.} =
        this.diveP = true
        this.velocityInterface.zero()
        TrackingEventHandler.getInstance().removeListener(this)

method moveRight*(this: DiveAndDirectionalTrackingAI) {.base.} =
        this.setLastDirection(this.directionFactory.RIGHT)
        this.directionalInterface.setFrameByDirection(this.lastDirection)
        this.aiVistor.visit(this)

method moveLeft*(this: DiveAndDirectionalTrackingAI) {.base.} =
        this.setLastDirection(this.directionFactory.LEFT)
        this.directionalInterface.setFrameByDirection(this.lastDirection)
        this.aiVistor.visit(this)

method moveDown*(this: DiveAndDirectionalTrackingAI) {.base.} =
        this.setLastDirection(this.directionFactory.DOWN)
        this.directionalInterface.setFrameByDirection(this.lastDirection)
        this.aiVistor.visit(this)

method moveUp*(this: DiveAndDirectionalTrackingAI) {.base.} =
        this.setLastDirection(this.directionFactory.UP)
        this.directionalInterface.setFrameByDirection(this.lastDirection)
        this.aiVistor.visit(this)

method dive*(this: DiveAndDirectionalTrackingAI) {.base.} =
        this.directionalInterface.setFrameByDirection(this.directionOfTarget)
        this.aiVistor.visit(this)

method attack*(this: DiveAndDirectionalTrackingAI) {.base.} =
        jSuperStatement(procCall BasicAI(this).processKeyAI(Canvas.KEY_NUM1))

method drop*(this: DiveAndDirectionalTrackingAI) {.base.} =
        if this.timeDelayHelper.isTime(this.gameTickTimeDelayHelper.startTime):
            this.initialDropped = true
            this.aiVistor.visit(this)

method isBeyondTarget*(this: DiveAndDirectionalTrackingAI): bool {.base, discardable.} =
        if (jSame(this.directionOfTarget, this.directionFactory.DOWN)):
            if this.getOwnerLayerInterface().getYP() > this.lastTrackingLayerInterface.getYP() +% this.MIN_DISTANCE:
                return true
            else:
                return false
        elif (jSame(this.directionOfTarget, this.directionFactory.UP)):
            if this.getOwnerLayerInterface().getYP() < this.lastTrackingLayerInterface.getYP() +% this.MIN_DISTANCE:
                return true
            else:
                return false
        elif (jSame(this.directionOfTarget, this.directionFactory.RIGHT)):
            if this.getOwnerLayerInterface().getXP() > this.lastTrackingLayerInterface.getXP() +% this.MIN_DISTANCE:
                return true
            else:
                return false
        elif (jSame(this.directionOfTarget, this.directionFactory.LEFT)):
            if this.getOwnerLayerInterface().getXP() < this.lastTrackingLayerInterface.getXP() +% this.MIN_DISTANCE:
                return true
            else:
                return false
        else:
            return false

method onEvent*(this: DiveAndDirectionalTrackingAI, eventObject: AllBinaryEventObject) =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method onMovement*(this: DiveAndDirectionalTrackingAI, trackingEvent: TrackingEvent) =
        this.list.add(trackingEvent)

method onDestroyed*(this: DiveAndDirectionalTrackingAI, destroyedEvent: DestroyedEvent) =
        if this.getOwnerLayerInterface() == destroyedEvent.getLayerInterface():
            TrackingEventHandler.getInstance().removeListener(this)
            DestroyedEventHandler.getInstance().removeListener(this)

method setLastDirection*(this: DiveAndDirectionalTrackingAI, lastDirection: Direction) {.base.} =
        this.lastDirection = lastDirection
        var value: int32 = this.getLastDirection().getValue()
        if value < 4:
            jSuperStatement(procCall BasicAI(this).setLastKey(this.directionToKeyMap[value]))

method setLastKey*(this: DiveAndDirectionalTrackingAI, lastKey: int32) =
        jSuperStatement(procCall BasicAI(this).setLastKey(lastKey))
        if this.getLastKey() == Canvas.LEFT:
            this.lastDirection = DirectionFactory.getInstance().LEFT
        elif this.getLastKey() == Canvas.DOWN:
            this.lastDirection = DirectionFactory.getInstance().DOWN
        elif this.getLastKey() == Canvas.UP:
            this.lastDirection = DirectionFactory.getInstance().UP
        elif this.getLastKey() == Canvas.RIGHT:
            this.lastDirection = DirectionFactory.getInstance().RIGHT

method getLastDirection*(this: DiveAndDirectionalTrackingAI): Direction {.base, discardable.} =
        return this.lastDirection

method toString*(this: DiveAndDirectionalTrackingAI): string {.discardable.} =
        var stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(procCall BasicAI(this).toString())
        stringBuffer.append(" LastDirection: ")
        stringBuffer.append(StringUtil.getInstance().toString(this.getLastDirection()))
        return stringBuffer.toString()

when declared(newDiveAndDirectionalTrackingAIHook4):
    newDiveAndDirectionalTrackingAIHook4 = proc (ownerLayerInterface: AllBinaryLayer, artificialIntelligenceInterface: ArtificialIntelligenceInterface, gameInput: GameInput, visitor: Visitor): BasicAI = newDiveAndDirectionalTrackingAI(ownerLayerInterface, artificialIntelligenceInterface, gameInput, visitor)

