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
# package org.allbinary.animation.image.sprite

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/animation/AnimationBehaviorFactory as AnimationBehaviorFactoryModule
export AnimationBehaviorFactoryModule
import org/allbinary/animation/AnimationInterfaceFactoryInterface as AnimationInterfaceFactoryInterfaceModule
export AnimationInterfaceFactoryInterfaceModule
import org/allbinary/image/AnimationFactoryImageScaleUtil as AnimationFactoryImageScaleUtilModule
export AnimationFactoryImageScaleUtilModule
import org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil as AnimationFactorySpriteScaleUtilModule
export AnimationFactorySpriteScaleUtilModule
import org/allbinary/media/ScaleProperties as ScalePropertiesModule
export ScalePropertiesModule
import org/allbinary/media/audio/Sound as SoundModule
export SoundModule

type
    ImageCaptionIndexedAnimationFactory* = ref object of AnimationInterfaceFactoryInterface
        animationFactoryImageScaleUtil*: AnimationFactoryImageScaleUtil
        animationFactorySpriteScaleUtil*: AnimationFactorySpriteScaleUtil
        captionImage*: Image
        spriteMovieImage*: Image
        frameWidth*: int32
        frameHeight*: int32
        captionDx*: int32
        captionDy*: int32
        dx*: int32
        dy*: int32
        time*: int32
        soundInterface*: Sound
        scaleProperties*: ScaleProperties
        animationBehaviorFactory*: AnimationBehaviorFactory

proc newImageCaptionIndexedAnimationFactory*(captionImage: Image, spriteMovieImage: Image, soundInterface: Sound, frameWidth: int32, frameHeight: int32, captionDx: int32, captionDy: int32, dx: int32, dy: int32, time: int32, animationBehaviorFactory: AnimationBehaviorFactory): ImageCaptionIndexedAnimationFactory
proc initImageCaptionIndexedAnimationFactory*(this: ImageCaptionIndexedAnimationFactory, captionImage: Image, spriteMovieImage: Image, soundInterface: Sound, frameWidth: int32, frameHeight: int32, captionDx: int32, captionDy: int32, dx: int32, dy: int32, time: int32, animationBehaviorFactory: AnimationBehaviorFactory)
method getInstance*(this: ImageCaptionIndexedAnimationFactory, instanceId: int32): Animation {.discardable.}
method setInitialScale*(this: ImageCaptionIndexedAnimationFactory, scaleProperties: ScaleProperties)
import javax/microedition/lcdui/game/Sprite as SpriteModule
export SpriteModule
import javax/microedition/media/Player as PlayerModule
export PlayerModule
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule
import org/allbinary/animation/caption/CaptionIndexedAnimation as CaptionIndexedAnimationModule
export CaptionIndexedAnimationModule
import org/allbinary/animation/image/ImageAnimation as ImageAnimationModule
export ImageAnimationModule
import org/allbinary/graphics/color/BasicColorUtil as BasicColorUtilModule
export BasicColorUtilModule
import org/allbinary/logic/communication/log/ForcedLogUtil as ForcedLogUtilModule
export ForcedLogUtilModule
import org/allbinary/animation/image/sprite/SpriteIndexedAnimation as SpriteIndexedAnimationModule
export SpriteIndexedAnimationModule


# Java field initializers run after the base initializer
proc initFieldsImageCaptionIndexedAnimationFactory(this: ImageCaptionIndexedAnimationFactory) =
    this.animationFactoryImageScaleUtil = AnimationFactoryImageScaleUtil.getInstance()
    this.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
    
    
    
    
    
    
    
    
    
    
    this.scaleProperties = ScaleProperties.instance
    
    discard

proc initImageCaptionIndexedAnimationFactory*(this: ImageCaptionIndexedAnimationFactory, captionImage: Image, spriteMovieImage: Image, soundInterface: Sound, frameWidth: int32, frameHeight: int32, captionDx: int32, captionDy: int32, dx: int32, dy: int32, time: int32, animationBehaviorFactory: AnimationBehaviorFactory) =
        this.initFieldsImageCaptionIndexedAnimationFactory()
        if (jSame(animationBehaviorFactory, AnimationBehaviorFactory.getInstance())):
            ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", this)
        this.captionImage = captionImage
        this.spriteMovieImage = spriteMovieImage
        this.frameWidth = frameWidth
        this.frameHeight = frameHeight
        this.captionDx = captionDx
        this.captionDy = captionDy
        this.dx = dx
        this.dy = dy
        this.time = time
        this.soundInterface = soundInterface
        this.animationBehaviorFactory = animationBehaviorFactory

proc newImageCaptionIndexedAnimationFactory*(captionImage: Image, spriteMovieImage: Image, soundInterface: Sound, frameWidth: int32, frameHeight: int32, captionDx: int32, captionDy: int32, dx: int32, dy: int32, time: int32, animationBehaviorFactory: AnimationBehaviorFactory): ImageCaptionIndexedAnimationFactory =
    result = ImageCaptionIndexedAnimationFactory()
    initImageCaptionIndexedAnimationFactory(result, captionImage, spriteMovieImage, soundInterface, frameWidth, frameHeight, captionDx, captionDy, dx, dy, time, animationBehaviorFactory)

method getInstance*(this: ImageCaptionIndexedAnimationFactory, instanceId: int32): Animation {.discardable.} =
        let scaledImage: Image = this.animationFactoryImageScaleUtil.createImage(this.captionImage, this.captionImage.getWidth(), this.captionImage.getHeight(), this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        let animationInterface: Animation = newImageAnimation(scaledImage, this.animationBehaviorFactory.getOrCreateInstance())
        let sprite: Sprite = this.animationFactorySpriteScaleUtil.createImage(this.spriteMovieImage, this.frameWidth, this.frameHeight, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        let movieIndexedAnimationInterface: IndexedAnimation = newSpriteIndexedAnimation(sprite, this.spriteMovieImage, BasicColorUtil.getInstance().ZERO_ARRAY, this.animationBehaviorFactory.getOrCreateInstance())
        var player: Player = this.soundInterface.getPlayerP()
        if (jIsNil(player)):
            raise newJException("Exception", "Sound Was not Initialized")
        return newCaptionIndexedAnimation(animationInterface, movieIndexedAnimationInterface, player, this.captionDx, this.captionDy, this.dx, this.dy, this.time, this.animationBehaviorFactory.getOrCreateInstance())

method setInitialScale*(this: ImageCaptionIndexedAnimationFactory, scaleProperties: ScaleProperties) =
        this.scaleProperties = scaleProperties

