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
# package org.allbinary.animation.special

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Integer as IntegerModule
export IntegerModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/displayable/DisplayInfoSingleton as DisplayInfoSingletonModule
export DisplayInfoSingletonModule
import org/allbinary/logic/ABSystemWrapper as ABSystemWrapperModule
export ABSystemWrapperModule
import org/allbinary/animation/special/SpecialAnimation as SpecialAnimationModule
export SpecialAnimationModule

type
    TitleAnimation* = ref object of SpecialAnimation
        systemWrapper*: ABSystemWrapper
        deltaX*: float32
        deltaY*: float32
        deltaZ*: float32
        basicColorArray*: JArray[BasicColor]
        dxArray*: JArray[int32]
        dyArray*: JArray[int32]
        widthP*: int32
        animationInterfaceArray*: JArray[IndexedAnimation]
        sizeP*: int32
        y*: int32
        lastFrameStartTime*: int64
        displayInfoSingleton*: DisplayInfoSingleton
        CLEAR_COLOR*: BasicColor

proc newTitleAnimation*(animationInterfaceArray: JArray[IndexedAnimation], basicColorArray: JArray[BasicColor], dxArray: JArray[int32], dyArray: JArray[int32], y: int32, width: int32, animationBehavior: AnimationBehavior): TitleAnimation
proc initTitleAnimation*(this: TitleAnimation, animationInterfaceArray: JArray[IndexedAnimation], basicColorArray: JArray[BasicColor], dxArray: JArray[int32], dyArray: JArray[int32], y: int32, width: int32, animationBehavior: AnimationBehavior)
proc createAnimation*(t: typedesc[TitleAnimation], animationInterfaceArray: JArray[IndexedAnimation], basicColorArray: JArray[BasicColor], dxArray: JArray[int32], dyArray: JArray[int32], y: int32, width: int32): TitleAnimation {.discardable.}
method nextFrame*(this: TitleAnimation)
method isComplete*(this: TitleAnimation): bool {.discardable.}
method setSequence*(this: TitleAnimation, sequence: JArray[int32])
method getSequence*(this: TitleAnimation): JArray[int32] {.discardable.}
method getSize*(this: TitleAnimation): int32 {.discardable.}
method getFrame*(this: TitleAnimation): int32 {.discardable.}
method setFrame*(this: TitleAnimation, frame: int32)
method setLastFrame*(this: TitleAnimation)
method reset*(this: TitleAnimation)
method previousFrame*(this: TitleAnimation)
method paintFrameXY*(this: TitleAnimation, graphics: Graphics, frame: int32, x: int32, y: int32) {.base.}
method paintXY*(this: TitleAnimation, graphics: Graphics, ax: int32, ay: int32)
import org/allbinary/animation/IndexedAnimationBehavior as IndexedAnimationBehaviorModule
export IndexedAnimationBehaviorModule
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/logic/math/PrimitiveIntUtil as PrimitiveIntUtilModule
export PrimitiveIntUtilModule


# Java field initializers run after the base initializer
proc initFieldsTitleAnimation(this: TitleAnimation) =
    this.systemWrapper = ABSystemWrapper.getInstance()
    this.deltaX = 0.0'f32
    this.deltaY = 0.0'f32
    this.deltaZ = 0.0'f32
    
    
    
    
    
    
    
    
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance()
    this.CLEAR_COLOR = BasicColorFactory.getInstance().CLEAR_COLOR
    discard

proc createAnimation*(t: typedesc[TitleAnimation], animationInterfaceArray: JArray[IndexedAnimation], basicColorArray: JArray[BasicColor], dxArray: JArray[int32], dyArray: JArray[int32], y: int32, width: int32): TitleAnimation {.discardable.} =
        return newTitleAnimation(animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, newIndexedAnimationBehavior(1, 250))

proc initTitleAnimation*(this: TitleAnimation, animationInterfaceArray: JArray[IndexedAnimation], basicColorArray: JArray[BasicColor], dxArray: JArray[int32], dyArray: JArray[int32], y: int32, width: int32, animationBehavior: AnimationBehavior) =
        initSpecialAnimation(this, animationBehavior)
        this.initFieldsTitleAnimation()
        this.lastFrameStartTime = this.systemWrapper.currentTimeMillis()
        this.animationInterfaceArray = animationInterfaceArray
        this.sizeP = this.animationInterfaceArray.length
        this.basicColorArray = basicColorArray
        this.dxArray = dxArray
        this.dyArray = dyArray
        this.y = y
        this.widthP = width
        this.reset()

