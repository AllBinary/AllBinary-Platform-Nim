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
# package org.allbinary.game.physics

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/physics/velocity/VelocityProperties as VelocityPropertiesModule
export VelocityPropertiesModule

type
    FrictionProperties* = ref object of JObject

proc newFrictionProperties*(): FrictionProperties
proc initFrictionProperties*(this: FrictionProperties)
method friction*(this: FrictionProperties, velocityProperties: VelocityProperties, nominator: int32) {.base.}
import org/allbinary/game/physics/friction/FrictionData as FrictionDataModule
export FrictionDataModule
import org/allbinary/game/physics/velocity/DragVelocityBehavior as DragVelocityBehaviorModule
export DragVelocityBehaviorModule


proc initFrictionProperties*(this: FrictionProperties) =
        discard
        discard

proc newFrictionProperties*(): FrictionProperties =
    result = FrictionProperties()
    initFrictionProperties(result)

method friction*(this: FrictionProperties, velocityProperties: VelocityProperties, nominator: int32) {.base.} =
        DragVelocityBehavior.instance.reduce(velocityProperties, nominator, FrictionData.getFrictionDenominator())

