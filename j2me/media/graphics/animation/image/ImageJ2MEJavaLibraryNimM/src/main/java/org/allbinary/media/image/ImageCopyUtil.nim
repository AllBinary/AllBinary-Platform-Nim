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
# package org.allbinary.media.image

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/GameFeatureFactory as GameFeatureFactoryModule
export GameFeatureFactoryModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/media/image/ImageCreationUtil as ImageCreationUtilModule
export ImageCreationUtilModule

type
    ImageCopyUtil* = ref object of JObject
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        imageCreationUtil*: ImageCreationUtil
        anchor*: int32
        gameFeatureFactory*: GameFeatureFactory
        features*: Features
        NO_COPY*: string

proc newImageCopyUtil*(): ImageCopyUtil
proc initImageCopyUtil*(this: ImageCopyUtil)
proc getInstance*(t: typedesc[ImageCopyUtil]): ImageCopyUtil {.discardable.}
method createImageForRotation*(this: ImageCopyUtil, originalImage: Image): Image {.base, discardable.}
method createImage*(this: ImageCopyUtil, originalImage: Image): Image {.base, discardable.}
method createImageScale*(this: ImageCopyUtil, originalImage: Image, canvasScale: float32, resize: bool): Image {.base, discardable.}
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule

var ImageCopyUtil_instanceValue: ImageCopyUtil
var ImageCopyUtil_instanceSet = false
proc instance*(t: typedesc[ImageCopyUtil]): ImageCopyUtil =
    if not ImageCopyUtil_instanceSet:
        ImageCopyUtil_instanceSet = true
        ImageCopyUtil_instanceValue = newImageCopyUtil()
    ImageCopyUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsImageCopyUtil(this: ImageCopyUtil) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.imageCreationUtil = ImageCreationUtil.getInstance()
    this.anchor = Anchor.TOP_LEFT
    this.gameFeatureFactory = GameFeatureFactory.getInstance()
    this.features = Features.getInstance()
    this.NO_COPY = "J2ME does not need to copy images after initial loading"
    discard

proc getInstance*(t: typedesc[ImageCopyUtil]): ImageCopyUtil {.discardable.} =
        return ImageCopyUtil.instance

proc initImageCopyUtil*(this: ImageCopyUtil) =
        this.initFieldsImageCopyUtil()
        discard

proc newImageCopyUtil*(): ImageCopyUtil =
    result = ImageCopyUtil()
    initImageCopyUtil(result)

method createImageForRotation*(this: ImageCopyUtil, originalImage: Image): Image {.base, discardable.} =
        return this.createImage(originalImage)

method createImage*(this: ImageCopyUtil, originalImage: Image): Image {.base, discardable.} =
        if (not this.features.isFeature(this.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)):
            this.logUtil.put(this.NO_COPY, this, this.commonStrings.CONSTRUCTOR, newJException("Exception", ""))
            return originalImage
        let image: Image = this.imageCreationUtil.createImageWH(originalImage.getWidth(), originalImage.getHeight())
        if image.isMutable():
            image.getGraphics().drawImage(originalImage, 0, 0, this.anchor)
            return image
        else:
            raise newJException("Exception", "Not Mutable")

method createImageScale*(this: ImageCopyUtil, originalImage: Image, canvasScale: float32, resize: bool): Image {.base, discardable.} =
        if (not this.features.isFeature(this.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)):
            this.logUtil.put(this.NO_COPY, this, this.commonStrings.CONSTRUCTOR, newJException("Exception", ""))
            return originalImage
        var newWidth: int32 = jToInt32(float64((float32(originalImage.getWidth()) * canvasScale)))
        var newHeight: int32 = jToInt32(float64((float32(originalImage.getHeight()) * canvasScale)))
        if resize:
            if newWidth < newHeight:
                newWidth = newHeight
            if newHeight < newWidth:
                newHeight = newWidth
        let image: Image = this.imageCreationUtil.createImageWH(newWidth, newHeight)
        if image.isMutable():
            let halfWidthDelta: int32 = (newWidth -% originalImage.getWidth()) div 2
            let halfHeightDelta: int32 = (newHeight -% originalImage.getHeight()) div 2
            let graphics: Graphics = image.getGraphics()
            graphics.drawImage(originalImage, halfWidthDelta, halfHeightDelta, this.anchor)
            return image
        else:
            raise newJException("Exception", "Not Mutable")

