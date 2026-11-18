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
# package org.allbinary.media

{.warning[UnusedImport]: off.}
import allbinary_java

type
    ScaleProperties* = ref object of JObject
        scaleX*: float32
        scaleY*: float32
        scaleWidth*: int32
        scaleHeight*: int32
        shouldScale*: bool

proc newScaleProperties*(): ScaleProperties
method toString*(this: ScaleProperties): string {.discardable.}
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonLabels as CommonLabelsModule
export CommonLabelsModule

var ScaleProperties_instanceValue: ScaleProperties
var ScaleProperties_instanceSet = false
proc instance*(t: typedesc[ScaleProperties]): ScaleProperties =
    if not ScaleProperties_instanceSet:
        ScaleProperties_instanceSet = true
        ScaleProperties_instanceValue = newScaleProperties()
    ScaleProperties_instanceValue

# Java field initializers run after the base initializer
proc initFieldsScaleProperties(this: ScaleProperties) =
    this.scaleX = 1.0'f32
    this.scaleY = 1.0'f32
    this.scaleWidth = 0
    this.scaleHeight = 0
    this.shouldScale = false
    discard

proc initScaleProperties*(this: ScaleProperties) =
    this.initFieldsScaleProperties()

proc newScaleProperties*(): ScaleProperties =
    result = ScaleProperties()
    initScaleProperties(result)

method toString*(this: ScaleProperties): string {.discardable.} =
        return newStringMaker().append(CommonLabels.getInstance().COLON_SEP).appendboolean(this.shouldScale).append("scaleX: ").appendfloat(this.scaleX).append("scaleY: ").appendfloat(this.scaleY).append("scaleWidth: ").appendint(this.scaleWidth).append("scaleHeight: ").appendint(this.scaleHeight).toString()

