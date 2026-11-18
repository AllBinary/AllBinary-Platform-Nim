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
# package org.allbinary.game.configuration.feature

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/configuration/feature/GraphicsFeature as GraphicsFeatureModule
export GraphicsFeatureModule

type
    GraphicsFeatureFactory* = ref object of JObject
        NONE*: GraphicsFeature
        TRANSPARENT_IMAGE_CREATION*: GraphicsFeature
        IMAGE_GRAPHICS*: GraphicsFeature
        IMAGE_ROTATION_ON_THE_FLY*: GraphicsFeature
        IMAGE_TO_ARRAY_GRAPHICS*: GraphicsFeature
        SPRITE_QUARTER_ROTATION_GRAPHICS*: GraphicsFeature
        SPRITE_FULL_GRAPHICS*: GraphicsFeature
        VECTOR_GRAPHICS*: GraphicsFeature
        VECTOR_TO_IMAGE_GRAPHICS*: GraphicsFeature

proc newGraphicsFeatureFactory*(): GraphicsFeatureFactory
proc initGraphicsFeatureFactory*(this: GraphicsFeatureFactory)
proc getInstance*(t: typedesc[GraphicsFeatureFactory]): GraphicsFeatureFactory {.discardable.}
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var GraphicsFeatureFactory_instanceValue: GraphicsFeatureFactory
var GraphicsFeatureFactory_instanceSet = false
proc instance*(t: typedesc[GraphicsFeatureFactory]): GraphicsFeatureFactory =
    if not GraphicsFeatureFactory_instanceSet:
        GraphicsFeatureFactory_instanceSet = true
        GraphicsFeatureFactory_instanceValue = newGraphicsFeatureFactory()
    GraphicsFeatureFactory_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGraphicsFeatureFactory(this: GraphicsFeatureFactory) =
    this.NONE = newGraphicsFeature(StringUtil.getInstance().NULL_STRING)
    this.TRANSPARENT_IMAGE_CREATION = newGraphicsFeature("Transparent Image Creation")
    this.IMAGE_GRAPHICS = newGraphicsFeature("Image Graphics")
    this.IMAGE_ROTATION_ON_THE_FLY = newGraphicsFeature("Image Rotated On The Fly")
    this.IMAGE_TO_ARRAY_GRAPHICS = newGraphicsFeature("Image To Array Graphics")
    this.SPRITE_QUARTER_ROTATION_GRAPHICS = newGraphicsFeature("Sprite Quarter Rotation Graphics")
    this.SPRITE_FULL_GRAPHICS = newGraphicsFeature("Sprite Full Rotation Graphics")
    this.VECTOR_GRAPHICS = newGraphicsFeature("BasicArrayList Graphics")
    this.VECTOR_TO_IMAGE_GRAPHICS = newGraphicsFeature("BasicArrayList To Image Graphics")
    discard

proc getInstance*(t: typedesc[GraphicsFeatureFactory]): GraphicsFeatureFactory {.discardable.} =
        return GraphicsFeatureFactory.instance

proc initGraphicsFeatureFactory*(this: GraphicsFeatureFactory) =
        this.initFieldsGraphicsFeatureFactory()
        discard

proc newGraphicsFeatureFactory*(): GraphicsFeatureFactory =
    result = GraphicsFeatureFactory()
    initGraphicsFeatureFactory(result)

