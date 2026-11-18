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
# package org.allbinary.animation.transition.shake

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/animation/transition/shake/ShakeEvent as ShakeEventModule
export ShakeEventModule

type
    ShakeEventFactory* = ref object of JObject
        MICRO*: ShakeEvent
        SMALL*: ShakeEvent
        MEDIUM*: ShakeEvent
        LARGE*: ShakeEvent

proc newShakeEventFactory*(): ShakeEventFactory
proc getInstance*(t: typedesc[ShakeEventFactory]): ShakeEventFactory {.discardable.}
method init*(this: ShakeEventFactory) {.base.}

var ShakeEventFactory_instanceValue: ShakeEventFactory
var ShakeEventFactory_instanceSet = false
proc instance*(t: typedesc[ShakeEventFactory]): ShakeEventFactory =
    if not ShakeEventFactory_instanceSet:
        ShakeEventFactory_instanceSet = true
        ShakeEventFactory_instanceValue = newShakeEventFactory()
    ShakeEventFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsShakeEventFactory(this: ShakeEventFactory) =
    this.MICRO = newShakeEvent()
    this.SMALL = newShakeEvent()
    this.MEDIUM = newShakeEvent()
    this.LARGE = newShakeEvent()
    discard

proc initShakeEventFactory*(this: ShakeEventFactory) =
    this.initFieldsShakeEventFactory()

proc newShakeEventFactory*(): ShakeEventFactory =
    result = ShakeEventFactory()
    initShakeEventFactory(result)

proc getInstance*(t: typedesc[ShakeEventFactory]): ShakeEventFactory {.discardable.} =
        return ShakeEventFactory.instance

method init*(this: ShakeEventFactory) {.base.} =
        discard

