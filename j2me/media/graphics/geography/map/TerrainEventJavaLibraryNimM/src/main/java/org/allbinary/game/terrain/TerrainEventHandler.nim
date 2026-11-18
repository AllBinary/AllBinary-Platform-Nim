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
# package org.allbinary.game.terrain

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/logic/util/event/EventListenerInterface as EventListenerInterfaceModule
export EventListenerInterfaceModule
import org/allbinary/logic/util/event/handler/BasicEventHandler as BasicEventHandlerModule
export BasicEventHandlerModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/terrain/TerrainEventListener as TerrainEventListenerModule
export TerrainEventListenerModule

type
    TerrainEventHandler* = ref object of BasicEventHandler
        list*: BasicArrayList

proc newTerrainEventHandler*(): TerrainEventHandler
proc initTerrainEventHandler*(this: TerrainEventHandler)
proc init*(t: typedesc[TerrainEventHandler])
proc getInstance*(t: typedesc[TerrainEventHandler], anyType: JObject): TerrainEventHandler {.discardable.}
method addListener*(this: TerrainEventHandler, terrainEventListener: TerrainEventListener) {.base.}
method removeAllListeners*(this: TerrainEventHandler)
method removeListener*(this: TerrainEventHandler, eventListenerInterface: EventListenerInterface)
method fireEvent*(this: TerrainEventHandler, eventObject: AllBinaryEventObject)
method process*(this: TerrainEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface)
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/logic/util/event/EventStrings as EventStringsModule
export EventStringsModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule
import org/allbinary/game/terrain/TerrainEvent as TerrainEventModule
export TerrainEventModule
import org/allbinary/game/terrain/TerrainEventListenerInterface as TerrainEventListenerInterfaceModule
export TerrainEventListenerInterfaceModule

var TerrainEventHandler_hashtableValue: ABHashtable
var TerrainEventHandler_hashtableSet = false
proc hashtable*(t: typedesc[TerrainEventHandler]): ABHashtable =
    if not TerrainEventHandler_hashtableSet:
        TerrainEventHandler_hashtableSet = true
        TerrainEventHandler_hashtableValue = StdUtil.getInstance().NULL_TABLE
    TerrainEventHandler_hashtableValue
proc `hashtable=`*(t: typedesc[TerrainEventHandler], value: ABHashtable) =
    TerrainEventHandler_hashtableSet = true
    TerrainEventHandler_hashtableValue = value

# Java field initializers run after the base initializer
proc initFieldsTerrainEventHandler(this: TerrainEventHandler) =
    this.list = newBasicArrayListD()
    discard

proc init*(t: typedesc[TerrainEventHandler]) =
        TerrainEventHandler.hashtable = StdUtil.getInstance().createHashtable()

proc getInstance*(t: typedesc[TerrainEventHandler], anyType: JObject): TerrainEventHandler {.discardable.} =
        var eventHandlerCanBeNull: JObject = TerrainEventHandler.hashtable.get(anyType)
        if (jIsNil(eventHandlerCanBeNull)):
            eventHandlerCanBeNull = newTerrainEventHandler()
            TerrainEventHandler.hashtable.put(anyType, eventHandlerCanBeNull)
        return TerrainEventHandler(JObject(eventHandlerCanBeNull))

proc initTerrainEventHandler*(this: TerrainEventHandler) =
        initBasicEventHandler(this)
        this.initFieldsTerrainEventHandler()
        discard

proc newTerrainEventHandler*(): TerrainEventHandler =
    result = TerrainEventHandler()
    initTerrainEventHandler(result)

method addListener*(this: TerrainEventHandler, terrainEventListener: TerrainEventListener) {.base.} =
        if (not this.list.contains(terrainEventListener)):
            this.list.add(terrainEventListener)

method removeAllListeners*(this: TerrainEventHandler) =
        this.list.clear()
        procCall BasicEventHandler(this).removeAllListeners()

method removeListener*(this: TerrainEventHandler, eventListenerInterface: EventListenerInterface) =
        this.list.remove(eventListenerInterface)
        procCall BasicEventHandler(this).removeListener(eventListenerInterface)

method fireEvent*(this: TerrainEventHandler, eventObject: AllBinaryEventObject) =
        block:
            var index: int32 = this.list.size()
            while jPreDecrement(index) >= 0:
                try:
                    let terrainEventListener: TerrainEventListener = TerrainEventListener(JObject(this.list.get(index)))
                    terrainEventListener.onTerrainEvent(TerrainEvent(JObject(eventObject)))
                except CatchableError as jcaught:
                    let e = jToException(jcaught)
                    this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e)
        procCall BasicEventHandler(this).fireEvent(eventObject)

method process*(this: TerrainEventHandler, eventObject: AllBinaryEventObject, eventListenerInterface: EventListenerInterface) =
        let terrainEventListenerInterface: TerrainEventListenerInterface = TerrainEventListenerInterface(JObject(eventListenerInterface))
        terrainEventListenerInterface.onTerrainEvent(TerrainEvent(JObject(eventObject)))

when declared(newTerrainEventHandlerHook0):
    newTerrainEventHandlerHook0 = proc (): BasicEventHandler = newTerrainEventHandler()

