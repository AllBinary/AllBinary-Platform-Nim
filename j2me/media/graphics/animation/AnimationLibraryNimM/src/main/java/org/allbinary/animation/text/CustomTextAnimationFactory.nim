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
# package org.allbinary.animation.text

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/animation/AnimationBehaviorFactory as AnimationBehaviorFactoryModule
export AnimationBehaviorFactoryModule
import org/allbinary/animation/AnimationInterfaceFactoryInterface as AnimationInterfaceFactoryInterfaceModule
export AnimationInterfaceFactoryInterfaceModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/media/ScaleProperties as ScalePropertiesModule
export ScalePropertiesModule

type
    CustomTextAnimationFactory* = ref object of AnimationInterfaceFactoryInterface
        logUtil*: LogUtil
        animationBehaviorFactory*: AnimationBehaviorFactory
        basicColor*: BasicColor
        text*: string
        initScaleHeight*: int32
        dx*: int32
        dy*: int32
        font*: Font
        scaleProperties*: ScaleProperties

proc newCustomTextAnimationFactory*(text: string, fontSize: int32, animationBehaviorFactory: AnimationBehaviorFactory): CustomTextAnimationFactory
proc initCustomTextAnimationFactory*(this: CustomTextAnimationFactory, text: string, fontSize: int32, animationBehaviorFactory: AnimationBehaviorFactory)
proc createDXY*(t: typedesc[CustomTextAnimationFactory], text: string, fontSize: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): CustomTextAnimationFactory {.discardable.}
method getInstance*(this: CustomTextAnimationFactory, instanceId: int32): Animation {.discardable.}
method setInitialScale*(this: CustomTextAnimationFactory, scaleProperties: ScaleProperties)
method getWidth*(this: CustomTextAnimationFactory): int32 {.base, discardable.}
method getHeight*(this: CustomTextAnimationFactory): int32 {.base, discardable.}
import org/allbinary/graphics/color/BasicColorFactory as BasicColorFactoryModule
export BasicColorFactoryModule
import org/allbinary/animation/text/CustomTextAnimation as CustomTextAnimationModule
export CustomTextAnimationModule
import org/allbinary/animation/text/AdjustCustomTextAnimation as AdjustCustomTextAnimationModule
export AdjustCustomTextAnimationModule


# Java field initializers run after the base initializer
proc initFieldsCustomTextAnimationFactory(this: CustomTextAnimationFactory) =
    this.logUtil = LogUtil.getInstance()
    
    this.basicColor = BasicColorFactory.getInstance().BLACK
    
    
    this.dx = 0
    this.dy = 0
    
    
    discard

proc createDXY*(t: typedesc[CustomTextAnimationFactory], text: string, fontSize: int32, dx: int32, dy: int32, animationBehaviorFactory: AnimationBehaviorFactory): CustomTextAnimationFactory {.discardable.} =
        let customTextAnimationFactory: CustomTextAnimationFactory = newCustomTextAnimationFactory(text, fontSize, animationBehaviorFactory)
        customTextAnimationFactory.dx = dx
        customTextAnimationFactory.dy = dy
        return customTextAnimationFactory

proc initCustomTextAnimationFactory*(this: CustomTextAnimationFactory, text: string, fontSize: int32, animationBehaviorFactory: AnimationBehaviorFactory) =
        this.initFieldsCustomTextAnimationFactory()
        this.scaleProperties = newScaleProperties()
        this.text = text
        this.scaleProperties.scaleHeight = fontSize -% (fontSize div 4)
        this.initScaleHeight = this.scaleProperties.scaleHeight
        this.animationBehaviorFactory = animationBehaviorFactory
        this.font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, this.initScaleHeight)

proc newCustomTextAnimationFactory*(text: string, fontSize: int32, animationBehaviorFactory: AnimationBehaviorFactory): CustomTextAnimationFactory =
    result = CustomTextAnimationFactory()
    initCustomTextAnimationFactory(result, text, fontSize, animationBehaviorFactory)

method getInstance*(this: CustomTextAnimationFactory, instanceId: int32): Animation {.discardable.} =
        var customTextAnimation: CustomTextAnimation = nil
        if this.dx != 0 or this.dy != 0:
            customTextAnimation = newAdjustCustomTextAnimation(this.text, this.scaleProperties.scaleHeight, this.dx, this.dy, this.animationBehaviorFactory.getOrCreateInstance())
        else:
            customTextAnimation = newCustomTextAnimation(this.text, this.scaleProperties.scaleHeight, this.animationBehaviorFactory.getOrCreateInstance())
        customTextAnimation.setBasicColorP(this.basicColor)
        return customTextAnimation

method setInitialScale*(this: CustomTextAnimationFactory, scaleProperties: ScaleProperties) =
        discard

method getWidth*(this: CustomTextAnimationFactory): int32 {.base, discardable.} =
        return this.font.stringWidth(this.text)

method getHeight*(this: CustomTextAnimationFactory): int32 {.base, discardable.} =
        return this.font.getHeight()

