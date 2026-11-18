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
import org/allbinary/animation/IndexedAnimation as IndexedAnimationModule
export IndexedAnimationModule

type
    IndexedAnimationToImageArrayUtil* = ref object of JObject

proc newIndexedAnimationToImageArrayUtil*(): IndexedAnimationToImageArrayUtil
proc getInstance*(t: typedesc[IndexedAnimationToImageArrayUtil], width: int32, height: int32, sequentialAnimationInterface: IndexedAnimation): JArray[Image] {.discardable.}
import org/allbinary/image/AnimationFrameToImageUtil as AnimationFrameToImageUtilModule
export AnimationFrameToImageUtilModule


proc initIndexedAnimationToImageArrayUtil*(this: IndexedAnimationToImageArrayUtil) =
    discard

proc newIndexedAnimationToImageArrayUtil*(): IndexedAnimationToImageArrayUtil =
    result = IndexedAnimationToImageArrayUtil()
    initIndexedAnimationToImageArrayUtil(result)

proc getInstance*(t: typedesc[IndexedAnimationToImageArrayUtil], width: int32, height: int32, sequentialAnimationInterface: IndexedAnimation): JArray[Image] {.discardable.} =
        var size: int32 = sequentialAnimationInterface.getAnimationSize()
        var imageArray: JArray[Image] = newJArray[Image](size, default(Image))
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                sequentialAnimationInterface.setFrame(index)
                imageArray[index] = AnimationFrameToImageUtil.getInstance().getInstanceWH(width, height, sequentialAnimationInterface)
        return imageArray

