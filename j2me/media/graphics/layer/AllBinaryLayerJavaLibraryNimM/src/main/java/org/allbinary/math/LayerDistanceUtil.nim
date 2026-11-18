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
# package org.allbinary.math

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/logic/math/MathUtil as MathUtilModule
export MathUtilModule

type
    LayerDistanceUtil* = ref object of JObject
        mathUtil*: MathUtil

proc newLayerDistanceUtil*(): LayerDistanceUtil
proc getInstance*(t: typedesc[LayerDistanceUtil]): LayerDistanceUtil {.discardable.}
method getDistance*(this: LayerDistanceUtil, layerInterface: AllBinaryLayer, layerInterface2: AllBinaryLayer): int32 {.base, discardable.}
method getDistance3D*(this: LayerDistanceUtil, layerInterface: AllBinaryLayer, layerInterface2: AllBinaryLayer): int32 {.base, discardable.}
method getDistanceAt*(this: LayerDistanceUtil, layerInterface: AllBinaryLayer, point: GPoint): int32 {.base, discardable.}

var LayerDistanceUtil_instanceValue: LayerDistanceUtil
var LayerDistanceUtil_instanceSet = false
proc instance*(t: typedesc[LayerDistanceUtil]): LayerDistanceUtil =
    if not LayerDistanceUtil_instanceSet:
        LayerDistanceUtil_instanceSet = true
        LayerDistanceUtil_instanceValue = newLayerDistanceUtil()
    LayerDistanceUtil_instanceValue

# Java field initializers run after the base initializer
proc initFieldsLayerDistanceUtil(this: LayerDistanceUtil) =
    this.mathUtil = MathUtil.getInstance()
    discard

proc initLayerDistanceUtil*(this: LayerDistanceUtil) =
    this.initFieldsLayerDistanceUtil()

proc newLayerDistanceUtil*(): LayerDistanceUtil =
    result = LayerDistanceUtil()
    initLayerDistanceUtil(result)

proc getInstance*(t: typedesc[LayerDistanceUtil]): LayerDistanceUtil {.discardable.} =
        return LayerDistanceUtil.instance

method getDistance*(this: LayerDistanceUtil, layerInterface: AllBinaryLayer, layerInterface2: AllBinaryLayer): int32 {.base, discardable.} =
        let dx: int32 = (layerInterface.getXP() +% layerInterface.getHalfWidth()) -% (layerInterface2.getXP() +% layerInterface2.getHalfWidth())
        let dy: int32 = (layerInterface.getYP() +% layerInterface.getHalfHeight()) -% (layerInterface2.getYP() +% layerInterface2.getHalfHeight())
        return int32(this.mathUtil.sqrt((dx *% dx) +% (dy *% dy)))

method getDistance3D*(this: LayerDistanceUtil, layerInterface: AllBinaryLayer, layerInterface2: AllBinaryLayer): int32 {.base, discardable.} =
        let dx: int32 = (layerInterface.getXP() +% layerInterface.getHalfWidth()) -% (layerInterface2.getXP() +% layerInterface2.getHalfWidth())
        let dy: int32 = (layerInterface.getYP() +% layerInterface.getHalfHeight()) -% (layerInterface2.getYP() +% layerInterface2.getHalfHeight())
        let dz: int32 = (layerInterface.getZP() +% layerInterface.getHalfDepth()) -% (layerInterface2.getZP() +% layerInterface2.getHalfDepth())
        return int32(this.mathUtil.sqrt((dx *% dx) +% (dy *% dy) +% (dz *% dz)))

method getDistanceAt*(this: LayerDistanceUtil, layerInterface: AllBinaryLayer, point: GPoint): int32 {.base, discardable.} =
        let dx: int32 = layerInterface.getXP() -% point.getX()
        let dy: int32 = layerInterface.getYP() -% point.getY()
        return int32(this.mathUtil.sqrt((dx *% dx) +% (dy *% dy)))

