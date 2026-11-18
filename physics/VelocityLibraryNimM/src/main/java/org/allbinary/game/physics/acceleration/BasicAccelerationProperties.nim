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

type
    BasicAccelerationProperties* = ref object of JObject
        forward*: int32
        reverse*: int32

proc newBasicAccelerationProperties*(forward: int32, reverse: int32): BasicAccelerationProperties
proc initBasicAccelerationProperties*(this: BasicAccelerationProperties, forward: int32, reverse: int32)
method setReverse*(this: BasicAccelerationProperties, reverse: int32) {.base.}
method getReverse*(this: BasicAccelerationProperties): int32 {.base, discardable.}
method setForward*(this: BasicAccelerationProperties, forward: int32) {.base.}
method getForward*(this: BasicAccelerationProperties): int32 {.base, discardable.}


# Java field initializers run after the base initializer
proc initFieldsBasicAccelerationProperties(this: BasicAccelerationProperties) =
    this.forward = 0
    this.reverse = 0
    discard

proc initBasicAccelerationProperties*(this: BasicAccelerationProperties, forward: int32, reverse: int32) =
        this.initFieldsBasicAccelerationProperties()
        this.setForward(forward)
        this.setReverse(reverse)

proc newBasicAccelerationProperties*(forward: int32, reverse: int32): BasicAccelerationProperties =
    result = BasicAccelerationProperties()
    initBasicAccelerationProperties(result, forward, reverse)

method setReverse*(this: BasicAccelerationProperties, reverse: int32) {.base.} =
        this.reverse = reverse

method getReverse*(this: BasicAccelerationProperties): int32 {.base, discardable.} =
        return this.reverse

method setForward*(this: BasicAccelerationProperties, forward: int32) {.base.} =
        this.forward = forward

method getForward*(this: BasicAccelerationProperties): int32 {.base, discardable.} =
        return this.forward

