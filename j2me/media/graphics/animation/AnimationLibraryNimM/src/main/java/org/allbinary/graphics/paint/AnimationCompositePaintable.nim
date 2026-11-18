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
# package org.allbinary.graphics.paint

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/graphics/paint/InitUpdatePaintable as InitUpdatePaintableModule
export InitUpdatePaintableModule

type
    AnimationCompositePaintable* = ref object of InitUpdatePaintable
        animationInterface*: Animation

proc newAnimationCompositePaintable*(animationInterface: Animation): AnimationCompositePaintable
proc initAnimationCompositePaintable*(this: AnimationCompositePaintable, animationInterface: Animation)
method paint*(this: AnimationCompositePaintable, graphics: Graphics)
method paintThreed*(this: AnimationCompositePaintable, graphics: Graphics)


# Java field initializers run after the base initializer
proc initFieldsAnimationCompositePaintable(this: AnimationCompositePaintable) =
    
    discard

proc initAnimationCompositePaintable*(this: AnimationCompositePaintable, animationInterface: Animation) =
        initInitUpdatePaintable(this)
        this.initFieldsAnimationCompositePaintable()
        this.animationInterface = animationInterface

proc newAnimationCompositePaintable*(animationInterface: Animation): AnimationCompositePaintable =
    result = AnimationCompositePaintable()
    initAnimationCompositePaintable(result, animationInterface)

method paint*(this: AnimationCompositePaintable, graphics: Graphics) =
        this.animationInterface.paintXY(graphics, 0, 0)

method paintThreed*(this: AnimationCompositePaintable, graphics: Graphics) =
        this.animationInterface.paintThreedXYZ(graphics, 0, 0, 0)

when declared(newAnimationCompositePaintableHook1):
    newAnimationCompositePaintableHook1 = proc (animationInterface: Animation): InitUpdatePaintable = newAnimationCompositePaintable(animationInterface)

