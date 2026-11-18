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
# package org.allbinary.animation

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/NullIndexedAnimation as NullIndexedAnimationModule
export NullIndexedAnimationModule

type
    NullIndexedAnimationInner* = ref object of NullIndexedAnimation

proc newNullIndexedAnimationInner*(): NullIndexedAnimationInner
proc initNullIndexedAnimationInner*(this: NullIndexedAnimationInner)
method paintXY*(this: NullIndexedAnimationInner, graphics: Graphics, x: int32, y: int32)
import org/allbinary/animation/IndexedAnimationBehavior as IndexedAnimationBehaviorModule
export IndexedAnimationBehaviorModule


proc initNullIndexedAnimationInner*(this: NullIndexedAnimationInner) =
        initNullIndexedAnimation(this, newIndexedAnimationBehavior(1, 250))

proc newNullIndexedAnimationInner*(): NullIndexedAnimationInner =
    result = NullIndexedAnimationInner()
    initNullIndexedAnimationInner(result)

method paintXY*(this: NullIndexedAnimationInner, graphics: Graphics, x: int32, y: int32) =
        discard

when declared(newNullIndexedAnimationInnerHook0):
    newNullIndexedAnimationInnerHook0 = proc (): NullIndexedAnimation = newNullIndexedAnimationInner()

