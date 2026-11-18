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
# package org.allbinary.animation.transition

{.warning[UnusedImport]: off.}
import allbinary_java

type
    AnimationListenerInterface* = ref object of JObject


method onPlatformAnimationStart*(this: AnimationListenerInterface) {.base.} =
        raise newJException("AbstractMethodError", "onPlatformAnimationStart")

method onPlatformAnimationEnd*(this: AnimationListenerInterface) {.base.} =
        raise newJException("AbstractMethodError", "onPlatformAnimationEnd")

method onPlatformAnimationRepeat*(this: AnimationListenerInterface) {.base.} =
        raise newJException("AbstractMethodError", "onPlatformAnimationRepeat")

