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
    ShakeAnimationListener* = ref object of JObject

proc newShakeAnimationListener*(): ShakeAnimationListener
method onSmallShakeEvent*(this: ShakeAnimationListener) {.base.}
method onMediumShakeEvent*(this: ShakeAnimationListener) {.base.}
method onLargeShakeEvent*(this: ShakeAnimationListener) {.base.}
method onShakeEvent*(this: ShakeAnimationListener, shakeEvent: ShakeEvent) {.base.}
method getType*(this: ShakeAnimationListener): int32 {.base, discardable.}


proc initShakeAnimationListener*(this: ShakeAnimationListener) =
    discard

proc newShakeAnimationListener*(): ShakeAnimationListener =
    result = ShakeAnimationListener()
    initShakeAnimationListener(result)

method onSmallShakeEvent*(this: ShakeAnimationListener) {.base.} =
        discard

method onMediumShakeEvent*(this: ShakeAnimationListener) {.base.} =
        discard

method onLargeShakeEvent*(this: ShakeAnimationListener) {.base.} =
        discard

method onShakeEvent*(this: ShakeAnimationListener, shakeEvent: ShakeEvent) {.base.} =
        discard

method getType*(this: ShakeAnimationListener): int32 {.base, discardable.} =
        return 0

