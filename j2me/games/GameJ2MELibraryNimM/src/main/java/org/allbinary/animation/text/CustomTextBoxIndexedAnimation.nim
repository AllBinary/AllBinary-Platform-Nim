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
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule
import org/allbinary/game/input/event/RawKeyEventListener as RawKeyEventListenerModule
export RawKeyEventListenerModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule
import org/allbinary/graphics/font/UpdateMyFontInterface as UpdateMyFontInterfaceModule
export UpdateMyFontInterfaceModule
import org/allbinary/graphics/form/item/CustomTextBox as CustomTextBoxModule
export CustomTextBoxModule
import org/allbinary/animation/text/TextInterface as TextInterfaceModule
export TextInterfaceModule
import org/allbinary/animation/text/TextChangeListener as TextChangeListenerModule
export TextChangeListenerModule

type
    CustomTextBoxIndexedAnimation* = ref object of IndexedAnimation
        customTextBox*: CustomTextBox
        lastText*: string
        hasChanged*: bool
        textChangeListener*: TextChangeListener

converter jAsRawKeyEventListener*(value: CustomTextBoxIndexedAnimation): RawKeyEventListener = cast[RawKeyEventListener](value)
converter jAsUpdateMyFontInterface*(value: CustomTextBoxIndexedAnimation): UpdateMyFontInterface = cast[UpdateMyFontInterface](value)
converter jAsTextInterface*(value: CustomTextBoxIndexedAnimation): TextInterface = cast[TextInterface](value)
proc newCustomTextBoxIndexedAnimation*(customTextBox: CustomTextBox): CustomTextBoxIndexedAnimation
proc initCustomTextBoxIndexedAnimation*(this: CustomTextBoxIndexedAnimation, customTextBox: CustomTextBox)
method setBasicColorP*(this: CustomTextBoxIndexedAnimation, basicColor: BasicColor)
method setBackgroundBasicColorP*(this: CustomTextBoxIndexedAnimation, basicColor: BasicColor)
method setTextWithOnMeasure*(this: CustomTextBoxIndexedAnimation, text: string, textChangeListener: TextChangeListener)
method updateMeasurement*(this: CustomTextBoxIndexedAnimation, graphics: Graphics)
method setText*(this: CustomTextBoxIndexedAnimation, text: string)
method getText*(this: CustomTextBoxIndexedAnimation): string {.discardable.}
method onEventRaw*(this: CustomTextBoxIndexedAnimation, keyCode: int32, deviceId: int32, repeated: bool)
method getFontHeight*(this: CustomTextBoxIndexedAnimation): int32 {.discardable.}
method paintXY*(this: CustomTextBoxIndexedAnimation, graphics: Graphics, x: int32, y: int32)
method paintThreedXYZ*(this: CustomTextBoxIndexedAnimation, graphics: Graphics, x: int32, y: int32, z: int32)
method getWidth*(this: CustomTextBoxIndexedAnimation): int32 {.discardable.}
import javax/microedition/lcdui/Font as FontModule
export FontModule
import org/allbinary/animation/AnimationBehavior as AnimationBehaviorModule
export AnimationBehaviorModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


# Java field initializers run after the base initializer
proc initFieldsCustomTextBoxIndexedAnimation(this: CustomTextBoxIndexedAnimation) =
    
    this.lastText = StringUtil.getInstance().INIT_STRING
    this.hasChanged = true
    this.textChangeListener = TextChangeListener.getInstance()
    discard

proc initCustomTextBoxIndexedAnimation*(this: CustomTextBoxIndexedAnimation, customTextBox: CustomTextBox) =
        initIndexedAnimation(this, AnimationBehavior.getInstance())
        this.initFieldsCustomTextBoxIndexedAnimation()
        this.customTextBox = customTextBox

proc newCustomTextBoxIndexedAnimation*(customTextBox: CustomTextBox): CustomTextBoxIndexedAnimation =
    result = CustomTextBoxIndexedAnimation()
    initCustomTextBoxIndexedAnimation(result, customTextBox)

method setBasicColorP*(this: CustomTextBoxIndexedAnimation, basicColor: BasicColor) =
        this.customTextBox.getTextFieldItem().setForegroundBasicColorP(basicColor)

method setBackgroundBasicColorP*(this: CustomTextBoxIndexedAnimation, basicColor: BasicColor) =
        this.customTextBox.getTextFieldItem().setBackgroundBasicColorP(basicColor)

method setTextWithOnMeasure*(this: CustomTextBoxIndexedAnimation, text: string, textChangeListener: TextChangeListener) =
        this.setText(text)
        this.textChangeListener = textChangeListener

method updateMeasurement*(this: CustomTextBoxIndexedAnimation, graphics: Graphics) =
        let font: Font = graphics.getFont()
        this.textChangeListener.onMeasure()
        this.textChangeListener = TextChangeListener.getInstance()

method setText*(this: CustomTextBoxIndexedAnimation, text: string) =
        if this.lastText != text:
            this.hasChanged = true
            this.lastText = text
            this.customTextBox.getTextFieldItem().setString(text)

method getText*(this: CustomTextBoxIndexedAnimation): string {.discardable.} =
        return this.customTextBox.getTextFieldItem().getString()

method onEventRaw*(this: CustomTextBoxIndexedAnimation, keyCode: int32, deviceId: int32, repeated: bool) =
        this.customTextBox.onEventRaw(keyCode, deviceId, repeated)

method getFontHeight*(this: CustomTextBoxIndexedAnimation): int32 {.discardable.} =
        return this.customTextBox.getTextFieldItem().getFontHeight()

method paintXY*(this: CustomTextBoxIndexedAnimation, graphics: Graphics, x: int32, y: int32) =
        this.customTextBox.paintXY(graphics, x, y)

method paintThreedXYZ*(this: CustomTextBoxIndexedAnimation, graphics: Graphics, x: int32, y: int32, z: int32) =
        discard

method getWidth*(this: CustomTextBoxIndexedAnimation): int32 {.discardable.} =
        return procCall IndexedAnimation(this).getWidth()

when declared(newCustomTextBoxIndexedAnimationHook1):
    newCustomTextBoxIndexedAnimationHook1 = proc (customTextBox: CustomTextBox): IndexedAnimation = newCustomTextBoxIndexedAnimation(customTextBox)

