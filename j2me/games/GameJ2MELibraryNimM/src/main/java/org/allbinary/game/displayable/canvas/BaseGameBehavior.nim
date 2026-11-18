#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.game.displayable.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/game/displayable/canvas/DemoGameBehavior as DemoGameBehaviorModule
export DemoGameBehaviorModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule

type
    BaseGameBehavior* = ref object of DemoGameBehavior

proc newBaseGameBehavior*(): BaseGameBehavior
proc getInstance*(t: typedesc[BaseGameBehavior]): DemoGameBehavior {.discardable.}
method init*(this: BaseGameBehavior)
method pause*(this: BaseGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas)
method unPause*(this: BaseGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas)
method updateTouch*(this: BaseGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas)
method updateScreenButtonPaintable*(this: BaseGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas)
method setGameState*(this: BaseGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas)
method removeAllGameKeyInputListeners*(this: BaseGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas)
method updateEndGameProcessor*(this: BaseGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas)
method buildGame*(this: BaseGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas)
method run*(this: BaseGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas)
method setHighScore*(this: BaseGameBehavior, abeClientInformation: AbeClientInformationInterface, allBinaryGameCanvas: AllBinaryGameCanvas, name: string, score: int64, autoSubmit: bool, isLast: bool)
import org/allbinary/business/advertisement/GameAdStateFactory as GameAdStateFactoryModule
export GameAdStateFactoryModule
import org/allbinary/game/GameAdState as GameAdStateModule
export GameAdStateModule
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/graphics/opengles/CurrentDisplayableFactory as CurrentDisplayableFactoryModule
export CurrentDisplayableFactoryModule
import org/allbinary/graphics/opengles/OpenGLFeatureFactory as OpenGLFeatureFactoryModule
export OpenGLFeatureFactoryModule

var BaseGameBehavior_instanceCValue: BaseGameBehavior
var BaseGameBehavior_instanceCSet = false
proc instanceC*(t: typedesc[BaseGameBehavior]): BaseGameBehavior =
    if not BaseGameBehavior_instanceCSet:
        BaseGameBehavior_instanceCSet = true
        BaseGameBehavior_instanceCValue = newBaseGameBehavior()
    BaseGameBehavior_instanceCValue

proc initBaseGameBehavior*(this: BaseGameBehavior) =
    initDemoGameBehavior(this)

proc newBaseGameBehavior*(): BaseGameBehavior =
    result = BaseGameBehavior()
    initBaseGameBehavior(result)

proc getInstance*(t: typedesc[BaseGameBehavior]): DemoGameBehavior {.discardable.} =
        return BaseGameBehavior.instanceC

method init*(this: BaseGameBehavior) =
        let gameAdState: GameAdState = GameAdStateFactory.getInstance().getCurrentInstance()
        gameAdState.playingAdState()

method pause*(this: BaseGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) =
        let features: Features = Features.getInstance()
        if features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL_AS_GAME_THREAD):
            let currentDisplayableFactory: CurrentDisplayableFactory = CurrentDisplayableFactory.getInstance()
            currentDisplayableFactory.setRunnable(allBinaryGameCanvas.gamePauseRunnable)

method unPause*(this: BaseGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) =
        if Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL_AS_GAME_THREAD):
            let currentDisplayableFactory: CurrentDisplayableFactory = CurrentDisplayableFactory.getInstance()
            currentDisplayableFactory.setRunnable(allBinaryGameCanvas.gameRunnable)
            currentDisplayableFactory.setDisplayable(allBinaryGameCanvas)

method updateTouch*(this: BaseGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) =
        allBinaryGameCanvas.updateTouch2()

method updateScreenButtonPaintable*(this: BaseGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) =
        allBinaryGameCanvas.updateScreenButtonPaintable2()

method setGameState*(this: BaseGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) =
        allBinaryGameCanvas.updateGameState()

method removeAllGameKeyInputListeners*(this: BaseGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) =
        allBinaryGameCanvas.removeAllGameKeyInputListeners2()

method updateEndGameProcessor*(this: BaseGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) =
        allBinaryGameCanvas.updateEndGameProcessor2()

method buildGame*(this: BaseGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) =
        allBinaryGameCanvas.buildGame2()

method run*(this: BaseGameBehavior, allBinaryGameCanvas: AllBinaryGameCanvas) =
        allBinaryGameCanvas.run2()

method setHighScore*(this: BaseGameBehavior, abeClientInformation: AbeClientInformationInterface, allBinaryGameCanvas: AllBinaryGameCanvas, name: string, score: int64, autoSubmit: bool, isLast: bool) =
        allBinaryGameCanvas.setHighScore2(abeClientInformation, name, score, autoSubmit, isLast)

when declared(newBaseGameBehaviorHook0):
    newBaseGameBehaviorHook0 = proc (): DemoGameBehavior = newBaseGameBehavior()