proc newTitleAnimation*(animationInterfaceArray: JArray[IndexedAnimation], basicColorArray: JArray[BasicColor], dxArray: JArray[int32], dyArray: JArray[int32], y: int32, width: int32, animationBehavior: AnimationBehavior): TitleAnimation =
    result = TitleAnimation()
    initTitleAnimation(result, animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, animationBehavior)

method nextFrame*(this: TitleAnimation) =
        let currentTime: int64 = this.systemWrapper.currentTimeMillis()
        let totalTimeElapsed: int64 = currentTime -% this.lastFrameStartTime
        let indexedAnimationBehavior: IndexedAnimationBehavior = IndexedAnimationBehavior(JObject(this.getAnimationBehavior()))
        if totalTimeElapsed > indexedAnimationBehavior.frameDelayTime:
            this.previousFrame()
            this.lastFrameStartTime = currentTime
        if this.animationInterfaceArray[0].getFrame() == 0:
            indexedAnimationBehavior.loopIndex = indexedAnimationBehavior.loopIndex +% 1

method isComplete*(this: TitleAnimation): bool {.discardable.} =
        let indexedAnimationBehavior: IndexedAnimationBehavior = IndexedAnimationBehavior(JObject(this.getAnimationBehavior()))
        if indexedAnimationBehavior.loopTotal == -1 or indexedAnimationBehavior.loopIndex < indexedAnimationBehavior.loopTotal or this.getFrame() != 0:
            return false
        else:
            return true

method setSequence*(this: TitleAnimation, sequence: JArray[int32]) =
        discard

method getSequence*(this: TitleAnimation): JArray[int32] {.discardable.} =
        return PrimitiveIntUtil.getArrayInstance()

method getSize*(this: TitleAnimation): int32 {.discardable.} =
        return this.animationInterfaceArray[0].getSize()

method getFrame*(this: TitleAnimation): int32 {.discardable.} =
        return this.animationInterfaceArray[0].getFrame()

method setFrame*(this: TitleAnimation, frame: int32) =
        block:
            var index: int32 = 0
            while index < this.sizeP:
                defer: index = index +% 1
                this.animationInterfaceArray[index].setFrame(frame)

method setLastFrame*(this: TitleAnimation) =
        this.setFrame(this.getSize() -% 1)

method reset*(this: TitleAnimation) =
        this.setLastFrame()
        let indexedAnimationBehavior: IndexedAnimationBehavior = (IndexedAnimationBehavior(JObject(this.getAnimationBehavior())))
        indexedAnimationBehavior.reset()

method previousFrame*(this: TitleAnimation) =
        block:
            var index: int32 = 0
            while index < this.sizeP:
                defer: index = index +% 1
                this.animationInterfaceArray[index].previousFrame()

method paintFrameXY*(this: TitleAnimation, graphics: Graphics, frame: int32, x: int32, y: int32) {.base.} =
        this.setFrame(frame)
        this.paintXY(graphics, x, y)

method paintXY*(this: TitleAnimation, graphics: Graphics, ax: int32, ay: int32) =
        var x: int32 = 0
        if this.widthP != Integer.MIN_VALUE:
            x = ((this.displayInfoSingleton.getLastWidth() -% this.widthP) div 2)
        var deltaX: int32 = 0
        var deltaY: int32 = 0
        block:
            var index: int32 = 0
            while index < this.sizeP:
                defer: index = index +% 1
                deltaX = this.dxArray[index] +% x
                deltaY = this.dyArray[index] +% this.y
                if this.basicColorArray[index] != this.CLEAR_COLOR:
                    this.basicSetColorUtil.setBasicColorP(graphics, this.basicColorArray[index])
                this.animationInterfaceArray[index].paintXY(graphics, deltaX, deltaY)

when declared(newTitleAnimationHook7):
    newTitleAnimationHook7 = proc (animationInterfaceArray: JArray[IndexedAnimation], basicColorArray: JArray[BasicColor], dxArray: JArray[int32], dyArray: JArray[int32], y: int32, width: int32, animationBehavior: AnimationBehavior): SpecialAnimation = newTitleAnimation(animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, animationBehavior)

