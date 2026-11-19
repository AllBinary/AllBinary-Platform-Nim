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
# package org.allbinary.game.layer

{.warning[UnusedImport]: off.}
import allbinary_java
import java/util/Enumeration as EnumerationModule
export EnumerationModule
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule
import org/allbinary/layer/LayerInterfaceVisitor as LayerInterfaceVisitorModule
export LayerInterfaceVisitorModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/EnumerationUtil as EnumerationUtilModule
export EnumerationUtilModule
import org/allbinary/game/layer/LayerPlacementInterface as LayerPlacementInterfaceModule
export LayerPlacementInterfaceModule

type
    LayerPlacer* = ref object of JObject
        enumerationUtil*: EnumerationUtil
        layerInterfaceVisitor*: LayerInterfaceVisitor
        dimension*: GPoint

proc newLayerPlacer*(layerInterfaceVisitor: LayerInterfaceVisitor, dimension: GPoint): LayerPlacer
proc initLayerPlacer*(this: LayerPlacer, layerInterfaceVisitor: LayerInterfaceVisitor, dimension: GPoint)
method processList*(this: LayerPlacer, list: BasicArrayList) {.base.}
method process*(this: LayerPlacer, layerPlacementInterface: LayerPlacementInterface) {.base.}
method getPoint*(this: LayerPlacer, layerPlacementInterface: LayerPlacementInterface): GPoint {.base, discardable.}
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/LayerInterfaceFactory as LayerInterfaceFactoryModule
export LayerInterfaceFactoryModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/game/layer/LayerPlacementType as LayerPlacementTypeModule
export LayerPlacementTypeModule
import org/allbinary/game/layer/LayerPlacementTypeFactory as LayerPlacementTypeFactoryModule
export LayerPlacementTypeFactoryModule


# Java field initializers run after the base initializer
proc initFieldsLayerPlacer(this: LayerPlacer) =
    this.enumerationUtil = EnumerationUtil.getInstance()
    
    
    discard

proc initLayerPlacer*(this: LayerPlacer, layerInterfaceVisitor: LayerInterfaceVisitor, dimension: GPoint) =
        this.initFieldsLayerPlacer()
        this.layerInterfaceVisitor = layerInterfaceVisitor
        this.dimension = dimension

proc newLayerPlacer*(layerInterfaceVisitor: LayerInterfaceVisitor, dimension: GPoint): LayerPlacer =
    result = LayerPlacer()
    initLayerPlacer(result, layerInterfaceVisitor, dimension)

method processList*(this: LayerPlacer, list: BasicArrayList) {.base.} =
        let size: int32 = list.size()
        var layerPlacementInterface: LayerPlacementInterface = nil
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                layerPlacementInterface = LayerPlacementInterface(JObject(list.objectArray[index]))
                this.process(layerPlacementInterface)

method process*(this: LayerPlacer, layerPlacementInterface: LayerPlacementInterface) {.base.} =
        let relativePoint: GPoint = this.getPoint(layerPlacementInterface)
        let layerInterfaceFactory: LayerInterfaceFactory = LayerInterfaceFactory.getInstance()
        let hashtable: ABHashtable = layerPlacementInterface.getInstance()
        let enumeration: Enumeration = hashtable.keys()
        var point: GPoint = nil
        var layerHashtable: ABHashtable = nil
        var x: int32 = 0
        var y: int32 = 0
        var z: int32 = 0
        var layerInterface: AllBinaryLayer = nil
        while this.enumerationUtil.hasMoreElements(enumeration):
            point = GPoint(JObject(this.enumerationUtil.nextElement(enumeration)))
            layerHashtable = ABHashtable(JObject(hashtable.get(point)))
            x = point.getX() +% relativePoint.getX()
            y = point.getY() +% relativePoint.getY()
            z = point.getZ() +% relativePoint.getZ()
            layerInterface = layerInterfaceFactory.getNexInstance(layerHashtable, x, y, z)
            this.layerInterfaceVisitor.visit(layerInterface)

method getPoint*(this: LayerPlacer, layerPlacementInterface: LayerPlacementInterface): GPoint {.base, discardable.} =
        let pointFactory: PointFactory = PointFactory.getInstance()
        let layerPlacementType: LayerPlacementType = layerPlacementInterface.getLayerType()
        if (jSame(layerPlacementType, LayerPlacementTypeFactory.getInstance().MAP)):
            let width: int32 = layerPlacementInterface.getWidth()
            let height: int32 = layerPlacementInterface.getHeight()
            let x: int32 = ((this.dimension.getX() -% width) div 2)
            let y: int32 = ((this.dimension.getY() -% height) div 2)
            return pointFactory.createXY(x, y)
        elif (jSame(layerPlacementType, LayerPlacementTypeFactory.getInstance().UP)):
            let width: int32 = layerPlacementInterface.getWidth()
            let height: int32 = layerPlacementInterface.getHeight()
            let x: int32 = ((this.dimension.getX() -% width) div 2)
            let y: int32 = -height
            return pointFactory.createXY(x, y)
        else:
            raise newJException("Exception", "PlacementType Not Recognized")

