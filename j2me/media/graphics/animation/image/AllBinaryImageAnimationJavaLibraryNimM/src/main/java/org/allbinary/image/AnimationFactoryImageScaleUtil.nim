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
# package org.allbinary.image

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/animation/image/BaseImageAnimationFactory as BaseImageAnimationFactoryModule
export BaseImageAnimationFactoryModule
import org/allbinary/media/image/ImageJ2MEScaleUtil as ImageJ2MEScaleUtilModule
export ImageJ2MEScaleUtilModule

type
    AnimationFactoryImageScaleUtil* = ref object of JObject
        imageScaleUtil*: ImageJ2MEScaleUtil

proc newAnimationFactoryImageScaleUtil*(): AnimationFactoryImageScaleUtil
proc getInstance*(t: typedesc[AnimationFactoryImageScaleUtil]): AnimationFactoryImageScaleUtil {.discardable.}
method createImage*(this: AnimationFactoryImageScaleUtil, image: Image, width: int32, height: int32, scaleWidth: int32, scaleHeight: int32): Image {.base, discardable.}
method processAdjust*(this: AnimationFactoryImageScaleUtil, baseImageAnimationFactory: BaseImageAnimationFactory) {.base.}
import org/allbinary/animation/image/AnimationFactoryInitializationVisitor as AnimationFactoryInitializationVisitorModule
export AnimationFactoryInitializationVisitorModule
import org/allbinary/media/ScaleProperties as ScalePropertiesModule
export ScalePropertiesModule

var AnimationFactoryImageScaleUtil_instanceValue: AnimationFactoryImageScaleUtil
var AnimationFactoryImageScaleUtil_instanceSet = false
proc instance*(t: typedesc[AnimationFactoryImageScaleUtil]): AnimationFactoryImageScaleUtil =
    if not AnimationFactoryImageScaleUtil_instanceSet:
        AnimationFactoryImageScaleUtil_instanceSet = true
        AnimationFactoryImageScaleUtil_instanceValue = newAnimationFactoryImageScaleUtil()
    AnimationFactoryImageScaleUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsAnimationFactoryImageScaleUtil(this: AnimationFactoryImageScaleUtil) =
    this.imageScaleUtil = ImageJ2MEScaleUtil.getInstance()
    discard

proc initAnimationFactoryImageScaleUtil*(this: AnimationFactoryImageScaleUtil) =
    this.initFieldsAnimationFactoryImageScaleUtil()

proc newAnimationFactoryImageScaleUtil*(): AnimationFactoryImageScaleUtil =
    result = AnimationFactoryImageScaleUtil()
    initAnimationFactoryImageScaleUtil(result)

proc getInstance*(t: typedesc[AnimationFactoryImageScaleUtil]): AnimationFactoryImageScaleUtil {.discardable.} =
        return AnimationFactoryImageScaleUtil.instance

method createImage*(this: AnimationFactoryImageScaleUtil, image: Image, width: int32, height: int32, scaleWidth: int32, scaleHeight: int32): Image {.base, discardable.} =
        var scaledImage: Image = nil
        if scaleWidth != 0 and scaleHeight != 0:
            let scaleX: float32 = (float32(scaleWidth)) / (float32(width))
            let scaleY: float32 = (float32(scaleHeight)) / (float32(height))
            if (scaleX == 1.0'f32 and scaleY == 1.0'f32) or (scaleX == 0.0'f32 or scaleY == 0.0'f32):
                scaledImage = image
            else:
                let scaledWidth: int32 = jToInt32(float64((scaleX * float32(width))))
                let scaledHeight: int32 = jToInt32(float64((scaleY * float32(height))))
                scaledImage = this.imageScaleUtil.scale(image, scaledWidth, scaledHeight)
        else:
            scaledImage = image
        return scaledImage

method processAdjust*(this: AnimationFactoryImageScaleUtil, baseImageAnimationFactory: BaseImageAnimationFactory) {.base.} =
        let scaleProperties: ScaleProperties = baseImageAnimationFactory.getScalePropertiesP()
        if scaleProperties.scaleWidth != 0 and scaleProperties.scaleHeight != 0:
            let animationFactoryInitializationVisitor: AnimationFactoryInitializationVisitor = baseImageAnimationFactory.getAnimationFactoryInitializationVisitorP()
            let scaleX: float32 = (float32(scaleProperties.scaleWidth)) / (float32(animationFactoryInitializationVisitor.width))
            let scaleY: float32 = (float32(scaleProperties.scaleHeight)) / (float32(animationFactoryInitializationVisitor.height))
            if (scaleX == 1.0'f32 and scaleY == 1.0'f32) or (scaleX == 0.0'f32 or scaleY == 0.0'f32):
                discard
            else:
                animationFactoryInitializationVisitor.dx = jToInt32(float64((float32(animationFactoryInitializationVisitor.originalDx) * scaleX)))
                animationFactoryInitializationVisitor.dy = jToInt32(float64((float32(animationFactoryInitializationVisitor.originalDy) * scaleY)))
        else:
            discard

