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
import org/allbinary/layer/AllBinaryLayerFactoryInterface as AllBinaryLayerFactoryInterfaceModule
export AllBinaryLayerFactoryInterfaceModule

type
    LifeLayerFactory* = ref object of AllBinaryLayerFactoryInterface

proc newLifeLayerFactory*(): LifeLayerFactory
method getInstance*(this: LifeLayerFactory): AllBinaryLayer {.discardable.}
import org/allbinary/game/ag/layer/pickup/life/LifeLayer as LifeLayerModule
export LifeLayerModule


proc initLifeLayerFactory*(this: LifeLayerFactory) =
    discard

proc newLifeLayerFactory*(): LifeLayerFactory =
    result = LifeLayerFactory()
    initLifeLayerFactory(result)

method getInstance*(this: LifeLayerFactory): AllBinaryLayer {.discardable.} =
        return newLifeLayer()

