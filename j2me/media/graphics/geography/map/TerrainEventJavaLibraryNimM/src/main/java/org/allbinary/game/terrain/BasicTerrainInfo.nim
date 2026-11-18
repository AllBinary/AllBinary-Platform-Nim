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
import org/allbinary/math/Angle as AngleModule
export AngleModule

type
    BasicTerrainInfo* = ref object of JObject
        angle*: Angle

proc newBasicTerrainInfo*(angle: Angle): BasicTerrainInfo
proc initBasicTerrainInfo*(this: BasicTerrainInfo, angle: Angle)
method getAngle*(this: BasicTerrainInfo): Angle {.base, discardable.}
method setAngle*(this: BasicTerrainInfo, angle: Angle) {.base.}
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule

var BasicTerrainInfo_NULL_BASIC_TERRAIN_INFOValue: BasicTerrainInfo
var BasicTerrainInfo_NULL_BASIC_TERRAIN_INFOSet = false
proc NULL_BASIC_TERRAIN_INFO*(t: typedesc[BasicTerrainInfo]): BasicTerrainInfo =
    if not BasicTerrainInfo_NULL_BASIC_TERRAIN_INFOSet:
        BasicTerrainInfo_NULL_BASIC_TERRAIN_INFOSet = true
        BasicTerrainInfo_NULL_BASIC_TERRAIN_INFOValue = newBasicTerrainInfo(AngleFactory.getInstance().NOT_ANGLE)
    BasicTerrainInfo_NULL_BASIC_TERRAIN_INFOValue

# Java field initializers run after the base initializer
proc initFieldsBasicTerrainInfo(this: BasicTerrainInfo) =
    
    discard

proc initBasicTerrainInfo*(this: BasicTerrainInfo, angle: Angle) =
        this.initFieldsBasicTerrainInfo()
        this.angle = angle

proc newBasicTerrainInfo*(angle: Angle): BasicTerrainInfo =
    result = BasicTerrainInfo()
    initBasicTerrainInfo(result, angle)

method getAngle*(this: BasicTerrainInfo): Angle {.base, discardable.} =
        return this.angle

method setAngle*(this: BasicTerrainInfo, angle: Angle) {.base.} =
        this.angle = angle

