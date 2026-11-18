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
import org/allbinary/layer/AllBinaryLayerFactoryInterface as AllBinaryLayerFactoryInterfaceModule
export AllBinaryLayerFactoryInterfaceModule

type
    HealLayerFactory* = ref object of AllBinaryLayerFactoryInterface

proc newHealLayerFactory*(): HealLayerFactory
method getInstance*(this: HealLayerFactory): AllBinaryLayer {.discardable.}
import org/allbinary/game/ag/layer/pickup/health/HealLayer as HealLayerModule
export HealLayerModule


proc initHealLayerFactory*(this: HealLayerFactory) =
    discard

proc newHealLayerFactory*(): HealLayerFactory =
    result = HealLayerFactory()
    initHealLayerFactory(result)

method getInstance*(this: HealLayerFactory): AllBinaryLayer {.discardable.} =
        return newHealLayer()

