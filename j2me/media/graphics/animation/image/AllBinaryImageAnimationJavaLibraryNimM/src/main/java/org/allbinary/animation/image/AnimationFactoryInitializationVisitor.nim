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
# package org.allbinary.animation.image

{.warning[UnusedImport]: off.}
import allbinary_java

type
    AnimationFactoryInitializationVisitor* = ref object of JObject
        width*: int32
        height*: int32
        dx*: int32
        dy*: int32
        originalDx*: int32
        originalDy*: int32

proc newAnimationFactoryInitializationVisitor*(): AnimationFactoryInitializationVisitor
method visit*(this: AnimationFactoryInitializationVisitor) {.base.}
method toString*(this: AnimationFactoryInitializationVisitor): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/math/PositionStrings as PositionStringsModule
export PositionStringsModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule


# Java field initializers run after the base initializer
proc initFieldsAnimationFactoryInitializationVisitor(this: AnimationFactoryInitializationVisitor) =
    this.width = 0
    this.height = 0
    this.dx = 0
    this.dy = 0
    this.originalDx = 0
    this.originalDy = 0
    discard

proc initAnimationFactoryInitializationVisitor*(this: AnimationFactoryInitializationVisitor) =
    this.initFieldsAnimationFactoryInitializationVisitor()

proc newAnimationFactoryInitializationVisitor*(): AnimationFactoryInitializationVisitor =
    result = AnimationFactoryInitializationVisitor()
    initAnimationFactoryInitializationVisitor(result)

method visit*(this: AnimationFactoryInitializationVisitor) {.base.} =
        discard

method toString*(this: AnimationFactoryInitializationVisitor): string {.discardable.} =
        let commonSeps: CommonSeps = CommonSeps.getInstance()
        let commonLabels: CommonLabels = CommonLabels.getInstance()
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append(PositionStrings.getInstance().DX_LABEL).appendfloat(float32(this.dx))
        stringBuffer.append(PositionStrings.getInstance().DY_LABEL).appendfloat(float32(this.dy))
        stringBuffer.append(commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(this.width)
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(this.height)
        return stringBuffer.toString()

