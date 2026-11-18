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
# package org.allbinary.animation.caption

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule

type
    CaptionAnimationHelperBase* = ref object of Animation

proc newCaptionAnimationHelperBase*(): CaptionAnimationHelperBase
method isShowing*(this: CaptionAnimationHelperBase): bool {.base, discardable.}
method tick*(this: CaptionAnimationHelperBase) {.base.}
method update*(this: CaptionAnimationHelperBase, message: string, basicColor: BasicColor) {.base.}
method paintXY*(this: CaptionAnimationHelperBase, graphics: Graphics, x: int32, y: int32)

var CaptionAnimationHelperBase_INSTANCEValue: CaptionAnimationHelperBase
var CaptionAnimationHelperBase_INSTANCESet = false
proc INSTANCE*(t: typedesc[CaptionAnimationHelperBase]): CaptionAnimationHelperBase =
    if not CaptionAnimationHelperBase_INSTANCESet:
        CaptionAnimationHelperBase_INSTANCESet = true
        CaptionAnimationHelperBase_INSTANCEValue = newCaptionAnimationHelperBase()
    CaptionAnimationHelperBase_INSTANCEValue

proc initCaptionAnimationHelperBase*(this: CaptionAnimationHelperBase) =
    initAnimation(this)

proc newCaptionAnimationHelperBase*(): CaptionAnimationHelperBase =
    result = CaptionAnimationHelperBase()
    initCaptionAnimationHelperBase(result)

method isShowing*(this: CaptionAnimationHelperBase): bool {.base, discardable.} =
        return false

method tick*(this: CaptionAnimationHelperBase) {.base.} =
        discard

method update*(this: CaptionAnimationHelperBase, message: string, basicColor: BasicColor) {.base.} =
        discard

method paintXY*(this: CaptionAnimationHelperBase, graphics: Graphics, x: int32, y: int32) =
        discard

when declared(newCaptionAnimationHelperBaseHook0):
    newCaptionAnimationHelperBaseHook0 = proc (): Animation = newCaptionAnimationHelperBase()

