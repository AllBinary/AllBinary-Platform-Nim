#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.game.collision

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/collision/CollidableBaseBehaviorFactoryInterface as CollidableBaseBehaviorFactoryInterfaceModule
export CollidableBaseBehaviorFactoryInterfaceModule
import org/allbinary/game/collision/CollidableBaseBehavior as CollidableBaseBehaviorModule
export CollidableBaseBehaviorModule

type
    CollidableBaseBehaviorFactory* = ref object of CollidableBaseBehaviorFactoryInterface

proc newCollidableBaseBehaviorFactory*(): CollidableBaseBehaviorFactory
method createBehavior*(this: CollidableBaseBehaviorFactory): CollidableBaseBehavior {.discardable.}


proc initCollidableBaseBehaviorFactory*(this: CollidableBaseBehaviorFactory) =
    discard

proc newCollidableBaseBehaviorFactory*(): CollidableBaseBehaviorFactory =
    result = CollidableBaseBehaviorFactory()
    initCollidableBaseBehaviorFactory(result)

method createBehavior*(this: CollidableBaseBehaviorFactory): CollidableBaseBehavior {.discardable.} =
        raise newJException("RuntimeException", "")

