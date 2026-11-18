# Generated Code Do Not Modify
# package org.allbinary.game.terrain

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/terrain/TerrainEventListenerInterface as TerrainEventListenerInterfaceModule
export TerrainEventListenerInterfaceModule
import org/allbinary/game/terrain/TerrainEvent as TerrainEventModule
export TerrainEventModule

type
    TerrainEventListener* = ref object of TerrainEventListenerInterface
        list*: BasicArrayList

proc newTerrainEventListener*(): TerrainEventListener
method onEvent*(this: TerrainEventListener, eventObject: AllBinaryEventObject)
method onTerrainEvent*(this: TerrainEventListener, terrainEvent: TerrainEvent)
method getList*(this: TerrainEventListener): BasicArrayList {.base, discardable.}
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsTerrainEventListener(this: TerrainEventListener) =
    this.list = newBasicArrayListD()
    discard

proc initTerrainEventListener*(this: TerrainEventListener) =
    this.initFieldsTerrainEventListener()

proc newTerrainEventListener*(): TerrainEventListener =
    result = TerrainEventListener()
    initTerrainEventListener(result)

method onEvent*(this: TerrainEventListener, eventObject: AllBinaryEventObject) =
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)

method onTerrainEvent*(this: TerrainEventListener, terrainEvent: TerrainEvent) =
        this.list.clear()
        this.list.add(terrainEvent)

method getList*(this: TerrainEventListener): BasicArrayList {.base, discardable.} =
        return this.list

