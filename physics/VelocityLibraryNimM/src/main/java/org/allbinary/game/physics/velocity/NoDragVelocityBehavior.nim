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
import org/allbinary/game/physics/velocity/VelocityBehaviorBase as VelocityBehaviorBaseModule
export VelocityBehaviorBaseModule

type
    NoDragVelocityBehavior* = ref object of VelocityBehaviorBase

proc newNoDragVelocityBehavior*(): NoDragVelocityBehavior

var NoDragVelocityBehavior_instanceValue: NoDragVelocityBehavior
var NoDragVelocityBehavior_instanceSet = false
proc instance*(t: typedesc[NoDragVelocityBehavior]): NoDragVelocityBehavior =
    if not NoDragVelocityBehavior_instanceSet:
        NoDragVelocityBehavior_instanceSet = true
        NoDragVelocityBehavior_instanceValue = newNoDragVelocityBehavior()
    NoDragVelocityBehavior_instanceValue

proc initNoDragVelocityBehavior*(this: NoDragVelocityBehavior) =
    initVelocityBehaviorBase(this)

proc newNoDragVelocityBehavior*(): NoDragVelocityBehavior =
    result = NoDragVelocityBehavior()
    initNoDragVelocityBehavior(result)

when declared(newNoDragVelocityBehaviorHook0):
    newNoDragVelocityBehaviorHook0 = proc (): VelocityBehaviorBase = newNoDragVelocityBehavior()

