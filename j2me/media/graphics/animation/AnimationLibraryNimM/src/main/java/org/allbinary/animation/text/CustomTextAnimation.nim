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
# package org.allbinary.animation.text

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Font as FontModule
export FontModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule
import org/allbinary/graphics/font/FontDebugFactory as FontDebugFactoryModule
export FontDebugFactoryModule
import org/allbinary/animation/text/TextAnimation as TextAnimationModule
export TextAnimationModule
import org/allbinary/animation/text/TextInterface as TextInterfaceModule
export TextInterfaceModule
import org/allbinary/animation/text/TextChangeListener as TextChangeListenerModule
export TextChangeListenerModule

type
    CustomTextAnimation* = ref object of TextAnimation
        fontDebugFactory*: FontDebugFactory
        fontSize*: int32
        font*: Font
        lastText*: string
        hasChanged*: bool
        textWidth*: int32

converter jAsTextInterface*(value: CustomTextAnimation): TextInterface = cast[TextInterface](value)
proc newCustomTextAnimation*(text: string, fontSize: int32, animationBehavior: AnimationBehavior): CustomTextAnimation
proc initCustomTextAnimation*(this: CustomTextAnimation, text: string, fontSize: int32, animationBehavior: AnimationBehavior)
method paintXY*(this: CustomTextAnimation, graphics: Graphics, x: int32, y: int32)
method setScale*(this: CustomTextAnimation, scaleX: float32, scaleY: float32)
method setTextWithOnMeasure*(this: CustomTextAnimation, text: string, textChangeListener: TextChangeListener)
method setText*(this: CustomTextAnimation, text: string)
method getText*(this: CustomTextAnimation): string {.discardable.}
method getWidth*(this: CustomTextAnimation): int32 {.discardable.}
method getFontHeight*(this: CustomTextAnimation): int32 {.discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsCustomTextAnimation(this: CustomTextAnimation) =
    this.fontDebugFactory = FontDebugFactory.getInstance()
    
    
    this.lastText = StringUtil.getInstance().INIT_STRING
    this.hasChanged = true
    this.textWidth = 0
    discard

proc initCustomTextAnimation*(this: CustomTextAnimation, text: string, fontSize: int32, animationBehavior: AnimationBehavior) =
        initTextAnimation(this, text, animationBehavior)
        this.initFieldsCustomTextAnimation()
        this.fontSize = fontSize
        this.font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, fontSize)

proc newCustomTextAnimation*(text: string, fontSize: int32, animationBehavior: AnimationBehavior): CustomTextAnimation =
    result = CustomTextAnimation()
    initCustomTextAnimation(result, text, fontSize, animationBehavior)

method paintXY*(this: CustomTextAnimation, graphics: Graphics, x: int32, y: int32) =
        this.myFontProcessor.process(graphics)
        let existingFont: Font = graphics.getFont()
        this.fontDebugFactory.setFont(this.font, graphics)
        jSuperStatement(procCall TextAnimation(this).paintXYNoUpdate(graphics, x, y))
        this.fontDebugFactory.setFont(existingFont, graphics)

method setScale*(this: CustomTextAnimation, scaleX: float32, scaleY: float32) =
        if scaleX != scaleY:
            raise newJException("RuntimeException", "")
        this.hasChanged = true
        this.font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, jToInt32(float64((float32(this.fontSize) * scaleX))))

method setTextWithOnMeasure*(this: CustomTextAnimation, text: string, textChangeListener: TextChangeListener) =
        jSuperStatement(procCall TextAnimation(this).setTextWithOnMeasure(text, textChangeListener))

method setText*(this: CustomTextAnimation, text: string) =
        if this.lastText != text:
            this.hasChanged = true
            this.lastText = text
            jSuperStatement(procCall TextAnimation(this).setText(text))

method getText*(this: CustomTextAnimation): string {.discardable.} =
        return this.lastText

method getWidth*(this: CustomTextAnimation): int32 {.discardable.} =
        if this.hasChanged:
            this.textWidth = this.font.stringWidth(this.textArrayP[0])
            this.hasChanged = false
        return this.textWidth

method getFontHeight*(this: CustomTextAnimation): int32 {.discardable.} =
        return this.font.getHeight()

when declared(newCustomTextAnimationHook3):
    newCustomTextAnimationHook3 = proc (text: string, fontSize: int32, animationBehavior: AnimationBehavior): TextAnimation = newCustomTextAnimation(text, fontSize, animationBehavior)

