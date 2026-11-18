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
import org/allbinary/game/physics/velocity/VelocityBehaviorBase as VelocityBehaviorBaseModule
export VelocityBehaviorBaseModule
import org/allbinary/game/physics/velocity/BasicVelocityProperties as BasicVelocityPropertiesModule
export BasicVelocityPropertiesModule

type
    DragVelocityBehavior* = ref object of VelocityBehaviorBase

proc newDragVelocityBehavior*(): DragVelocityBehavior
method reduce*(this: DragVelocityBehavior, velocityProperties: BasicVelocityProperties, nominator: int32, denominator: int32)
method reduceX*(this: DragVelocityBehavior, velocityProperties: BasicVelocityProperties, nominator: int32, denominator: int32)
method reduceY*(this: DragVelocityBehavior, velocityProperties: BasicVelocityProperties, nominator: int32, denominator: int32)
import org/allbinary/logic/math/BasicDecimal as BasicDecimalModule
export BasicDecimalModule

var DragVelocityBehavior_instanceValue: DragVelocityBehavior
var DragVelocityBehavior_instanceSet = false
proc instance*(t: typedesc[DragVelocityBehavior]): DragVelocityBehavior =
    if not DragVelocityBehavior_instanceSet:
        DragVelocityBehavior_instanceSet = true
        DragVelocityBehavior_instanceValue = newDragVelocityBehavior()
    DragVelocityBehavior_instanceValue

proc initDragVelocityBehavior*(this: DragVelocityBehavior) =
    initVelocityBehaviorBase(this)

proc newDragVelocityBehavior*(): DragVelocityBehavior =
    result = DragVelocityBehavior()
    initDragVelocityBehavior(result)

method reduce*(this: DragVelocityBehavior, velocityProperties: BasicVelocityProperties, nominator: int32, denominator: int32) =
        if velocityProperties.getVelocityXBasicDecimalP().getUnscaled() != 0'i64:
            let basicDecimal: BasicDecimal = velocityProperties.getVelocityXBasicDecimalP()
            basicDecimal.multiplyint(nominator)
            basicDecimal.divideint(denominator)
        if velocityProperties.getVelocityYBasicDecimalP().getUnscaled() != 0'i64:
            let basicDecimal: BasicDecimal = velocityProperties.getVelocityYBasicDecimalP()
            basicDecimal.multiplyint(nominator)
            basicDecimal.divideint(denominator)

method reduceX*(this: DragVelocityBehavior, velocityProperties: BasicVelocityProperties, nominator: int32, denominator: int32) =
        let basicDecimal: BasicDecimal = velocityProperties.getVelocityXBasicDecimalP()
        if basicDecimal.getUnscaled() != 0'i64:
            basicDecimal.multiplyint(nominator)
            basicDecimal.divideint(denominator)

method reduceY*(this: DragVelocityBehavior, velocityProperties: BasicVelocityProperties, nominator: int32, denominator: int32) =
        if velocityProperties.getVelocityYBasicDecimalP().getUnscaled() != 0'i64:
            let basicDecimal: BasicDecimal = velocityProperties.getVelocityYBasicDecimalP()
            basicDecimal.multiplyint(nominator)
            basicDecimal.divideint(denominator)

when declared(newDragVelocityBehaviorHook0):
    newDragVelocityBehaviorHook0 = proc (): VelocityBehaviorBase = newDragVelocityBehavior()

