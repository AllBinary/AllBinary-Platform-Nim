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
import org/allbinary/animation/VectorAnimation as VectorAnimationModule
export VectorAnimationModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule

type
    ColorLessVectorAnimation* = ref object of VectorAnimation

proc newColorLessVectorAnimation*(currentPoints: JArray[JArray[JArray[int32]]], animationBehavior: AnimationBehavior): ColorLessVectorAnimation
proc initColorLessVectorAnimation*(this: ColorLessVectorAnimation, currentPoints: JArray[JArray[JArray[int32]]], animationBehavior: AnimationBehavior)
method paintXY*(this: ColorLessVectorAnimation, graphics: Graphics, x: int32, y: int32)
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule


proc initColorLessVectorAnimation*(this: ColorLessVectorAnimation, currentPoints: JArray[JArray[JArray[int32]]], animationBehavior: AnimationBehavior) =
        initVectorAnimation(this, currentPoints, BasicColorFactory.getInstance().WHITE, animationBehavior)

proc newColorLessVectorAnimation*(currentPoints: JArray[JArray[JArray[int32]]], animationBehavior: AnimationBehavior): ColorLessVectorAnimation =
    result = ColorLessVectorAnimation()
    initColorLessVectorAnimation(result, currentPoints, animationBehavior)

method paintXY*(this: ColorLessVectorAnimation, graphics: Graphics, x: int32, y: int32) =
        this.paintVectors(graphics, x, y)

when declared(newColorLessVectorAnimationHook2):
    newColorLessVectorAnimationHook2 = proc (currentPoints: JArray[JArray[JArray[int32]]], animationBehavior: AnimationBehavior): VectorAnimation = newColorLessVectorAnimation(currentPoints, animationBehavior)

