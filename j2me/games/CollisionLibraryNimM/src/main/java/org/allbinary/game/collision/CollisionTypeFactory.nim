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
import org/allbinary/game/collision/CollisionType as CollisionTypeModule
export CollisionTypeModule

type
    CollisionTypeFactory* = ref object of JObject
        NONE*: CollisionType
        DAMAGE*: CollisionType
        PICKUP*: CollisionType
        COLLISION*: CollisionType

proc newCollisionTypeFactory*(): CollisionTypeFactory
proc getInstance*(t: typedesc[CollisionTypeFactory]): CollisionTypeFactory {.discardable.}

var CollisionTypeFactory_SINGLETONValue: CollisionTypeFactory
var CollisionTypeFactory_SINGLETONSet = false
proc SINGLETON*(t: typedesc[CollisionTypeFactory]): CollisionTypeFactory =
    if not CollisionTypeFactory_SINGLETONSet:
        CollisionTypeFactory_SINGLETONSet = true
        CollisionTypeFactory_SINGLETONValue = newCollisionTypeFactory()
    CollisionTypeFactory_SINGLETONValue
proc `SINGLETON=`*(t: typedesc[CollisionTypeFactory], value: CollisionTypeFactory) =
    CollisionTypeFactory_SINGLETONSet = true
    CollisionTypeFactory_SINGLETONValue = value

# Java field initializers run after the base initializer
proc initFieldsCollisionTypeFactory(this: CollisionTypeFactory) =
    this.NONE = newCollisionType("None")
    this.DAMAGE = newCollisionType("Damage")
    this.PICKUP = newCollisionType("Pickup")
    this.COLLISION = newCollisionType("Collision")
    discard

proc initCollisionTypeFactory*(this: CollisionTypeFactory) =
    this.initFieldsCollisionTypeFactory()

proc newCollisionTypeFactory*(): CollisionTypeFactory =
    result = CollisionTypeFactory()
    initCollisionTypeFactory(result)

proc getInstance*(t: typedesc[CollisionTypeFactory]): CollisionTypeFactory {.discardable.} =
        return CollisionTypeFactory.SINGLETON

