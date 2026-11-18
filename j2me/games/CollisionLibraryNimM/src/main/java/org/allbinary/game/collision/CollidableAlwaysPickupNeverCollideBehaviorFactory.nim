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
# package org.allbinary.game.collision

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/collision/CollidableBaseBehaviorFactory as CollidableBaseBehaviorFactoryModule
export CollidableBaseBehaviorFactoryModule
import org/allbinary/game/collision/CollidableAlwaysPickupNeverCollideBehavior as CollidableAlwaysPickupNeverCollideBehaviorModule
export CollidableAlwaysPickupNeverCollideBehaviorModule
import org/allbinary/game/collision/CollidableBaseBehavior as CollidableBaseBehaviorModule
export CollidableBaseBehaviorModule

type
    CollidableAlwaysPickupNeverCollideBehaviorFactory* = ref object of CollidableBaseBehaviorFactory
        instance*: CollidableAlwaysPickupNeverCollideBehavior

proc newCollidableAlwaysPickupNeverCollideBehaviorFactory*(): CollidableAlwaysPickupNeverCollideBehaviorFactory
proc getInstance*(t: typedesc[CollidableAlwaysPickupNeverCollideBehaviorFactory]): CollidableAlwaysPickupNeverCollideBehaviorFactory {.discardable.}
method createBehavior*(this: CollidableAlwaysPickupNeverCollideBehaviorFactory): CollidableBaseBehavior {.discardable.}

var CollidableAlwaysPickupNeverCollideBehaviorFactory_instanceCValue: CollidableAlwaysPickupNeverCollideBehaviorFactory
var CollidableAlwaysPickupNeverCollideBehaviorFactory_instanceCSet = false
proc instanceC*(t: typedesc[CollidableAlwaysPickupNeverCollideBehaviorFactory]): CollidableAlwaysPickupNeverCollideBehaviorFactory =
    if not CollidableAlwaysPickupNeverCollideBehaviorFactory_instanceCSet:
        CollidableAlwaysPickupNeverCollideBehaviorFactory_instanceCSet = true
        CollidableAlwaysPickupNeverCollideBehaviorFactory_instanceCValue = newCollidableAlwaysPickupNeverCollideBehaviorFactory()
    CollidableAlwaysPickupNeverCollideBehaviorFactory_instanceCValue

# Java field initializers run after the base initializer
proc initFieldsCollidableAlwaysPickupNeverCollideBehaviorFactory(this: CollidableAlwaysPickupNeverCollideBehaviorFactory) =
    this.instance = newCollidableAlwaysPickupNeverCollideBehavior()
    discard

proc initCollidableAlwaysPickupNeverCollideBehaviorFactory*(this: CollidableAlwaysPickupNeverCollideBehaviorFactory) =
    initCollidableBaseBehaviorFactory(this)
    this.initFieldsCollidableAlwaysPickupNeverCollideBehaviorFactory()

proc newCollidableAlwaysPickupNeverCollideBehaviorFactory*(): CollidableAlwaysPickupNeverCollideBehaviorFactory =
    result = CollidableAlwaysPickupNeverCollideBehaviorFactory()
    initCollidableAlwaysPickupNeverCollideBehaviorFactory(result)

proc getInstance*(t: typedesc[CollidableAlwaysPickupNeverCollideBehaviorFactory]): CollidableAlwaysPickupNeverCollideBehaviorFactory {.discardable.} =
        return CollidableAlwaysPickupNeverCollideBehaviorFactory.instanceC

method createBehavior*(this: CollidableAlwaysPickupNeverCollideBehaviorFactory): CollidableBaseBehavior {.discardable.} =
        return this.instance

when declared(newCollidableAlwaysPickupNeverCollideBehaviorFactoryHook0):
    newCollidableAlwaysPickupNeverCollideBehaviorFactoryHook0 = proc (): CollidableBaseBehaviorFactory = newCollidableAlwaysPickupNeverCollideBehaviorFactory()

