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
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/media/audio/PlayerQueue as PlayerQueueModule
export PlayerQueueModule
import org/allbinary/media/audio/Sound as SoundModule
export SoundModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule

type
    HorizontalScreenPatrolAI* = ref object of BasicAI
        keyDirection*: int32
        displayInfoSingleton*: DisplayInfoSingleton
        firingX*: int32
        firedIndex*: int32
        MAX_FIRE*: int32
        timeDelayHelper*: TimeDelayHelper
        secondaryPlayerQueue*: PlayerQueue
        sound*: Sound

proc newHorizontalScreenPatrolAI*(hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): HorizontalScreenPatrolAI
proc initHorizontalScreenPatrolAI*(this: HorizontalScreenPatrolAI, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method processAI*(this: HorizontalScreenPatrolAI, allBinaryLayerManager: AllBinaryLayerManager)
method nextDirection*(this: HorizontalScreenPatrolAI) {.base.}
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/game/layer/AllBinaryGameLayerManager as AllBinaryGameLayerManagerModule
export AllBinaryGameLayerManagerModule
import org/allbinary/game/rand/MyRandomFactory as MyRandomFactoryModule
export MyRandomFactoryModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/media/audio/SecondaryPlayerQueueFactory as SecondaryPlayerQueueFactoryModule
export SecondaryPlayerQueueFactoryModule

var HorizontalScreenPatrolAI_SOUNDValue: int32
var HorizontalScreenPatrolAI_SOUNDSet = false
proc SOUND*(t: typedesc[HorizontalScreenPatrolAI]): int32 =
    if not HorizontalScreenPatrolAI_SOUNDSet:
        HorizontalScreenPatrolAI_SOUNDSet = true
        HorizontalScreenPatrolAI_SOUNDValue = SmallIntegerSingletonFactory.getInstance().getAt(433)
    HorizontalScreenPatrolAI_SOUNDValue

# Java field initializers run after the base initializer
proc initFieldsHorizontalScreenPatrolAI(this: HorizontalScreenPatrolAI) =
    this.keyDirection = Canvas.LEFT
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance()
    this.firingX = this.displayInfoSingleton.getLastHalfWidth()
    this.firedIndex = 0
    this.MAX_FIRE = 28
    this.timeDelayHelper = newTimeDelayHelper(240)
    this.secondaryPlayerQueue = SecondaryPlayerQueueFactory.getInstance()
    
    discard

proc initHorizontalScreenPatrolAI*(this: HorizontalScreenPatrolAI, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initBasicAI(this, ownerLayerInterface, gameInput)
        this.initFieldsHorizontalScreenPatrolAI()
        this.sound = Sound(JObject(hashtable.get(HorizontalScreenPatrolAI.SOUND)))
        if (jIsNil(this.sound)):
            raise newJException("Exception", "No Sound Provided!!")

proc newHorizontalScreenPatrolAI*(hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): HorizontalScreenPatrolAI =
    result = HorizontalScreenPatrolAI()
    initHorizontalScreenPatrolAI(result, hashtable, ownerLayerInterface, gameInput)

method processAI*(this: HorizontalScreenPatrolAI, allBinaryLayerManager: AllBinaryLayerManager) =
        jSuperStatement(procCall BasicAI(this).processKeyAI(this.keyDirection))
        if this.timeDelayHelper.isTimeTNT():
            var layerInterface: AllBinaryLayer = this.getOwnerLayerInterface()
            var currentOwnerLayerX: int32 = layerInterface.getXP()
            if currentOwnerLayerX < -layerInterface.getWidth():
                var y: int32 = MyRandomFactory.getInstance().getAbsoluteNextIntAllowZero(50)
                layerInterface.setPosition(this.displayInfoSingleton.getLastWidth() +% layerInterface.getWidth() +% 50, y, layerInterface.getZP())
                this.firedIndex = 0
                this.firingX = this.displayInfoSingleton.getLastHalfWidth() +% MyRandomFactory.getInstance().getNextInt(this.displayInfoSingleton.getLastHalfWidth())
                this.secondaryPlayerQueue.add(this.sound)
            if currentOwnerLayerX < this.firingX and currentOwnerLayerX > -layerInterface.getWidth():
                jSuperStatement(procCall BasicAI(this).processKeyAI(Canvas.KEY_NUM1))
                let gameLayerManager: AllBinaryGameLayerManager = AllBinaryGameLayerManager(JObject(allBinaryLayerManager))
                var FIRE: int32 = ashr((gameLayerManager.getGameInfo().getCurrentLevel() +% 12), 2)
                if FIRE > this.MAX_FIRE:
                    FIRE = this.MAX_FIRE
                if this.firedIndex > FIRE:
                    this.firedIndex = 0
                    this.firingX = Integer.MIN_VALUE
                this.firedIndex = this.firedIndex +% 1

method nextDirection*(this: HorizontalScreenPatrolAI) {.base.} =
        discard

when declared(newHorizontalScreenPatrolAIHook3):
    newHorizontalScreenPatrolAIHook3 = proc (hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): BasicAI = newHorizontalScreenPatrolAI(hashtable, ownerLayerInterface, gameInput)

