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
import org/allbinary/game/input/GameInput as GameInputModule
export GameInputModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/game/ag/ai/scroller/BasePatrolAI as BasePatrolAIModule
export BasePatrolAIModule

type
    RandomPatrolAI* = ref object of BasePatrolAI
        changedDirection*: bool

proc newRandomPatrolAI*(hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): RandomPatrolAI
proc initRandomPatrolAI*(this: RandomPatrolAI, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method updateRandomDistance*(this: RandomPatrolAI) {.base.}
method processAI*(this: RandomPatrolAI, allBinaryLayerManager: AllBinaryLayerManager)
method nextDirection*(this: RandomPatrolAI)
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/game/rand/MyRandomFactory as MyRandomFactoryModule
export MyRandomFactoryModule


# Java field initializers run after the base initializer
proc initFieldsRandomPatrolAI(this: RandomPatrolAI) =
    this.changedDirection = true
    discard

proc initRandomPatrolAI*(this: RandomPatrolAI, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initBasePatrolAI(this, hashtable, ownerLayerInterface, gameInput)
        this.initFieldsRandomPatrolAI()
        this.updateRandomDistance()

proc newRandomPatrolAI*(hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): RandomPatrolAI =
    result = RandomPatrolAI()
    initRandomPatrolAI(result, hashtable, ownerLayerInterface, gameInput)

method updateRandomDistance*(this: RandomPatrolAI) {.base.} =
        this.currentDistance = MyRandomFactory.getInstance().getAbsoluteNextInt(this.maxDistance.intValue())

method processAI*(this: RandomPatrolAI, allBinaryLayerManager: AllBinaryLayerManager) =
        procCall BasePatrolAI(this).update()
        procCall BasePatrolAI(this).processKeyAI(this.keyDirection)
        if this.changedDirection:
            procCall BasePatrolAI(this).processKeyAI(Canvas.KEY_NUM1)
            this.updateRandomDistance()
            this.changedDirection = false

method nextDirection*(this: RandomPatrolAI) =
        procCall BasePatrolAI(this).nextDirection()
        this.changedDirection = true

when declared(newRandomPatrolAIHook3):
    newRandomPatrolAIHook3 = proc (hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): BasePatrolAI = newRandomPatrolAI(hashtable, ownerLayerInterface, gameInput)

