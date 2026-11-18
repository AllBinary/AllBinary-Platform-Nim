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
# package org.allbinary.animation.caption

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import javax/microedition/media/Player as PlayerModule
export PlayerModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule

type
    CaptionIndexedAnimation* = ref object of IndexedAnimation
        animationInterface*: Animation
        movieIndexedAnimationInterface*: IndexedAnimation
        captionDx*: int32
        captionDy*: int32
        dx*: int32
        dy*: int32
        time*: int32
        END_EVENT*: AllBinaryEventObject
        timeDelayHelper*: TimeDelayHelper
        player*: Player

proc newCaptionIndexedAnimation*(animationInterface: Animation, movieIndexedAnimationInterface: IndexedAnimation, player: Player, captionDx: int32, captionDy: int32, dx: int32, dy: int32, time: int32, animationBehavior: AnimationBehavior): CaptionIndexedAnimation
proc initCaptionIndexedAnimation*(this: CaptionIndexedAnimation, animationInterface: Animation, movieIndexedAnimationInterface: IndexedAnimation, player: Player, captionDx: int32, captionDy: int32, dx: int32, dy: int32, time: int32, animationBehavior: AnimationBehavior)
method nextFrame*(this: CaptionIndexedAnimation)
method isLastFrame*(this: CaptionIndexedAnimation): bool {.discardable.}
method previousFrame*(this: CaptionIndexedAnimation)
method setFrame*(this: CaptionIndexedAnimation, index: int32)
method getFrame*(this: CaptionIndexedAnimation): int32 {.discardable.}
method getSize*(this: CaptionIndexedAnimation): int32 {.discardable.}
method setSequence*(this: CaptionIndexedAnimation, sequence: JArray[int32])
method getSequence*(this: CaptionIndexedAnimation): JArray[int32] {.discardable.}
method paintXY*(this: CaptionIndexedAnimation, graphics: Graphics, x: int32, y: int32)
method paintThreedXYZ*(this: CaptionIndexedAnimation, graphics: Graphics, x: int32, y: int32, z: int32)
import org/allbinary/animation/AnimationEventHandler as AnimationEventHandlerModule
export AnimationEventHandlerModule
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule
import org/allbinary/time/GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactoryModule
export GameTickTimeDelayHelperFactoryModule


# Java field initializers run after the base initializer
proc initFieldsCaptionIndexedAnimation(this: CaptionIndexedAnimation) =
    
    
    
    
    
    
    
    
    
    
    discard

proc initCaptionIndexedAnimation*(this: CaptionIndexedAnimation, animationInterface: Animation, movieIndexedAnimationInterface: IndexedAnimation, player: Player, captionDx: int32, captionDy: int32, dx: int32, dy: int32, time: int32, animationBehavior: AnimationBehavior) =
        initIndexedAnimation(this, animationBehavior)
        this.initFieldsCaptionIndexedAnimation()
        this.animationInterface = animationInterface
        this.movieIndexedAnimationInterface = movieIndexedAnimationInterface
        this.captionDx = captionDx
        this.captionDy = captionDy
        this.dx = dx
        this.dy = dy
        this.time = time
        this.END_EVENT = newAllBinaryEventObject(this)
        var timePerFrame: int32 = this.time div this.getSize()
        this.timeDelayHelper = newTimeDelayHelper(timePerFrame)
        this.player = player
        this.player.start()

proc newCaptionIndexedAnimation*(animationInterface: Animation, movieIndexedAnimationInterface: IndexedAnimation, player: Player, captionDx: int32, captionDy: int32, dx: int32, dy: int32, time: int32, animationBehavior: AnimationBehavior): CaptionIndexedAnimation =
    result = CaptionIndexedAnimation()
    initCaptionIndexedAnimation(result, animationInterface, movieIndexedAnimationInterface, player, captionDx, captionDy, dx, dy, time, animationBehavior)

method nextFrame*(this: CaptionIndexedAnimation) =
        if this.timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime):
            this.movieIndexedAnimationInterface.nextFrame()
        if this.isLastFrame():
            AnimationEventHandler.getInstance().fireEvent(this.END_EVENT)

method isLastFrame*(this: CaptionIndexedAnimation): bool {.discardable.} =
        if this.movieIndexedAnimationInterface.getFrame() == this.getSize() -% 1:
            return true
        else:
            return false

method previousFrame*(this: CaptionIndexedAnimation) =
        this.movieIndexedAnimationInterface.previousFrame()

method setFrame*(this: CaptionIndexedAnimation, index: int32) =
        this.movieIndexedAnimationInterface.setFrame(index)

method getFrame*(this: CaptionIndexedAnimation): int32 {.discardable.} =
        return this.movieIndexedAnimationInterface.getFrame()

method getSize*(this: CaptionIndexedAnimation): int32 {.discardable.} =
        return this.movieIndexedAnimationInterface.getSize()

method setSequence*(this: CaptionIndexedAnimation, sequence: JArray[int32]) =
        discard

method getSequence*(this: CaptionIndexedAnimation): JArray[int32] {.discardable.} =
        return PrimitiveIntUtil.getArrayInstance()

method paintXY*(this: CaptionIndexedAnimation, graphics: Graphics, x: int32, y: int32) =
        this.animationInterface.paintXY(graphics, x +% this.captionDx, y +% this.captionDy)
        this.movieIndexedAnimationInterface.paintXY(graphics, x +% this.captionDx +% this.dx, y +% this.captionDy +% this.dy)

method paintThreedXYZ*(this: CaptionIndexedAnimation, graphics: Graphics, x: int32, y: int32, z: int32) =
        this.animationInterface.paintThreedXYZ(graphics, x +% this.captionDx, y +% this.captionDy, z)
        this.movieIndexedAnimationInterface.paintThreedXYZ(graphics, x +% this.captionDx +% this.dx, y +% this.captionDy +% this.dy, z)

when declared(newCaptionIndexedAnimationHook9):
    newCaptionIndexedAnimationHook9 = proc (animationInterface: Animation, movieIndexedAnimationInterface: IndexedAnimation, player: Player, captionDx: int32, captionDy: int32, dx: int32, dy: int32, time: int32, animationBehavior: AnimationBehavior): IndexedAnimation = newCaptionIndexedAnimation(animationInterface, movieIndexedAnimationInterface, player, captionDx, captionDy, dx, dy, time, animationBehavior)

