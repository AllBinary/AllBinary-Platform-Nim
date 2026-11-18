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
    NoShakeAnimationListener* = ref object of ShakeAnimationListener

proc newNoShakeAnimationListener*(): NoShakeAnimationListener

var NoShakeAnimationListener_NO_SHAKE_ANIMATION_LISTENERValue: ShakeAnimationListener
var NoShakeAnimationListener_NO_SHAKE_ANIMATION_LISTENERSet = false
proc NO_SHAKE_ANIMATION_LISTENERStatic*(t: typedesc[NoShakeAnimationListener]): ShakeAnimationListener =
    if not NoShakeAnimationListener_NO_SHAKE_ANIMATION_LISTENERSet:
        NoShakeAnimationListener_NO_SHAKE_ANIMATION_LISTENERSet = true
        NoShakeAnimationListener_NO_SHAKE_ANIMATION_LISTENERValue = newNoShakeAnimationListener()
    NoShakeAnimationListener_NO_SHAKE_ANIMATION_LISTENERValue

proc initNoShakeAnimationListener*(this: NoShakeAnimationListener) =
    initShakeAnimationListener(this)

proc newNoShakeAnimationListener*(): NoShakeAnimationListener =
    result = NoShakeAnimationListener()
    initNoShakeAnimationListener(result)

when declared(newNoShakeAnimationListenerHook0):
    newNoShakeAnimationListenerHook0 = proc (): ShakeAnimationListener = newNoShakeAnimationListener()

