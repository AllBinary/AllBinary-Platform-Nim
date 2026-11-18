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

type
    AnimationBehavior* = ref object of JObject

proc newAnimationBehavior*(): AnimationBehavior
proc getInstance*(t: typedesc[AnimationBehavior]): AnimationBehavior {.discardable.}
method reset*(this: AnimationBehavior) {.base.}

var AnimationBehavior_instanceValue: AnimationBehavior
var AnimationBehavior_instanceSet = false
proc instance*(t: typedesc[AnimationBehavior]): AnimationBehavior =
    if not AnimationBehavior_instanceSet:
        AnimationBehavior_instanceSet = true
        AnimationBehavior_instanceValue = newAnimationBehavior()
    AnimationBehavior_instanceValue

proc initAnimationBehavior*(this: AnimationBehavior) =
    discard

proc newAnimationBehavior*(): AnimationBehavior =
    result = AnimationBehavior()
    initAnimationBehavior(result)

proc getInstance*(t: typedesc[AnimationBehavior]): AnimationBehavior {.discardable.} =
        return AnimationBehavior.instance

method reset*(this: AnimationBehavior) {.base.} =
        discard

