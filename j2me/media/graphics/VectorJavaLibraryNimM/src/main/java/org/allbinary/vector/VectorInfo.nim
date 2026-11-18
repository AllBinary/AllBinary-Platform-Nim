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
# package org.allbinary.vector

{.warning[UnusedImport]: off.}
import allbinary_java

type
    VectorInfo* = ref object of JObject
        width*: int32
        height*: int32
        points*: JArray[JArray[int32]]
        totalFrames*: int32

proc newVectorInfo*(width: int32, height: int32, points: JArray[JArray[int32]], totalFrames: int32): VectorInfo
proc initVectorInfo*(this: VectorInfo, width: int32, height: int32, points: JArray[JArray[int32]], totalFrames: int32)
method getWidth*(this: VectorInfo): int32 {.base, discardable.}
method setWidth*(this: VectorInfo, width: int32) {.base.}
method getHeight*(this: VectorInfo): int32 {.base, discardable.}
method setHeight*(this: VectorInfo, height: int32) {.base.}
method getPoints*(this: VectorInfo): JArray[JArray[int32]] {.base, discardable.}
method setPoints*(this: VectorInfo, points: JArray[JArray[int32]]) {.base.}
method getTotalFrames*(this: VectorInfo): int32 {.base, discardable.}
method setTotalFrames*(this: VectorInfo, totalFrames: int32) {.base.}


# Java field initializers run after the base initializer
proc initFieldsVectorInfo(this: VectorInfo) =
    
    
    
    
    discard

proc initVectorInfo*(this: VectorInfo, width: int32, height: int32, points: JArray[JArray[int32]], totalFrames: int32) =
        this.initFieldsVectorInfo()
        this.width = width
        this.height = height
        this.points = points
        this.totalFrames = totalFrames

proc newVectorInfo*(width: int32, height: int32, points: JArray[JArray[int32]], totalFrames: int32): VectorInfo =
    result = VectorInfo()
    initVectorInfo(result, width, height, points, totalFrames)

method getWidth*(this: VectorInfo): int32 {.base, discardable.} =
        return this.width

method setWidth*(this: VectorInfo, width: int32) {.base.} =
        this.width = width

method getHeight*(this: VectorInfo): int32 {.base, discardable.} =
        return this.height

method setHeight*(this: VectorInfo, height: int32) {.base.} =
        this.height = height

method getPoints*(this: VectorInfo): JArray[JArray[int32]] {.base, discardable.} =
        return this.points

method setPoints*(this: VectorInfo, points: JArray[JArray[int32]]) {.base.} =
        this.points = points

method getTotalFrames*(this: VectorInfo): int32 {.base, discardable.} =
        return this.totalFrames

method setTotalFrames*(this: VectorInfo, totalFrames: int32) {.base.} =
        this.totalFrames = totalFrames

