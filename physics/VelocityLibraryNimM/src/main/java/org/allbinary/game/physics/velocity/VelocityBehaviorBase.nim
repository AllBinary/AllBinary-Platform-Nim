#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.game.physics.velocity

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/physics/velocity/BasicVelocityProperties as BasicVelocityPropertiesModule
export BasicVelocityPropertiesModule

type
    VelocityBehaviorBase* = ref object of JObject

proc newVelocityBehaviorBase*(): VelocityBehaviorBase
method reduce*(this: VelocityBehaviorBase, velocityProperties: BasicVelocityProperties, nominator: int32, denominator: int32) {.base.}
method reduceX*(this: VelocityBehaviorBase, velocityProperties: BasicVelocityProperties, nominator: int32, denominator: int32) {.base.}
method reduceY*(this: VelocityBehaviorBase, velocityProperties: BasicVelocityProperties, nominator: int32, denominator: int32) {.base.}


proc initVelocityBehaviorBase*(this: VelocityBehaviorBase) =
    discard

proc newVelocityBehaviorBase*(): VelocityBehaviorBase =
    result = VelocityBehaviorBase()
    initVelocityBehaviorBase(result)

method reduce*(this: VelocityBehaviorBase, velocityProperties: BasicVelocityProperties, nominator: int32, denominator: int32) {.base.} =
        discard

method reduceX*(this: VelocityBehaviorBase, velocityProperties: BasicVelocityProperties, nominator: int32, denominator: int32) {.base.} =
        discard

method reduceY*(this: VelocityBehaviorBase, velocityProperties: BasicVelocityProperties, nominator: int32, denominator: int32) {.base.} =
        discard

