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
# package org.allbinary.graphics.opengles.renderer

{.warning[UnusedImport]: off.}
import allbinary_java

type
    RendererStrings* = ref object of JObject
        ON_SURFACE_CREATED*: string
        ON_SURFACE_CHANGED*: string
        ON_DRAW_FRAME*: string
        ON_DRAW_FRAME_THREED*: string
        ON_DRAW_FRAME_2D*: string

proc newRendererStrings*(): RendererStrings
proc getInstance*(t: typedesc[RendererStrings]): RendererStrings {.discardable.}

var RendererStrings_instanceValue: RendererStrings
var RendererStrings_instanceSet = false
proc instance*(t: typedesc[RendererStrings]): RendererStrings =
    if not RendererStrings_instanceSet:
        RendererStrings_instanceSet = true
        RendererStrings_instanceValue = newRendererStrings()
    RendererStrings_instanceValue

# Java field initializers run after the base initializer
proc initFieldsRendererStrings(this: RendererStrings) =
    this.ON_SURFACE_CREATED = "onSurfaceCreated"
    this.ON_SURFACE_CHANGED = "onSurfaceChanged"
    this.ON_DRAW_FRAME = "onDrawFrame"
    this.ON_DRAW_FRAME_THREED = "onDrawFrameThreed"
    this.ON_DRAW_FRAME_2D = "onDrawFrame2d"
    discard

proc initRendererStrings*(this: RendererStrings) =
    this.initFieldsRendererStrings()

proc newRendererStrings*(): RendererStrings =
    result = RendererStrings()
    initRendererStrings(result)

proc getInstance*(t: typedesc[RendererStrings]): RendererStrings {.discardable.} =
        return RendererStrings.instance

