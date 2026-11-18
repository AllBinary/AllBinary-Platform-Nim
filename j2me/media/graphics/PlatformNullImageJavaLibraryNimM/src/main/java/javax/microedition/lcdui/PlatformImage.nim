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
# package javax.microedition.lcdui

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule

#PlatformNullImageJavaLibrary
type
    PlatformImage* = ref object of JObject

proc newPlatformImage*(): PlatformImage
method getImage*(this: PlatformImage, graphicsSurface2: JObject): JObject {.base, discardable.}
method getSurfaceWidth*(this: PlatformImage, graphicsSurface2: JObject, width: int32): int32 {.base, discardable.}
method getSurfaceHeight*(this: PlatformImage, graphicsSurface2: JObject, height: int32): int32 {.base, discardable.}
method getWidth*(this: PlatformImage, image: Image, width: int32): int32 {.base, discardable.}
method getHeight*(this: PlatformImage, image: Image, height: int32): int32 {.base, discardable.}
method getGraphics*(this: PlatformImage, graphicsSurface: JObject, width: int32, height: int32, image: Image): Graphics {.base, discardable.}
method drawImage*(this: PlatformImage, image: Image, x: int32, y: int32, anchor: int32, g2: Graphics, g: JObject) {.base.}
method drawRegion*(this: PlatformImage, image: Image, x_src: int32, y_src: int32, width: int32, height: int32, transform: int32, x_dst: int32, y_dst: int32, anchor: int32, g: Graphics) {.base.}
method getRGB*(this: PlatformImage, argb: JArray[int32], offset: int32, scanlength: int32, x: int32, y: int32, width: int32, height: int32, image: Image) {.base.}
method setRGB*(this: PlatformImage, argb: JArray[int32], offset: int32, scanlength: int32, x: int32, y: int32, width: int32, height: int32, image: Image) {.base.}
method getData*(this: PlatformImage, image: Image): JArray[int32] {.base, discardable.}
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import javax/microedition/lcdui/NullImage as NullImageModule
export NullImageModule


proc initPlatformImage*(this: PlatformImage) =
    discard

proc newPlatformImage*(): PlatformImage =
    result = PlatformImage()
    initPlatformImage(result)

method getImage*(this: PlatformImage, graphicsSurface2: JObject): JObject {.base, discardable.} =
        return NullImage.NULL_IMAGEStatic

method getSurfaceWidth*(this: PlatformImage, graphicsSurface2: JObject, width: int32): int32 {.base, discardable.} =
        return width

method getSurfaceHeight*(this: PlatformImage, graphicsSurface2: JObject, height: int32): int32 {.base, discardable.} =
        return height

method getWidth*(this: PlatformImage, image: Image, width: int32): int32 {.base, discardable.} =
        return width

method getHeight*(this: PlatformImage, image: Image, height: int32): int32 {.base, discardable.} =
        return height

method getGraphics*(this: PlatformImage, graphicsSurface: JObject, width: int32, height: int32, image: Image): Graphics {.base, discardable.} =
        raise newJException("RuntimeException", "")

method drawImage*(this: PlatformImage, image: Image, x: int32, y: int32, anchor: int32, g2: Graphics, g: JObject) {.base.} =
        discard

method drawRegion*(this: PlatformImage, image: Image, x_src: int32, y_src: int32, width: int32, height: int32, transform: int32, x_dst: int32, y_dst: int32, anchor: int32, g: Graphics) {.base.} =
        discard

method getRGB*(this: PlatformImage, argb: JArray[int32], offset: int32, scanlength: int32, x: int32, y: int32, width: int32, height: int32, image: Image) {.base.} =
        discard

method setRGB*(this: PlatformImage, argb: JArray[int32], offset: int32, scanlength: int32, x: int32, y: int32, width: int32, height: int32, image: Image) {.base.} =
        discard

method getData*(this: PlatformImage, image: Image): JArray[int32] {.base, discardable.} =
        return NullUtil.getInstance().NULL_INT_ARRAY

