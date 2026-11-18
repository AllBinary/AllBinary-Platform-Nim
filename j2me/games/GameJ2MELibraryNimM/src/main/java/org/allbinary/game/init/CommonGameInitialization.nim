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
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import org/allbinary/game/resource/ResourceInitialization as ResourceInitializationModule
export ResourceInitializationModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/init/BaseGameInitialization as BaseGameInitializationModule
export BaseGameInitializationModule

type
    CommonGameInitialization* = ref object of BaseGameInitialization
        commonStrings*: CommonStrings

proc newCommonGameInitialization*(resourceInitializationArray: JArray[ResourceInitialization], portion: int32): CommonGameInitialization
proc initCommonGameInitialization*(this: CommonGameInitialization, resourceInitializationArray: JArray[ResourceInitialization], portion: int32)
method init*(this: CommonGameInitialization, abeClientInformation: AbeClientInformationInterface, commandListener: CommandListener, level: int32)
method initGame*(this: CommonGameInitialization) {.base.}
import org/allbinary/game/resource/ResourceLoadingLevelFactory as ResourceLoadingLevelFactoryModule
export ResourceLoadingLevelFactoryModule
import org/allbinary/graphics/PointFactory as PointFactoryModule
export PointFactoryModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvas as ProgressCanvasModule
export ProgressCanvasModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory as ProgressCanvasFactoryModule
export ProgressCanvasFactoryModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/math/AngleFactory as AngleFactoryModule
export AngleFactoryModule


# Java field initializers run after the base initializer
proc initFieldsCommonGameInitialization(this: CommonGameInitialization) =
    this.commonStrings = CommonStrings.getInstance()
    discard

proc initCommonGameInitialization*(this: CommonGameInitialization, resourceInitializationArray: JArray[ResourceInitialization], portion: int32) =
        initBaseGameInitialization(this, resourceInitializationArray, portion)
        this.initFieldsCommonGameInitialization()

proc newCommonGameInitialization*(resourceInitializationArray: JArray[ResourceInitialization], portion: int32): CommonGameInitialization =
    result = CommonGameInitialization()
    initCommonGameInitialization(result, resourceInitializationArray, portion)

method init*(this: CommonGameInitialization, abeClientInformation: AbeClientInformationInterface, commandListener: CommandListener, level: int32) =
        procCall BaseGameInitialization(this).init(abeClientInformation, commandListener, level)
        let resourceLoadingLevelFactory: ResourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        if (not this.isGameInitialized()) and level == resourceLoadingLevelFactory.LOAD_ALL.getLevel():
            this.setGameInitialized(true)
            let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
            SmallIntegerSingletonFactory.getInstance().init()
            progressCanvas.addNormalPortion(50, "Integers")
            PointFactory.getInstance().init()
            progressCanvas.addNormalPortion(50, "Points")
            AngleFactory.getInstance()
            progressCanvas.addNormalPortion(50, "Angles")
            this.initGame()
            this.resourceInitializationArray[this.GAME_RESOURCES].init()
        procCall BaseGameInitialization(this).resourceInitialization(level)

method initGame*(this: CommonGameInitialization) {.base.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

when declared(newCommonGameInitializationHook2):
    newCommonGameInitializationHook2 = proc (resourceInitializationArray: JArray[ResourceInitialization], portion: int32): BaseGameInitialization = newCommonGameInitialization(resourceInitializationArray, portion)

