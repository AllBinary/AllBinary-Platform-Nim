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
# package org.allbinary.physics.movement

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/physics/movement/Movement as MovementModule
export MovementModule

type
    NoMovementFactory* = ref object of JObject
        movement*: Movement

proc newNoMovementFactory*(): NoMovementFactory
proc getInstance*(t: typedesc[NoMovementFactory]): NoMovementFactory {.discardable.}
method getMovmentInstance*(this: NoMovementFactory): Movement {.base, discardable.}

var NoMovementFactory_instanceValue: NoMovementFactory
var NoMovementFactory_instanceSet = false
proc instance*(t: typedesc[NoMovementFactory]): NoMovementFactory =
    if not NoMovementFactory_instanceSet:
        NoMovementFactory_instanceSet = true
        NoMovementFactory_instanceValue = newNoMovementFactory()
    NoMovementFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsNoMovementFactory(this: NoMovementFactory) =
    this.movement = newMovement()
    discard

proc initNoMovementFactory*(this: NoMovementFactory) =
    this.initFieldsNoMovementFactory()

proc newNoMovementFactory*(): NoMovementFactory =
    result = NoMovementFactory()
    initNoMovementFactory(result)

proc getInstance*(t: typedesc[NoMovementFactory]): NoMovementFactory {.discardable.} =
        return NoMovementFactory.instance

method getMovmentInstance*(this: NoMovementFactory): Movement {.base, discardable.} =
        return this.movement

