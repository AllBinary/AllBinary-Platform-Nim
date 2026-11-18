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
# package org.allbinary.game.ag.layer.pickup.health

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerCircularPool as AllBinaryLayerCircularPoolModule
export AllBinaryLayerCircularPoolModule
import org/allbinary/layer/AllBinaryLayerFactoryInterface as AllBinaryLayerFactoryInterfaceModule
export AllBinaryLayerFactoryInterfaceModule

type
    HealLayerCircularStaticPool* = ref object of AllBinaryLayerCircularPool

proc newHealLayerCircularStaticPool*(allbinaryLayerFactoryInterface: AllBinaryLayerFactoryInterface, total: int32): HealLayerCircularStaticPool
proc initHealLayerCircularStaticPool*(this: HealLayerCircularStaticPool, allbinaryLayerFactoryInterface: AllBinaryLayerFactoryInterface, total: int32)
method visit*(this: HealLayerCircularStaticPool, sourceLayerInterface: AllBinaryLayer) {.base.}
import org/allbinary/game/health/HealthInterface as HealthInterfaceModule
export HealthInterfaceModule
import org/allbinary/game/health/HealthInterfaceCompositeInterface as HealthInterfaceCompositeInterfaceModule
export HealthInterfaceCompositeInterfaceModule
import org/allbinary/game/ag/layer/pickup/health/HealLayer as HealLayerModule
export HealLayerModule


proc initHealLayerCircularStaticPool*(this: HealLayerCircularStaticPool, allbinaryLayerFactoryInterface: AllBinaryLayerFactoryInterface, total: int32) =
        initAllBinaryLayerCircularPool(this)
        procCall AllBinaryLayerCircularPool(this).initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface, total)

proc newHealLayerCircularStaticPool*(allbinaryLayerFactoryInterface: AllBinaryLayerFactoryInterface, total: int32): HealLayerCircularStaticPool =
    result = HealLayerCircularStaticPool()
    initHealLayerCircularStaticPool(result, allbinaryLayerFactoryInterface, total)

method visit*(this: HealLayerCircularStaticPool, sourceLayerInterface: AllBinaryLayer) {.base.} =
        let healLayer: HealLayer = HealLayer(JObject(this.getNextInstance()))
        let healthInterfaceCompositeInterface: HealthInterfaceCompositeInterface = HealthInterfaceCompositeInterface(JObject(sourceLayerInterface))
        let healthInterface: HealthInterface = healthInterfaceCompositeInterface.getHealthInterface()
        healLayer.visit(healthInterface)

when declared(newHealLayerCircularStaticPoolHook2):
    newHealLayerCircularStaticPoolHook2 = proc (allbinaryLayerFactoryInterface: AllBinaryLayerFactoryInterface, total: int32): AllBinaryLayerCircularPool = newHealLayerCircularStaticPool(allbinaryLayerFactoryInterface, total)

