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
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/animation/VectorAnimation as VectorAnimationModule
export VectorAnimationModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule

type
    AdjustedVectorAnimation* = ref object of VectorAnimation
        dx*: int32
        dy*: int32

proc newAdjustedVectorAnimation*(currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, dx: int32, dy: int32, animationBehavior: AnimationBehavior): AdjustedVectorAnimation
proc initAdjustedVectorAnimation*(this: AdjustedVectorAnimation, currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, dx: int32, dy: int32, animationBehavior: AnimationBehavior)
method paintXY*(this: AdjustedVectorAnimation, graphics: Graphics, x: int32, y: int32)


# Java field initializers run after the base initializer
proc initFieldsAdjustedVectorAnimation(this: AdjustedVectorAnimation) =
    
    
    discard

proc initAdjustedVectorAnimation*(this: AdjustedVectorAnimation, currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, dx: int32, dy: int32, animationBehavior: AnimationBehavior) =
        initVectorAnimation(this, currentPoints, basicColor, animationBehavior)
        this.initFieldsAdjustedVectorAnimation()
        this.dx = dx
        this.dy = dy

proc newAdjustedVectorAnimation*(currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, dx: int32, dy: int32, animationBehavior: AnimationBehavior): AdjustedVectorAnimation =
    result = AdjustedVectorAnimation()
    initAdjustedVectorAnimation(result, currentPoints, basicColor, dx, dy, animationBehavior)

method paintXY*(this: AdjustedVectorAnimation, graphics: Graphics, x: int32, y: int32) =
        jSuperStatement(procCall VectorAnimation(this).paintXY(graphics, x +% this.dx, y +% this.dy))

when declared(newAdjustedVectorAnimationHook5):
    newAdjustedVectorAnimationHook5 = proc (currentPoints: JArray[JArray[JArray[int32]]], basicColor: BasicColor, dx: int32, dy: int32, animationBehavior: AnimationBehavior): VectorAnimation = newAdjustedVectorAnimation(currentPoints, basicColor, dx, dy, animationBehavior)

