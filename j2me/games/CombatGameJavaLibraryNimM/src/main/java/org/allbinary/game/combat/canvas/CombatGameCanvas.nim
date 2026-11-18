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
# package org.allbinary.game.combat.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule
import org/allbinary/game/init/BasicBuildGameInitializerFactory as BasicBuildGameInitializerFactoryModule
export BasicBuildGameInitializerFactoryModule
import org/allbinary/game/layer/AllBinaryGameLayerManager as AllBinaryGameLayerManagerModule
export AllBinaryGameLayerManagerModule
import org/allbinary/game/score/HighScoresFactoryInterface as HighScoresFactoryInterfaceModule
export HighScoresFactoryInterfaceModule
import org/allbinary/layer/BasicLayerProcessor as BasicLayerProcessorModule
export BasicLayerProcessorModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule

type
    CombatGameCanvas* = ref object of AllBinaryGameCanvas

proc newCombatGameCanvas*(cmdListener: CommandListener, gameLayerManager: AllBinaryGameLayerManager, highScoresFactoryInterface: HighScoresFactoryInterface, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory, buffered: bool): CombatGameCanvas
proc initCombatGameCanvas*(this: CombatGameCanvas, cmdListener: CommandListener, gameLayerManager: AllBinaryGameLayerManager, highScoresFactoryInterface: HighScoresFactoryInterface, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory, buffered: bool)
method CombatGameCanvas_init*(this: CombatGameCanvas) {.base.}
method initApp*(this: CombatGameCanvas, abeClientInformation: AbeClientInformationInterface)
method initConfigurablePortion*(this: CombatGameCanvas, portion: int32) {.base.}
method processPlayingGame*(this: CombatGameCanvas)
method cleanupGame*(this: CombatGameCanvas)
method cleanupManager*(this: CombatGameCanvas) {.base.}
import org/allbinary/game/combat/destroy/DestroyedLayerProcessor as DestroyedLayerProcessorModule
export DestroyedLayerProcessorModule
import org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool as DestroyEventCircularStaticPoolModule
export DestroyEventCircularStaticPoolModule
import org/allbinary/game/combat/destroy/event/DestroyedEventHandler as DestroyedEventHandlerModule
export DestroyedEventHandlerModule
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/GameFeatureFactory as GameFeatureFactoryModule
export GameFeatureFactoryModule
import org/allbinary/game/layer/drop/DropLayerProcessor as DropLayerProcessorModule
export DropLayerProcessorModule
import org/allbinary/game/layer/identification/GroupLayerManagerListener as GroupLayerManagerListenerModule
export GroupLayerManagerListenerModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory as ProgressCanvasFactoryModule
export ProgressCanvasFactoryModule

var CombatGameCanvas_basicLayerProcessorValue: JArray[BasicLayerProcessor]
var CombatGameCanvas_basicLayerProcessorSet = false
proc basicLayerProcessor*(t: typedesc[CombatGameCanvas]): JArray[BasicLayerProcessor] =
    if not CombatGameCanvas_basicLayerProcessorSet:
        CombatGameCanvas_basicLayerProcessorSet = true
        CombatGameCanvas_basicLayerProcessorValue = newJArray[BasicLayerProcessor](0, default(BasicLayerProcessor))
    CombatGameCanvas_basicLayerProcessorValue
proc `basicLayerProcessor=`*(t: typedesc[CombatGameCanvas], value: JArray[BasicLayerProcessor]) =
    CombatGameCanvas_basicLayerProcessorSet = true
    CombatGameCanvas_basicLayerProcessorValue = value

proc initCombatGameCanvas*(this: CombatGameCanvas, cmdListener: CommandListener, gameLayerManager: AllBinaryGameLayerManager, highScoresFactoryInterface: HighScoresFactoryInterface, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory, buffered: bool) =
        initAllBinaryGameCanvas(this, cmdListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered)

proc newCombatGameCanvas*(cmdListener: CommandListener, gameLayerManager: AllBinaryGameLayerManager, highScoresFactoryInterface: HighScoresFactoryInterface, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory, buffered: bool): CombatGameCanvas =
    result = CombatGameCanvas()
    initCombatGameCanvas(result, cmdListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered)

method CombatGameCanvas_init*(this: CombatGameCanvas) {.base.} =
        DestroyEventCircularStaticPool.getInstance().init(this)
        ProgressCanvasFactory.getInstance().addNormalPortion(50, "Destroy Events")

method initApp*(this: CombatGameCanvas, abeClientInformation: AbeClientInformationInterface) =
        this.CombatGameCanvas_init()
        procCall AllBinaryGameCanvas(this).initApp(abeClientInformation)

method initConfigurablePortion*(this: CombatGameCanvas, portion: int32) {.base.} =
        DestroyedLayerProcessor.init()
        ProgressCanvasFactory.getInstance().addNormalPortion(portion, "Basic Processors")
        let features: Features = Features.getInstance()
        let gameFeatureFactory: GameFeatureFactory = GameFeatureFactory.getInstance()
        if features.isFeature(gameFeatureFactory.DROPPED_ITEMS) and features.isFeature(gameFeatureFactory.DROPPED_ITEMS_FROM_DEATH):
            CombatGameCanvas.basicLayerProcessor = newJArray[BasicLayerProcessor](2, default(BasicLayerProcessor))
            CombatGameCanvas.basicLayerProcessor[0] = DestroyedLayerProcessor.getInstance()
            CombatGameCanvas.basicLayerProcessor[1] = DropLayerProcessor.getInstance()
        else:
            CombatGameCanvas.basicLayerProcessor = newJArray[BasicLayerProcessor](1, default(BasicLayerProcessor))
            CombatGameCanvas.basicLayerProcessor[0] = DestroyedLayerProcessor.getInstance()

method processPlayingGame*(this: CombatGameCanvas) =
        procCall AllBinaryGameCanvas(this).processPlayingGame()
        block:
            var index: int32 = CombatGameCanvas.basicLayerProcessor.length
            while jPreDecrement(index) >= 0:
                CombatGameCanvas.basicLayerProcessor[index].process(this.gameLayerManager)

method cleanupGame*(this: CombatGameCanvas) =
        procCall AllBinaryGameCanvas(this).cleanupGame()
        block:
            var index: int32 = CombatGameCanvas.basicLayerProcessor.length
            while jPreDecrement(index) >= 0:
                CombatGameCanvas.basicLayerProcessor[index].getList().clear()
        GroupLayerManagerListener.getInstance().clear()
        GroupLayerManagerListener.getInstance().log()
        DestroyedEventHandler.getInstance().removeAllListeners()
        this.cleanupManager()

method cleanupManager*(this: CombatGameCanvas) {.base.} =
        this.gameLayerManager.cleanup()

when declared(newCombatGameCanvasHook5):
    newCombatGameCanvasHook5 = proc (cmdListener: CommandListener, gameLayerManager: AllBinaryGameLayerManager, highScoresFactoryInterface: HighScoresFactoryInterface, gameInitializationInterfaceFactoryInterface: BasicBuildGameInitializerFactory, buffered: bool): AllBinaryGameCanvas = newCombatGameCanvas(cmdListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered)

