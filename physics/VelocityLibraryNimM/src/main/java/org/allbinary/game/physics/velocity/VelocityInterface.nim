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
# package org.allbinary.game.physics.velocity

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/physics/velocity/BasicVelocityInterface as BasicVelocityInterfaceModule
export BasicVelocityInterfaceModule

type
    VelocityInterface* = ref object of BasicVelocityInterface


method getMaxForwardVelocity*(this: VelocityInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getMaxForwardVelocity")

method getMaxReverseVelocity*(this: VelocityInterface): int32 {.base, discardable.} =
        raise newJException("AbstractMethodError", "getMaxReverseVelocity")

method limitMaxXYForwardVelocity*(this: VelocityInterface) {.base.} =
        raise newJException("AbstractMethodError", "limitMaxXYForwardVelocity")

method limitMaxXYReverseVelocity*(this: VelocityInterface) {.base.} =
        raise newJException("AbstractMethodError", "limitMaxXYReverseVelocity")

method limitXYToForwardAndReverseMaxVelocity*(this: VelocityInterface) {.base.} =
        raise newJException("AbstractMethodError", "limitXYToForwardAndReverseMaxVelocity")

method limitMaxXYVelocity*(this: VelocityInterface, maxVelocity: int32) {.base.} =
        raise newJException("AbstractMethodError", "limitMaxXYVelocity")

method setMaxForwardVelocity*(this: VelocityInterface, maxForwardVelocity: int32) {.base.} =
        raise newJException("AbstractMethodError", "setMaxForwardVelocity")

method setMaxReverseVelocity*(this: VelocityInterface, maxReverseVelocity: int32) {.base.} =
        raise newJException("AbstractMethodError", "setMaxReverseVelocity")

