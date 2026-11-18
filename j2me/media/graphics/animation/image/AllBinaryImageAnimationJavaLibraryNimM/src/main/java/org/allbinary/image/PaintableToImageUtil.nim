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
# package org.allbinary.image

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/graphics/paint/PaintableInterface as PaintableInterfaceModule
export PaintableInterfaceModule

type
    PaintableToImageUtil* = ref object of JObject

proc newPaintableToImageUtil*(): PaintableToImageUtil
proc getImage*(t: typedesc[PaintableToImageUtil], paintableInterface: PaintableInterface, width: int32, height: int32): Image {.discardable.}
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/image/GameFeatureImageCacheFactory as GameFeatureImageCacheFactoryModule
export GameFeatureImageCacheFactoryModule

var PaintableToImageUtil_instanceValue: PaintableToImageUtil
var PaintableToImageUtil_instanceSet = false
proc instance*(t: typedesc[PaintableToImageUtil]): PaintableToImageUtil =
    if not PaintableToImageUtil_instanceSet:
        PaintableToImageUtil_instanceSet = true
        PaintableToImageUtil_instanceValue = newPaintableToImageUtil()
    PaintableToImageUtil_instanceValue

proc initPaintableToImageUtil*(this: PaintableToImageUtil) =
    discard

proc newPaintableToImageUtil*(): PaintableToImageUtil =
    result = PaintableToImageUtil()
    initPaintableToImageUtil(result)

proc getImage*(t: typedesc[PaintableToImageUtil], paintableInterface: PaintableInterface, width: int32, height: int32): Image {.discardable.} =
        var image: Image = GameFeatureImageCacheFactory.getInstance().get(jClassName(PaintableToImageUtil.instance), width, height)
        var graphics: Graphics = image.getGraphics()
        paintableInterface.paint(graphics)
        return image

