#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.graphics

{.warning[UnusedImport]: off.}
import allbinary_java

type
    GraphicsStrings* = ref object of JObject
        ANIMATION*: string
        ANGLE*: string
        MOVEMENT_ANGLE*: string
        ROTATION*: string
        OPACITY*: string
        HTML*: string
        WIDTH*: string
        HEIGHT*: string

proc newGraphicsStrings*(): GraphicsStrings
proc getInstance*(t: typedesc[GraphicsStrings]): GraphicsStrings {.discardable.}

var GraphicsStrings_instanceValue: GraphicsStrings
var GraphicsStrings_instanceSet = false
proc instance*(t: typedesc[GraphicsStrings]): GraphicsStrings =
    if not GraphicsStrings_instanceSet:
        GraphicsStrings_instanceSet = true
        GraphicsStrings_instanceValue = newGraphicsStrings()
    GraphicsStrings_instanceValue

# Java field initializers run after the base initializer
proc initFieldsGraphicsStrings(this: GraphicsStrings) =
    this.ANIMATION = "animation"
    this.ANGLE = "angle"
    this.MOVEMENT_ANGLE = "movement_angle"
    this.ROTATION = "rotation"
    this.OPACITY = "opacity"
    this.HTML = "HTML"
    this.WIDTH = "width"
    this.HEIGHT = "height"
    discard

proc initGraphicsStrings*(this: GraphicsStrings) =
    this.initFieldsGraphicsStrings()

proc newGraphicsStrings*(): GraphicsStrings =
    result = GraphicsStrings()
    initGraphicsStrings(result)

proc getInstance*(t: typedesc[GraphicsStrings]): GraphicsStrings {.discardable.} =
        return GraphicsStrings.instance

