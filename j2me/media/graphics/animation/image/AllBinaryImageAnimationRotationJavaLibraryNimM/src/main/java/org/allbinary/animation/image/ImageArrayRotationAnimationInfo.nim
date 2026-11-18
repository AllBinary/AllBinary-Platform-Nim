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
# package org.allbinary.animation.image

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/math/AngleInfo as AngleInfoModule
export AngleInfoModule

type
    ImageArrayRotationAnimationInfo* = ref object of JObject
        imageArray*: JArray[Image]
        angleIncrement*: int32
        totalAngle*: int32
        dx*: int32
        dy*: int32

proc newImageArrayRotationAnimationInfo*(imageArray: JArray[Image], angleIncrement: int32, totalAngle: int32, dx: int32, dy: int32): ImageArrayRotationAnimationInfo
proc initImageArrayRotationAnimationInfo*(this: ImageArrayRotationAnimationInfo, imageArray: JArray[Image], angleIncrement: int32, totalAngle: int32, dx: int32, dy: int32)
method setImageArray*(this: ImageArrayRotationAnimationInfo, imageArray: JArray[Image]) {.base.}
method getImageArray*(this: ImageArrayRotationAnimationInfo): JArray[Image] {.base, discardable.}
method getAngleInfoP*(this: ImageArrayRotationAnimationInfo): AngleInfo {.base, discardable.}
method setTotalAngle*(this: ImageArrayRotationAnimationInfo, totalAngle: int32) {.base.}
method getTotalAngle*(this: ImageArrayRotationAnimationInfo): int32 {.base, discardable.}
method setDx*(this: ImageArrayRotationAnimationInfo, dx: int32) {.base.}
method getDx*(this: ImageArrayRotationAnimationInfo): int32 {.base, discardable.}
method setDy*(this: ImageArrayRotationAnimationInfo, dy: int32) {.base.}
method getDy*(this: ImageArrayRotationAnimationInfo): int32 {.base, discardable.}


# Java field initializers run after the base initializer
proc initFieldsImageArrayRotationAnimationInfo(this: ImageArrayRotationAnimationInfo) =
    
    
    
    
    
    discard

proc initImageArrayRotationAnimationInfo*(this: ImageArrayRotationAnimationInfo, imageArray: JArray[Image], angleIncrement: int32, totalAngle: int32, dx: int32, dy: int32) =
        this.initFieldsImageArrayRotationAnimationInfo()
        this.imageArray = imageArray
        this.angleIncrement = angleIncrement
        this.totalAngle = totalAngle
        this.dx = dx
        this.dy = dy

proc newImageArrayRotationAnimationInfo*(imageArray: JArray[Image], angleIncrement: int32, totalAngle: int32, dx: int32, dy: int32): ImageArrayRotationAnimationInfo =
    result = ImageArrayRotationAnimationInfo()
    initImageArrayRotationAnimationInfo(result, imageArray, angleIncrement, totalAngle, dx, dy)

method setImageArray*(this: ImageArrayRotationAnimationInfo, imageArray: JArray[Image]) {.base.} =
        this.imageArray = imageArray

method getImageArray*(this: ImageArrayRotationAnimationInfo): JArray[Image] {.base, discardable.} =
        return this.imageArray

method getAngleInfoP*(this: ImageArrayRotationAnimationInfo): AngleInfo {.base, discardable.} =
        return AngleInfo.getInstance(jToInt16(this.angleIncrement))

method setTotalAngle*(this: ImageArrayRotationAnimationInfo, totalAngle: int32) {.base.} =
        this.totalAngle = totalAngle

method getTotalAngle*(this: ImageArrayRotationAnimationInfo): int32 {.base, discardable.} =
        return this.totalAngle

method setDx*(this: ImageArrayRotationAnimationInfo, dx: int32) {.base.} =
        this.dx = dx

method getDx*(this: ImageArrayRotationAnimationInfo): int32 {.base, discardable.} =
        return this.dx

method setDy*(this: ImageArrayRotationAnimationInfo, dy: int32) {.base.} =
        this.dy = dy

method getDy*(this: ImageArrayRotationAnimationInfo): int32 {.base, discardable.} =
        return this.dy

