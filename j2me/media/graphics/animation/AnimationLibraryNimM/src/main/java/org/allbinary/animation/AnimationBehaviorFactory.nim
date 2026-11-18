#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.animation

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule

type
    AnimationBehaviorFactory* = ref object of JObject

proc newAnimationBehaviorFactory*(): AnimationBehaviorFactory
proc getInstance*(t: typedesc[AnimationBehaviorFactory]): AnimationBehaviorFactory {.discardable.}
method getOrCreateInstance*(this: AnimationBehaviorFactory): AnimationBehavior {.base, discardable.}

var AnimationBehaviorFactory_instanceValue: AnimationBehaviorFactory
var AnimationBehaviorFactory_instanceSet = false
proc instance*(t: typedesc[AnimationBehaviorFactory]): AnimationBehaviorFactory =
    if not AnimationBehaviorFactory_instanceSet:
        AnimationBehaviorFactory_instanceSet = true
        AnimationBehaviorFactory_instanceValue = newAnimationBehaviorFactory()
    AnimationBehaviorFactory_instanceValue

proc initAnimationBehaviorFactory*(this: AnimationBehaviorFactory) =
    discard

proc newAnimationBehaviorFactory*(): AnimationBehaviorFactory =
    result = AnimationBehaviorFactory()
    initAnimationBehaviorFactory(result)

proc getInstance*(t: typedesc[AnimationBehaviorFactory]): AnimationBehaviorFactory {.discardable.} =
        return AnimationBehaviorFactory.instance

method getOrCreateInstance*(this: AnimationBehaviorFactory): AnimationBehavior {.base, discardable.} =
        return AnimationBehavior.getInstance()

