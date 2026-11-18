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
import org/allbinary/game/terrain/BasicTerrainInfo as BasicTerrainInfoModule
export BasicTerrainInfoModule
import org/allbinary/game/terrain/TerrainEventListener as TerrainEventListenerModule
export TerrainEventListenerModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/math/Angle as AngleModule
export AngleModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/game/ag/ai/scroller/PacePatrolAI as PacePatrolAIModule
export PacePatrolAIModule

type
    TerrainPatrolAI* = ref object of PacePatrolAI
        terrainEventListener*: TerrainEventListener
        DOWN*: Angle
        CLIFF*: BasicTerrainInfo

proc newTerrainPatrolAI*(hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): TerrainPatrolAI
proc initTerrainPatrolAI*(this: TerrainPatrolAI, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput)
method update*(this: TerrainPatrolAI)
method changeDirectionIfCliffReached*(this: TerrainPatrolAI) {.base.}
import org/allbinary/game/terrain/TerrainEvent as TerrainEventModule
export TerrainEventModule
import org/allbinary/game/terrain/TerrainEventCircularStaticPool as TerrainEventCircularStaticPoolModule
export TerrainEventCircularStaticPoolModule
import org/allbinary/game/terrain/TerrainEventHandler as TerrainEventHandlerModule
export TerrainEventHandlerModule
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule


# Java field initializers run after the base initializer
proc initFieldsTerrainPatrolAI(this: TerrainPatrolAI) =
    this.terrainEventListener = newTerrainEventListener()
    this.DOWN = AngleFactory.getInstance().DOWN
    this.CLIFF = newBasicTerrainInfo(this.DOWN)
    discard

proc initTerrainPatrolAI*(this: TerrainPatrolAI, hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput) =
        initPacePatrolAI(this, hashtable, ownerLayerInterface, gameInput)
        this.initFieldsTerrainPatrolAI()
        TerrainEventHandler.getInstance(ownerLayerInterface).addListener(this.terrainEventListener)
        this.terrainEventListener.onTerrainEvent(TerrainEventCircularStaticPool.getInstance().getNext(this.CLIFF))

proc newTerrainPatrolAI*(hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): TerrainPatrolAI =
    result = TerrainPatrolAI()
    initTerrainPatrolAI(result, hashtable, ownerLayerInterface, gameInput)

method update*(this: TerrainPatrolAI) =
        procCall PacePatrolAI(this).update()
        this.changeDirectionIfCliffReached()

method changeDirectionIfCliffReached*(this: TerrainPatrolAI) {.base.} =
        let list: BasicArrayList = this.terrainEventListener.getList()
        let size: int32 = list.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                let terrainEvent: TerrainEvent = TerrainEvent(JObject(list.removeAt(index)))
                let basicTerrainInfo: BasicTerrainInfo = terrainEvent.getBasicTerrainInfo()
                let angle: Angle = basicTerrainInfo.getAngle()
                if angle == this.DOWN:
                    this.nextDirection()
                    if (not this.isFollowLimitedByTerrain):
                        this.logUtil.putF("Following Limited", this, "onTerrainEvent")
                        this.isFollowLimitedByTerrain = true

when declared(newTerrainPatrolAIHook3):
    newTerrainPatrolAIHook3 = proc (hashtable: ABHashtable, ownerLayerInterface: AllBinaryLayer, gameInput: GameInput): PacePatrolAI = newTerrainPatrolAI(hashtable, ownerLayerInterface, gameInput)

