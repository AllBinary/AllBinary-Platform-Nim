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
# package org.allbinary.image.sprite

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import javax/microedition/lcdui/game/Sprite as SpriteModule
export SpriteModule
import org/allbinary/graphics/opengles/OpenGLUtil as OpenGLUtilModule
export OpenGLUtilModule
import org/allbinary/image/ImageCache as ImageCacheModule
export ImageCacheModule
import org/allbinary/image/opengles/OpenGLESImageExclusionUtil as OpenGLESImageExclusionUtilModule
export OpenGLESImageExclusionUtilModule
import org/allbinary/logic/math/J2SEMath as J2SEMathModule
export J2SEMathModule
import org/allbinary/media/image/ImageScaleUtil as ImageScaleUtilModule
export ImageScaleUtilModule

type
    AnimationFactorySpriteScaleUtil* = ref object of JObject
        imageCache*: ImageCache
        imageScaleUtil*: ImageScaleUtil
        openGLUtil*: OpenGLUtil
        j2seMath*: J2SEMath
        openGLESImageExclusionUtil*: OpenGLESImageExclusionUtil

proc newAnimationFactorySpriteScaleUtil*(): AnimationFactorySpriteScaleUtil
proc getInstance*(t: typedesc[AnimationFactorySpriteScaleUtil]): AnimationFactorySpriteScaleUtil {.discardable.}
method createImage*(this: AnimationFactorySpriteScaleUtil, image: Image, width: int32, height: int32, scaleWidth: int32, scaleHeight: int32): Sprite {.base, discardable.}
import org/allbinary/game/layer/SpriteFactory as SpriteFactoryModule
export SpriteFactoryModule
import org/allbinary/image/ImageCacheFactory as ImageCacheFactoryModule
export ImageCacheFactoryModule

var AnimationFactorySpriteScaleUtil_instanceValue: AnimationFactorySpriteScaleUtil
var AnimationFactorySpriteScaleUtil_instanceSet = false
proc instance*(t: typedesc[AnimationFactorySpriteScaleUtil]): AnimationFactorySpriteScaleUtil =
    if not AnimationFactorySpriteScaleUtil_instanceSet:
        AnimationFactorySpriteScaleUtil_instanceSet = true
        AnimationFactorySpriteScaleUtil_instanceValue = newAnimationFactorySpriteScaleUtil()
    AnimationFactorySpriteScaleUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsAnimationFactorySpriteScaleUtil(this: AnimationFactorySpriteScaleUtil) =
    this.imageCache = ImageCacheFactory.getInstance()
    this.imageScaleUtil = ImageScaleUtil.getInstance()
    this.openGLUtil = OpenGLUtil.getInstance()
    this.j2seMath = J2SEMath.getInstance()
    this.openGLESImageExclusionUtil = OpenGLESImageExclusionUtil.getInstance()
    discard

proc initAnimationFactorySpriteScaleUtil*(this: AnimationFactorySpriteScaleUtil) =
    this.initFieldsAnimationFactorySpriteScaleUtil()

proc newAnimationFactorySpriteScaleUtil*(): AnimationFactorySpriteScaleUtil =
    result = AnimationFactorySpriteScaleUtil()
    initAnimationFactorySpriteScaleUtil(result)

proc getInstance*(t: typedesc[AnimationFactorySpriteScaleUtil]): AnimationFactorySpriteScaleUtil {.discardable.} =
        return AnimationFactorySpriteScaleUtil.instance

method createImage*(this: AnimationFactorySpriteScaleUtil, image: Image, width: int32, height: int32, scaleWidth: int32, scaleHeight: int32): Sprite {.base, discardable.} =
        let spriteFactory: SpriteFactory = SpriteFactory.getInstance()
        var sprite: Sprite = nil
        var scaledImage: Image = nil
        if scaleWidth != 0 and scaleHeight != 0:
            var scaleX: float32 = (float32(scaleWidth)) / (float32(width))
            var scaleY: float32 = (float32(scaleHeight)) / (float32(height))
            if (scaleX == 1.0'f32 and scaleY == 1.0'f32) or (scaleX == 0.0'f32 or scaleY == 0.0'f32):
                scaledImage = this.openGLUtil.addImage(image)
                sprite = spriteFactory.createSprite(scaledImage, width, height)
            else:
                if this.openGLESImageExclusionUtil.isCustomScaling(image):
                    let width2: int32 = this.j2seMath.round(float32((scaleWidth)) - 0.5'f32)
                    let height2: int32 = this.j2seMath.round(float32((scaleHeight)) - 0.5'f32)
                    let multiplesOf16Width: int32 = width2 div 16
                    let by16Width: int32 = multiplesOf16Width *% 16
                    scaleX = (float32(by16Width)) / float32(width)
                    let multiplesOf16Height: int32 = height2 div 16
                    let by16Height: int32 = multiplesOf16Height *% 16
                    scaleY = (float32(by16Height)) / float32(height)
                    if scaleWidth < width:
                        scaleX = scaleX * 2.35'f32
                    if scaleHeight < height:
                        scaleY = scaleY * 2.35'f32
                scaledImage = this.imageScaleUtil.createImage2(this.imageCache, image, scaleX, 1.0'f32, scaleY, 1.0'f32, true)
                sprite = spriteFactory.createSprite(scaledImage, jToInt32(float64((float32(width) * scaleX))), jToInt32(float64((float32(height) * scaleY))))
        else:
            scaledImage = this.openGLUtil.addImage(image)
            sprite = spriteFactory.createSprite(scaledImage, width, height)
        return sprite

