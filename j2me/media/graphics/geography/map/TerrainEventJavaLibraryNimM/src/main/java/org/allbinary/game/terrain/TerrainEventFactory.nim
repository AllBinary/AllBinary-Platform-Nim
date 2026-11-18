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
import org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface as AllBinaryEventObjectFactoryInterfaceModule
export AllBinaryEventObjectFactoryInterfaceModule

type
    TerrainEventFactory* = ref object of AllBinaryEventObjectFactoryInterface

proc newTerrainEventFactory*(): TerrainEventFactory
proc initTerrainEventFactory*(this: TerrainEventFactory)
method getInstance*(this: TerrainEventFactory): AllBinaryEventObject {.discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/game/terrain/TerrainEvent as TerrainEventModule
export TerrainEventModule


proc initTerrainEventFactory*(this: TerrainEventFactory) =
        discard
        discard

proc newTerrainEventFactory*(): TerrainEventFactory =
    result = TerrainEventFactory()
    initTerrainEventFactory(result)

method getInstance*(this: TerrainEventFactory): AllBinaryEventObject {.discardable.} =
        return newTerrainEvent(NullUtil.getInstance().NULL_OBJECT)

