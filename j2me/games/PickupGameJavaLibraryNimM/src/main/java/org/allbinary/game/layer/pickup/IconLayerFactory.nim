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
# package org.allbinary.game.layer.pickup

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/animation/Animation as AnimationModule
export AnimationModule
import org/allbinary/game/layer/pickup/IconLayer as IconLayerModule
export IconLayerModule

type
    IconLayerFactory* = ref object of JObject

proc newIconLayerFactory*(): IconLayerFactory
proc getInstance*(t: typedesc[IconLayerFactory], animationInterface: Animation, width: int32, height: int32): IconLayer {.discardable.}


proc initIconLayerFactory*(this: IconLayerFactory) =
    discard

proc newIconLayerFactory*(): IconLayerFactory =
    result = IconLayerFactory()
    initIconLayerFactory(result)

proc getInstance*(t: typedesc[IconLayerFactory], animationInterface: Animation, width: int32, height: int32): IconLayer {.discardable.} =
        return newIconLayer(animationInterface, width, height)

