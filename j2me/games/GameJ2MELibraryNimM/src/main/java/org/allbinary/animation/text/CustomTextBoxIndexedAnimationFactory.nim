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
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/animation/AnimationInterfaceFactoryInterface as AnimationInterfaceFactoryInterfaceModule
export AnimationInterfaceFactoryInterfaceModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/media/ScaleProperties as ScalePropertiesModule
export ScalePropertiesModule

type
    CustomTextBoxIndexedAnimationFactory* = ref object of AnimationInterfaceFactoryInterface
        logUtil*: LogUtil
        scaleProperties*: ScaleProperties
        maxLength*: int32

proc newCustomTextBoxIndexedAnimationFactory*(fontSize: int32, maxLength: int32): CustomTextBoxIndexedAnimationFactory
proc initCustomTextBoxIndexedAnimationFactory*(this: CustomTextBoxIndexedAnimationFactory, fontSize: int32, maxLength: int32)
method getInstance*(this: CustomTextBoxIndexedAnimationFactory, instanceId: int32): Animation {.discardable.}
method setInitialScale*(this: CustomTextBoxIndexedAnimationFactory, scaleProperties: ScaleProperties)
import javax/microedition/lcdui/Font as FontModule
export FontModule
import javax/microedition/lcdui/TextField as TextFieldModule
export TextFieldModule
import org/allbinary/graphics/form/item/CustomTextBox as CustomTextBoxModule
export CustomTextBoxModule
import org/allbinary/game/canvas/ABToGBUtil as ABToGBUtilModule
export ABToGBUtilModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/animation/text/CustomTextBox2 as CustomTextBox2Module
export CustomTextBox2Module
import org/allbinary/animation/text/CustomTextBoxIndexedAnimation as CustomTextBoxIndexedAnimationModule
export CustomTextBoxIndexedAnimationModule


# Java field initializers run after the base initializer
proc initFieldsCustomTextBoxIndexedAnimationFactory(this: CustomTextBoxIndexedAnimationFactory) =
    this.logUtil = LogUtil.getInstance()
    
    
    discard

proc initCustomTextBoxIndexedAnimationFactory*(this: CustomTextBoxIndexedAnimationFactory, fontSize: int32, maxLength: int32) =
        this.initFieldsCustomTextBoxIndexedAnimationFactory()
        this.scaleProperties = newScaleProperties()
        this.scaleProperties.scaleHeight = fontSize
        this.maxLength = maxLength

proc newCustomTextBoxIndexedAnimationFactory*(fontSize: int32, maxLength: int32): CustomTextBoxIndexedAnimationFactory =
    result = CustomTextBoxIndexedAnimationFactory()
    initCustomTextBoxIndexedAnimationFactory(result, fontSize, maxLength)

method getInstance*(this: CustomTextBoxIndexedAnimationFactory, instanceId: int32): Animation {.discardable.} =
        let abToGBUtil: ABToGBUtil = ABToGBUtil.getInstance()
        let abCanvas: AllBinaryGameCanvas = AllBinaryGameCanvas(JObject(abToGBUtil.abCanvas))
        let font: Font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, this.scaleProperties.scaleHeight)
        let customTextBox: CustomTextBox = newCustomTextBox2(abCanvas.getCustomCommandListener(), StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING, this.maxLength, TextField.ANY, font, abCanvas.getLayerManager().getBackgroundBasicColor(), abCanvas.getLayerManager().getForegroundBasicColor())
        return newCustomTextBoxIndexedAnimation(customTextBox)

method setInitialScale*(this: CustomTextBoxIndexedAnimationFactory, scaleProperties: ScaleProperties) =
        let fontSize: int32 = this.scaleProperties.scaleHeight
        this.scaleProperties = scaleProperties
        if this.scaleProperties.scaleHeight < 6:
            this.scaleProperties.scaleHeight = fontSize

