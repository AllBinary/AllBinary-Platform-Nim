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
# package org.allbinary.game.physics.acceleration

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/physics/velocity/BasicVelocityProperties as BasicVelocityPropertiesModule
export BasicVelocityPropertiesModule

type
    GravityUtil* = ref object of JObject
        GAME_GRAVITY_VELOCITY*: int32
        MAX_GAME_VELOCITY*: int32

proc newGravityUtil*(): GravityUtil
proc getInstance*(t: typedesc[GravityUtil]): GravityUtil {.discardable.}
method process*(this: GravityUtil, velocityProperties: BasicVelocityProperties, customGravity: int32) {.base.}

var GravityUtil_instanceValue: GravityUtil
var GravityUtil_instanceSet = false
proc instance*(t: typedesc[GravityUtil]): GravityUtil =
    if not GravityUtil_instanceSet:
        GravityUtil_instanceSet = true
        GravityUtil_instanceValue = newGravityUtil()
    GravityUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGravityUtil(this: GravityUtil) =
    this.GAME_GRAVITY_VELOCITY = 1800
    this.MAX_GAME_VELOCITY = 18000
    discard

proc initGravityUtil*(this: GravityUtil) =
    this.initFieldsGravityUtil()

proc newGravityUtil*(): GravityUtil =
    result = GravityUtil()
    initGravityUtil(result)

proc getInstance*(t: typedesc[GravityUtil]): GravityUtil {.discardable.} =
        return GravityUtil.instance

method process*(this: GravityUtil, velocityProperties: BasicVelocityProperties, customGravity: int32) {.base.} =
        velocityProperties.getVelocityYBasicDecimalP().addint(customGravity)

