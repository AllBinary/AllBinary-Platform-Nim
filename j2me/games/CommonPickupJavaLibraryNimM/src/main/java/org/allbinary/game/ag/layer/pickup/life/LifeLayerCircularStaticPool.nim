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
# package org.allbinary.game.ag.layer.pickup.life

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerCircularPool as AllBinaryLayerCircularPoolModule
export AllBinaryLayerCircularPoolModule
import org/allbinary/layer/AllBinaryLayerFactoryInterface as AllBinaryLayerFactoryInterfaceModule
export AllBinaryLayerFactoryInterfaceModule

type
    LifeLayerCircularStaticPool* = ref object of AllBinaryLayerCircularPool

proc newLifeLayerCircularStaticPool*(allbinaryLayerFactoryInterface: AllBinaryLayerFactoryInterface, total: int32): LifeLayerCircularStaticPool
proc initLifeLayerCircularStaticPool*(this: LifeLayerCircularStaticPool, allbinaryLayerFactoryInterface: AllBinaryLayerFactoryInterface, total: int32)
method visit*(this: LifeLayerCircularStaticPool, sourceLayerInterface: AllBinaryLayer) {.base.}
import org/allbinary/game/ag/life/Life as LifeModule
export LifeModule
import org/allbinary/game/ag/life/LifeInterfaceCompositeInterface as LifeInterfaceCompositeInterfaceModule
export LifeInterfaceCompositeInterfaceModule
import org/allbinary/game/ag/layer/pickup/life/LifeLayer as LifeLayerModule
export LifeLayerModule


proc initLifeLayerCircularStaticPool*(this: LifeLayerCircularStaticPool, allbinaryLayerFactoryInterface: AllBinaryLayerFactoryInterface, total: int32) =
        initAllBinaryLayerCircularPool(this)
        jSuperStatement(procCall AllBinaryLayerCircularPool(this).initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface, total))

proc newLifeLayerCircularStaticPool*(allbinaryLayerFactoryInterface: AllBinaryLayerFactoryInterface, total: int32): LifeLayerCircularStaticPool =
    result = LifeLayerCircularStaticPool()
    initLifeLayerCircularStaticPool(result, allbinaryLayerFactoryInterface, total)

method visit*(this: LifeLayerCircularStaticPool, sourceLayerInterface: AllBinaryLayer) {.base.} =
        let lifeLayer: LifeLayer = LifeLayer(JObject(this.getNextInstance()))
        let lifeInterfaceCompositeInterface: LifeInterfaceCompositeInterface = LifeInterfaceCompositeInterface(JObject(sourceLayerInterface))
        let lifeInterface: Life = lifeInterfaceCompositeInterface.getLifeInterface()
        lifeLayer.visit(lifeInterface)

when declared(newLifeLayerCircularStaticPoolHook2):
    newLifeLayerCircularStaticPoolHook2 = proc (allbinaryLayerFactoryInterface: AllBinaryLayerFactoryInterface, total: int32): AllBinaryLayerCircularPool = newLifeLayerCircularStaticPool(allbinaryLayerFactoryInterface, total)

