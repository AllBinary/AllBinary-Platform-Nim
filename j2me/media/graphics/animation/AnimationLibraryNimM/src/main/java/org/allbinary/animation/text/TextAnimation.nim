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
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule
import org/allbinary/graphics/font/MyFontProcessor as MyFontProcessorModule
export MyFontProcessorModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule
import org/allbinary/animation/text/TextChangeListener as TextChangeListenerModule
export TextChangeListenerModule

type
    TextAnimation* = ref object of IndexedAnimation
        updateMyFontProcessor*: MyFontProcessor
        myFontProcessor*: MyFontProcessor
        textArrayP*: JArray[string]
        anchor*: int32
        fontHeight*: int32
        offsetY*: int32
        textChangeListener*: TextChangeListener

converter jAsUpdateMyFontInterface*(value: TextAnimation): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
proc newTextAnimation*(text: string, animationBehavior: AnimationBehavior): TextAnimation
proc initTextAnimation*(this: TextAnimation, text: string, animationBehavior: AnimationBehavior)
method updateMeasurement*(this: TextAnimation, graphics: Graphics)
method nextFrame*(this: TextAnimation)
method paintXY*(this: TextAnimation, graphics: Graphics, x: int32, y: int32)
method paintXYNoUpdate*(this: TextAnimation, graphics: Graphics, x: int32, y: int32) {.base.}
method setTextWithOnMeasure*(this: TextAnimation, text: string, textChangeListener: TextChangeListener) {.base.}
method setText*(this: TextAnimation, text: string) {.base.}
method getTextArray*(this: TextAnimation): JArray[string] {.base, discardable.}
method getFontHeight*(this: TextAnimation): int32 {.base, discardable.}
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule
import org/allbinary/graphics/font/UpdateMyFontProcessor as UpdateMyFontProcessorModule
export UpdateMyFontProcessorModule
import org/allbinary/graphics/threed/SWTJOGLProcessor as SWTJOGLProcessorModule
export SWTJOGLProcessorModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsTextAnimation(this: TextAnimation) =
    this.updateMyFontProcessor = newUpdateMyFontProcessor(this)
    this.myFontProcessor = this.updateMyFontProcessor
    this.textArrayP = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY
    this.anchor = Anchor.TOP_LEFT
    this.fontHeight = 0
    this.offsetY = 0
    this.textChangeListener = TextChangeListener.getInstance()
    discard

proc initTextAnimation*(this: TextAnimation, text: string, animationBehavior: AnimationBehavior) =
        initIndexedAnimation(this, animationBehavior)
        this.initFieldsTextAnimation()
        this.setText(text)

proc newTextAnimation*(text: string, animationBehavior: AnimationBehavior): TextAnimation =
    result = TextAnimation()
    initTextAnimation(result, text, animationBehavior)

method updateMeasurement*(this: TextAnimation, graphics: Graphics) =
        let font: Font = graphics.getFont()
        this.fontHeight = font.getHeight()
        let adjustedFontHeight: int32 = jToInt32(float64(-(float64(this.fontHeight) * 2.00)))
        this.offsetY = (if SWTJOGLProcessor.getInstance().isJOGL(): adjustedFontHeight else: 0)
        this.textChangeListener.onMeasure()
        this.textChangeListener = TextChangeListener.getInstance()
        this.myFontProcessor = MyFontProcessor.getInstance()

method nextFrame*(this: TextAnimation) =
        discard

method paintXY*(this: TextAnimation, graphics: Graphics, x: int32, y: int32) =
        this.myFontProcessor.process(graphics)
        this.paintXYNoUpdate(graphics, x, y)

method paintXYNoUpdate*(this: TextAnimation, graphics: Graphics, x: int32, y: int32) {.base.} =
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor())
        let size: int32 = this.textArrayP.length
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                graphics.drawString(this.textArrayP[index], x, y +% this.offsetY +% (index *% this.fontHeight), this.anchor)

method setTextWithOnMeasure*(this: TextAnimation, text: string, textChangeListener: TextChangeListener) {.base.} =
        this.setText(text)
        this.textChangeListener = textChangeListener

method setText*(this: TextAnimation, text: string) {.base.} =
        let list: BasicArrayList = newBasicArrayListD()
        if jLength(text) > 0:
            var index: int32 = 0
            var startIndex: int32 = 0
            var endIndex: int32 = 0
            while index >= 0:
                startIndex = index
                index = jIndexOf(text, uint16(ord('\n')), startIndex)
                endIndex = index
                if index < 0:
                    endIndex = jLength(text)
                list.add(jSubstring(text, startIndex, endIndex))
                if index < 0:
                    break
                index = index +% 1
        if list.size() > 0:
            let textArray: JArray[string] = newJArray[string](list.size(), default(string))
            let size: int32 = list.size()
            block:
                var index: int32 = 0
                while index < size:
                    defer: index = index +% 1
                    textArray[index] = jstr(list.get(index))
            this.textArrayP = textArray
        else:
            this.textArrayP = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY
        this.myFontProcessor = this.updateMyFontProcessor

method getTextArray*(this: TextAnimation): JArray[string] {.base, discardable.} =
        return this.textArrayP

method getFontHeight*(this: TextAnimation): int32 {.base, discardable.} =
        return this.fontHeight

when declared(newTextAnimationHook2):
    newTextAnimationHook2 = proc (text: string, animationBehavior: AnimationBehavior): IndexedAnimation = newTextAnimation(text, animationBehavior)

