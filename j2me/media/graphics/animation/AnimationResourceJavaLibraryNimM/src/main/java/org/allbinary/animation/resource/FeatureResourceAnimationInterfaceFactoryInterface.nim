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
# package org.allbinary.animation.resource

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/configuration/feature/GameFeatureControlledInterface as GameFeatureControlledInterfaceModule
export GameFeatureControlledInterfaceModule
import org/allbinary/game/resource/RectangleResourceFactoryInterface as RectangleResourceFactoryInterfaceModule
export RectangleResourceFactoryInterfaceModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/animation/resource/ResourceAnimationInterfaceFactoryInterface as ResourceAnimationInterfaceFactoryInterfaceModule
export ResourceAnimationInterfaceFactoryInterfaceModule

type
    FeatureResourceAnimationInterfaceFactoryInterface* = ref object of ResourceAnimationInterfaceFactoryInterface

converter jAsRectangleResourceFactoryInterface*(value: FeatureResourceAnimationInterfaceFactoryInterface): RectangleResourceFactoryInterface = cast[RectangleResourceFactoryInterface](value)
converter jAsGameFeatureControlledInterface*(value: FeatureResourceAnimationInterfaceFactoryInterface): GameFeatureControlledInterface = cast[GameFeatureControlledInterface](value)

method getHashtable*(this: FeatureResourceAnimationInterfaceFactoryInterface): ABHashtable {.base, discardable.} =
        raise newJException("AbstractMethodError", "getHashtable")

