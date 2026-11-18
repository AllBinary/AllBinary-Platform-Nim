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
# package org.allbinary.game.init

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/init/GameInitializationInterfaceFactoryInterface as GameInitializationInterfaceFactoryInterfaceModule
export GameInitializationInterfaceFactoryInterfaceModule
import org/allbinary/game/init/GameInitializationInterface as GameInitializationInterfaceModule
export GameInitializationInterfaceModule

type
    BasicBuildGameInitializerFactory* = ref object of GameInitializationInterfaceFactoryInterface

proc newBasicBuildGameInitializerFactory*(): BasicBuildGameInitializerFactory
method getInstance*(this: BasicBuildGameInitializerFactory): GameInitializationInterface {.discardable.}
import org/allbinary/game/init/BaseGameInitialization as BaseGameInitializationModule
export BaseGameInitializationModule

var BasicBuildGameInitializerFactory_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYValue: BasicBuildGameInitializerFactory
var BasicBuildGameInitializerFactory_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYSet = false
proc NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY*(t: typedesc[BasicBuildGameInitializerFactory]): BasicBuildGameInitializerFactory =
    if not BasicBuildGameInitializerFactory_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYSet:
        BasicBuildGameInitializerFactory_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYSet = true
        BasicBuildGameInitializerFactory_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYValue = newBasicBuildGameInitializerFactory()
    BasicBuildGameInitializerFactory_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYValue
proc `NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY=`*(t: typedesc[BasicBuildGameInitializerFactory], value: BasicBuildGameInitializerFactory) =
    BasicBuildGameInitializerFactory_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYSet = true
    BasicBuildGameInitializerFactory_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORYValue = value

proc initBasicBuildGameInitializerFactory*(this: BasicBuildGameInitializerFactory) =
    discard

proc newBasicBuildGameInitializerFactory*(): BasicBuildGameInitializerFactory =
    result = BasicBuildGameInitializerFactory()
    initBasicBuildGameInitializerFactory(result)

method getInstance*(this: BasicBuildGameInitializerFactory): GameInitializationInterface {.discardable.} =
        return BaseGameInitialization.NULL_BASE_GAME_INITIALIZATION

