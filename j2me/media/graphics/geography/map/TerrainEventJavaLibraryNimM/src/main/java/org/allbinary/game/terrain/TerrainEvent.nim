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
import org/allbinary/game/terrain/BasicTerrainInfo as BasicTerrainInfoModule
export BasicTerrainInfoModule

type
    TerrainEvent* = ref object of AllBinaryEventObject
        basicTerrainInfo*: BasicTerrainInfo

proc newTerrainEvent*(basicTerrainInfo: JObject): TerrainEvent
proc initTerrainEvent*(this: TerrainEvent, basicTerrainInfo: JObject)
method toString*(this: TerrainEvent): string {.discardable.}
method getBasicTerrainInfo*(this: TerrainEvent): BasicTerrainInfo {.base, discardable.}
method setBasicTerrainInfo*(this: TerrainEvent, basicTerrainInfo: BasicTerrainInfo) {.base.}
method setBasicTerrainInfoForCircularStaticPool*(this: TerrainEvent, basicTerrainInfo: BasicTerrainInfo) {.base.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule


# Java field initializers run after the base initializer
proc initFieldsTerrainEvent(this: TerrainEvent) =
    this.basicTerrainInfo = BasicTerrainInfo.NULL_BASIC_TERRAIN_INFO
    discard

proc initTerrainEvent*(this: TerrainEvent, basicTerrainInfo: JObject) =
        initAllBinaryEventObject(this, basicTerrainInfo)
        this.initFieldsTerrainEvent()
        this.setBasicTerrainInfo(this.basicTerrainInfo)

proc newTerrainEvent*(basicTerrainInfo: JObject): TerrainEvent =
    result = TerrainEvent()
    initTerrainEvent(result, basicTerrainInfo)

method toString*(this: TerrainEvent): string {.discardable.} =
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("TerrainEvent: \n")
        stringBuffer.append("LayerInterface: ")
        stringBuffer.append(this.basicTerrainInfo.toString())
        return stringBuffer.toString()

method getBasicTerrainInfo*(this: TerrainEvent): BasicTerrainInfo {.base, discardable.} =
        return this.basicTerrainInfo

method setBasicTerrainInfo*(this: TerrainEvent, basicTerrainInfo: BasicTerrainInfo) {.base.} =
        this.basicTerrainInfo = basicTerrainInfo

method setBasicTerrainInfoForCircularStaticPool*(this: TerrainEvent, basicTerrainInfo: BasicTerrainInfo) {.base.} =
        this.basicTerrainInfo = basicTerrainInfo

when declared(newTerrainEventHook1):
    newTerrainEventHook1 = proc (basicTerrainInfo: JObject): AllBinaryEventObject = newTerrainEvent(basicTerrainInfo)

