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
# package org.allbinary.game.ag.layer.weapon.mine

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/layer/AllBinaryLayer as AllBinaryLayerModule
export AllBinaryLayerModule
import org/allbinary/layer/AllBinaryLayerFactoryInterface as AllBinaryLayerFactoryInterfaceModule
export AllBinaryLayerFactoryInterfaceModule
import org/allbinary/view/ViewPositionFactoryInterface as ViewPositionFactoryInterfaceModule
export ViewPositionFactoryInterfaceModule

type
    MineLayerFactory* = ref object of AllBinaryLayerFactoryInterface
        viewPositionFactoryInterface*: ViewPositionFactoryInterface

proc newMineLayerFactory*(viewPositionFactoryInterface: ViewPositionFactoryInterface): MineLayerFactory
proc initMineLayerFactory*(this: MineLayerFactory, viewPositionFactoryInterface: ViewPositionFactoryInterface)
method getInstance*(this: MineLayerFactory): AllBinaryLayer {.discardable.}
import org/allbinary/game/ag/layer/weapon/mine/MineLayer as MineLayerModule
export MineLayerModule


# Java field initializers run after the base initializer
proc initFieldsMineLayerFactory(this: MineLayerFactory) =
    
    discard

proc initMineLayerFactory*(this: MineLayerFactory, viewPositionFactoryInterface: ViewPositionFactoryInterface) =
        this.initFieldsMineLayerFactory()
        this.viewPositionFactoryInterface = viewPositionFactoryInterface

proc newMineLayerFactory*(viewPositionFactoryInterface: ViewPositionFactoryInterface): MineLayerFactory =
    result = MineLayerFactory()
    initMineLayerFactory(result, viewPositionFactoryInterface)

method getInstance*(this: MineLayerFactory): AllBinaryLayer {.discardable.} =
        return newMineLayer(this.viewPositionFactoryInterface.getInstance())

