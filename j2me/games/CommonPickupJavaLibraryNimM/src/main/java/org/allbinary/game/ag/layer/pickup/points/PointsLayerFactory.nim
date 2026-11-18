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
# package org.allbinary.game.ag.layer.pickup.points

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerFactoryInterface as AllBinaryLayerFactoryInterfaceModule
export AllBinaryLayerFactoryInterfaceModule

type
    PointsLayerFactory* = ref object of AllBinaryLayerFactoryInterface
        points*: int32

proc newPointsLayerFactory*(points: int32): PointsLayerFactory
proc initPointsLayerFactory*(this: PointsLayerFactory, points: int32)
method getInstance*(this: PointsLayerFactory): AllBinaryLayer {.discardable.}
import org/allbinary/game/ag/layer/pickup/points/PointsLayer as PointsLayerModule
export PointsLayerModule


# Java field initializers run after the base initializer
proc initFieldsPointsLayerFactory(this: PointsLayerFactory) =
    
    discard

proc initPointsLayerFactory*(this: PointsLayerFactory, points: int32) =
        this.initFieldsPointsLayerFactory()
        this.points = points

proc newPointsLayerFactory*(points: int32): PointsLayerFactory =
    result = PointsLayerFactory()
    initPointsLayerFactory(result, points)

method getInstance*(this: PointsLayerFactory): AllBinaryLayer {.discardable.} =
        return newPointsLayer(this.points)

