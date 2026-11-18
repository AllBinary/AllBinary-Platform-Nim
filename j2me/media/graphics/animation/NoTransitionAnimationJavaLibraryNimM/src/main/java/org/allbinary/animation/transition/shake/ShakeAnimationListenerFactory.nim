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
import org/allbinary/animation/transition/shake/ShakeAnimationListener as ShakeAnimationListenerModule
export ShakeAnimationListenerModule

type
    ShakeAnimationListenerFactory* = ref object of JObject

proc newShakeAnimationListenerFactory*(): ShakeAnimationListenerFactory
proc getInstance*(t: typedesc[ShakeAnimationListenerFactory]): ShakeAnimationListener {.discardable.}
import org/allbinary/animation/transition/shake/NoShakeAnimationListener as NoShakeAnimationListenerModule
export NoShakeAnimationListenerModule


proc initShakeAnimationListenerFactory*(this: ShakeAnimationListenerFactory) =
    discard

proc newShakeAnimationListenerFactory*(): ShakeAnimationListenerFactory =
    result = ShakeAnimationListenerFactory()
    initShakeAnimationListenerFactory(result)

proc getInstance*(t: typedesc[ShakeAnimationListenerFactory]): ShakeAnimationListener {.discardable.} =
        return newNoShakeAnimationListener()

