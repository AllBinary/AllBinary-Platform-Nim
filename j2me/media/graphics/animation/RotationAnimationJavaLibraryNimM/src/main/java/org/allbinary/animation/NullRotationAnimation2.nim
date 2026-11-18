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
import org/allbinary/animation/NullRotationAnimation as NullRotationAnimationModule
export NullRotationAnimationModule

type
    NullRotationAnimation2* = ref object of NullRotationAnimation

proc newNullRotationAnimation2*(): NullRotationAnimation2
proc initNullRotationAnimation2*(this: NullRotationAnimation2)
method paintXY*(this: NullRotationAnimation2, graphics: Graphics, x: int32, y: int32)
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule
import org/allbinary/math/AngleInfo as AngleInfoModule
export AngleInfoModule
import org/allbinary/util/CircularIndexUtil as CircularIndexUtilModule
export CircularIndexUtilModule
import org/allbinary/animation/IndexedAnimationBehavior as IndexedAnimationBehaviorModule
export IndexedAnimationBehaviorModule


proc initNullRotationAnimation2*(this: NullRotationAnimation2) =
        initNullRotationAnimation(this, AngleInfo.getInstance(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), newIndexedAnimationBehavior(1, 250))

proc newNullRotationAnimation2*(): NullRotationAnimation2 =
    result = NullRotationAnimation2()
    initNullRotationAnimation2(result)

method paintXY*(this: NullRotationAnimation2, graphics: Graphics, x: int32, y: int32) =
        discard

when declared(newNullRotationAnimation2Hook0):
    newNullRotationAnimation2Hook0 = proc (): NullRotationAnimation = newNullRotationAnimation2()

