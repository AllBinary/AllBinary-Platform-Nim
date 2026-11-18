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
import org/allbinary/game/collision/CollidableNeverCollideBehavior as CollidableNeverCollideBehaviorModule
export CollidableNeverCollideBehaviorModule
import org/allbinary/game/collision/CollidableBaseBehavior as CollidableBaseBehaviorModule
export CollidableBaseBehaviorModule

type
    CollidableNeverCollideBehaviorFactory* = ref object of CollidableBaseBehaviorFactory
        instance*: CollidableNeverCollideBehavior

proc newCollidableNeverCollideBehaviorFactory*(): CollidableNeverCollideBehaviorFactory
proc getInstance*(t: typedesc[CollidableNeverCollideBehaviorFactory]): CollidableNeverCollideBehaviorFactory {.discardable.}
method createBehavior*(this: CollidableNeverCollideBehaviorFactory): CollidableBaseBehavior {.discardable.}

var CollidableNeverCollideBehaviorFactory_instanceCValue: CollidableNeverCollideBehaviorFactory
var CollidableNeverCollideBehaviorFactory_instanceCSet = false
proc instanceC*(t: typedesc[CollidableNeverCollideBehaviorFactory]): CollidableNeverCollideBehaviorFactory =
    if not CollidableNeverCollideBehaviorFactory_instanceCSet:
        CollidableNeverCollideBehaviorFactory_instanceCSet = true
        CollidableNeverCollideBehaviorFactory_instanceCValue = newCollidableNeverCollideBehaviorFactory()
    CollidableNeverCollideBehaviorFactory_instanceCValue

# Java field initializers run after the base initializer
proc initFieldsCollidableNeverCollideBehaviorFactory(this: CollidableNeverCollideBehaviorFactory) =
    this.instance = newCollidableNeverCollideBehavior(false)
    discard

proc initCollidableNeverCollideBehaviorFactory*(this: CollidableNeverCollideBehaviorFactory) =
    initCollidableBaseBehaviorFactory(this)
    this.initFieldsCollidableNeverCollideBehaviorFactory()

proc newCollidableNeverCollideBehaviorFactory*(): CollidableNeverCollideBehaviorFactory =
    result = CollidableNeverCollideBehaviorFactory()
    initCollidableNeverCollideBehaviorFactory(result)

proc getInstance*(t: typedesc[CollidableNeverCollideBehaviorFactory]): CollidableNeverCollideBehaviorFactory {.discardable.} =
        return CollidableNeverCollideBehaviorFactory.instanceC

method createBehavior*(this: CollidableNeverCollideBehaviorFactory): CollidableBaseBehavior {.discardable.} =
        return this.instance

when declared(newCollidableNeverCollideBehaviorFactoryHook0):
    newCollidableNeverCollideBehaviorFactoryHook0 = proc (): CollidableBaseBehaviorFactory = newCollidableNeverCollideBehaviorFactory()

