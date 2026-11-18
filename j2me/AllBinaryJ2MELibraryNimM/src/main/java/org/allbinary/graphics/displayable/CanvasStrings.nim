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
# package org.allbinary.graphics.displayable

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    CanvasStrings* = ref object of JObject
        CONSTRUCTOR*: string
        PAUSE*: string
        UN_PAUSE*: string
        SET_FULL_SCREEN_MODE*: string
        SIZE_CHANGED*: string
        SCALED_IMAGES*: string
        PAINT*: string
        ON_DISPLAY_CHANGE_EVENT*: string
        UPDATE_MEASUREMENT*: string
        FD_WIDTH*: string
        FD_HEIGHT*: string
        EMPTY_CHILD_NAME_LIST*: BasicArrayList
        ABOUT*: string
        OPTIONS*: string
        FONT_ATLAS*: string
        OBJ_MODEL*: string
        MD2_MODEL*: string
        U_PNG*: string

proc newCanvasStrings*(): CanvasStrings
proc getInstance*(t: typedesc[CanvasStrings]): CanvasStrings {.discardable.}
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule

var CanvasStrings_instanceValue: CanvasStrings
var CanvasStrings_instanceSet = false
proc instance*(t: typedesc[CanvasStrings]): CanvasStrings =
    if not CanvasStrings_instanceSet:
        CanvasStrings_instanceSet = true
        CanvasStrings_instanceValue = newCanvasStrings()
    CanvasStrings_instanceValue

# Java field initializers run after the base initializer
proc initFieldsCanvasStrings(this: CanvasStrings) =
    this.CONSTRUCTOR = "MyCanvas::MyCanvas"
    this.PAUSE = "MyCanvas::pause"
    this.UN_PAUSE = "MyCanvas::unPause"
    this.SET_FULL_SCREEN_MODE = "setFullScreenMode"
    this.SIZE_CHANGED = "sizeChanged"
    this.SCALED_IMAGES = "scaledImages"
    this.PAINT = "paint"
    this.ON_DISPLAY_CHANGE_EVENT = "onDisplayChangeEvent"
    this.UPDATE_MEASUREMENT = "updateMeasurement"
    this.FD_WIDTH = " font/display width: "
    this.FD_HEIGHT = " font/display height: "
    this.EMPTY_CHILD_NAME_LIST = BasicArrayListUtil.getInstance().getImmutableInstance()
    this.ABOUT = "About"
    this.OPTIONS = "Options"
    this.FONT_ATLAS = "/font.png"
    this.OBJ_MODEL = "_obj"
    this.MD2_MODEL = "_md2"
    this.U_PNG = ".png"
    discard

proc initCanvasStrings*(this: CanvasStrings) =
    this.initFieldsCanvasStrings()

proc newCanvasStrings*(): CanvasStrings =
    result = CanvasStrings()
    initCanvasStrings(result)

proc getInstance*(t: typedesc[CanvasStrings]): CanvasStrings {.discardable.} =
        return CanvasStrings.instance

