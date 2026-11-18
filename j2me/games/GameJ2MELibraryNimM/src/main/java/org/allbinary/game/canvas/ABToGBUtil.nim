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
# package org.allbinary.game.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/game/layer/AllBinaryGameLayerManager as AllBinaryGameLayerManagerModule
export AllBinaryGameLayerManagerModule

type
    ABToGBUtil* = ref object of JObject
        abCanvas*: Canvas
        allBinaryGameLayerManager*: AllBinaryGameLayerManager

proc newABToGBUtil*(): ABToGBUtil
proc getInstance*(t: typedesc[ABToGBUtil]): ABToGBUtil {.discardable.}
import javax/microedition/lcdui/NullCanvas as NullCanvasModule
export NullCanvasModule

var ABToGBUtil_instanceValue: ABToGBUtil
var ABToGBUtil_instanceSet = false
proc instance*(t: typedesc[ABToGBUtil]): ABToGBUtil =
    if not ABToGBUtil_instanceSet:
        ABToGBUtil_instanceSet = true
        ABToGBUtil_instanceValue = newABToGBUtil()
    ABToGBUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsABToGBUtil(this: ABToGBUtil) =
    this.abCanvas = NullCanvas.NULL_CANVASStatic
    this.allBinaryGameLayerManager = AllBinaryGameLayerManager.getNullInstance()
    discard

proc initABToGBUtil*(this: ABToGBUtil) =
    this.initFieldsABToGBUtil()

proc newABToGBUtil*(): ABToGBUtil =
    result = ABToGBUtil()
    initABToGBUtil(result)

proc getInstance*(t: typedesc[ABToGBUtil]): ABToGBUtil {.discardable.} =
        return ABToGBUtil.instance

