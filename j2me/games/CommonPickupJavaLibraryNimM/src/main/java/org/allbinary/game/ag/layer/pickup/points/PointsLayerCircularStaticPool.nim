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
import org/allbinary/layer/AllBinaryLayerCircularPool as AllBinaryLayerCircularPoolModule
export AllBinaryLayerCircularPoolModule
import org/allbinary/layer/AllBinaryLayerFactoryInterface as AllBinaryLayerFactoryInterfaceModule
export AllBinaryLayerFactoryInterfaceModule

type
    PointsLayerCircularStaticPool* = ref object of AllBinaryLayerCircularPool

proc newPointsLayerCircularStaticPool*(allbinaryLayerFactoryInterface: AllBinaryLayerFactoryInterface, total: int32): PointsLayerCircularStaticPool
proc initPointsLayerCircularStaticPool*(this: PointsLayerCircularStaticPool, allbinaryLayerFactoryInterface: AllBinaryLayerFactoryInterface, total: int32)
method visit*(this: PointsLayerCircularStaticPool, sourceLayerInterface: AllBinaryLayer) {.base.}
import org/allbinary/game/score/ScoreableInterface as ScoreableInterfaceModule
export ScoreableInterfaceModule
import org/allbinary/game/ag/layer/pickup/points/PointsLayer as PointsLayerModule
export PointsLayerModule


proc initPointsLayerCircularStaticPool*(this: PointsLayerCircularStaticPool, allbinaryLayerFactoryInterface: AllBinaryLayerFactoryInterface, total: int32) =
        initAllBinaryLayerCircularPool(this)
        procCall AllBinaryLayerCircularPool(this).initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface, total)

proc newPointsLayerCircularStaticPool*(allbinaryLayerFactoryInterface: AllBinaryLayerFactoryInterface, total: int32): PointsLayerCircularStaticPool =
    result = PointsLayerCircularStaticPool()
    initPointsLayerCircularStaticPool(result, allbinaryLayerFactoryInterface, total)

method visit*(this: PointsLayerCircularStaticPool, sourceLayerInterface: AllBinaryLayer) {.base.} =
        var pointsLayer: PointsLayer = PointsLayer(JObject(this.getNextInstance()))
        var scoreableInterface: ScoreableInterface = ScoreableInterface(JObject(sourceLayerInterface))
        pointsLayer.visit(scoreableInterface)

when declared(newPointsLayerCircularStaticPoolHook2):
    newPointsLayerCircularStaticPoolHook2 = proc (allbinaryLayerFactoryInterface: AllBinaryLayerFactoryInterface, total: int32): AllBinaryLayerCircularPool = newPointsLayerCircularStaticPool(allbinaryLayerFactoryInterface, total)

