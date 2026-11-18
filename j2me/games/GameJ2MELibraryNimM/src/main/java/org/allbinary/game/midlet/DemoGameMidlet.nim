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
# package org.allbinary.game.midlet

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface as GameCanvasRunnableInterfaceModule
export GameCanvasRunnableInterfaceModule
import org/allbinary/game/layer/AllBinaryGameLayerManager as AllBinaryGameLayerManagerModule
export AllBinaryGameLayerManagerModule
import org/allbinary/logic/system/security/licensing/ClientInformationFactory as ClientInformationFactoryModule
export ClientInformationFactoryModule
import org/allbinary/game/midlet/GameMidlet as GameMidletModule
export GameMidletModule

type
    DemoGameMidlet* = ref object of GameMidlet

proc newDemoGameMidlet*(clientInformationFactory: ClientInformationFactory): DemoGameMidlet
proc initDemoGameMidlet*(this: DemoGameMidlet, clientInformationFactory: ClientInformationFactory)
method isContinue*(this: DemoGameMidlet): bool {.base, discardable.}
method getHighestLevel*(this: DemoGameMidlet): int32 {.base, discardable.}
method createDemoGameCanvasRunnableInterface*(this: DemoGameMidlet): GameCanvasRunnableInterface {.base, discardable.}
method createGameCanvasRunnable*(this: DemoGameMidlet, allBinaryGameLayerManager: AllBinaryGameLayerManager): GameCanvasRunnableInterface {.base, discardable.}
method createGameCanvasRunnableInterface*(this: DemoGameMidlet): GameCanvasRunnableInterface {.base, discardable.}
method demoSetup*(this: DemoGameMidlet) {.base.}
method postDemoSetup*(this: DemoGameMidlet) {.base.}
method setDemo*(this: DemoGameMidlet)
method createGame*(this: DemoGameMidlet)
method isReady*(this: DemoGameMidlet): bool {.base, discardable.}
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvas as ProgressCanvasModule
export ProgressCanvasModule
import org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory as ProgressCanvasFactoryModule
export ProgressCanvasFactoryModule
import org/allbinary/logic/StdUtil as StdUtilModule
export StdUtilModule
import org/allbinary/thread/PrimaryThreadPool as PrimaryThreadPoolModule
export PrimaryThreadPoolModule
import org/allbinary/game/displayable/canvas/NullGameCanvasRunnable as NullGameCanvasRunnableModule
export NullGameCanvasRunnableModule
import org/allbinary/util/ABHashtable as ABHashtableModule
export ABHashtableModule
import org/allbinary/game/midlet/DemoRunnable as DemoRunnableModule
export DemoRunnableModule
import org/allbinary/game/midlet/CreateGameRunnable as CreateGameRunnableModule
export CreateGameRunnableModule


proc initDemoGameMidlet*(this: DemoGameMidlet, clientInformationFactory: ClientInformationFactory) =
        initGameMidlet(this, clientInformationFactory)

proc newDemoGameMidlet*(clientInformationFactory: ClientInformationFactory): DemoGameMidlet =
    result = DemoGameMidlet()
    initDemoGameMidlet(result, clientInformationFactory)

method isContinue*(this: DemoGameMidlet): bool {.base, discardable.} =
        var hashtable: ABHashtable = this.getStartStateHashtable()
        if (not jIsNil(hashtable)) and hashtable.size() > 0:
            return true
        else:
            return false

method getHighestLevel*(this: DemoGameMidlet): int32 {.base, discardable.} =
        return 1

method createDemoGameCanvasRunnableInterface*(this: DemoGameMidlet): GameCanvasRunnableInterface {.base, discardable.} =
        this.logUtil.putF(this.commonStrings.NOT_IMPLEMENTED, this, this.commonStrings.CREATE)
        return NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLEStatic

method createGameCanvasRunnable*(this: DemoGameMidlet, allBinaryGameLayerManager: AllBinaryGameLayerManager): GameCanvasRunnableInterface {.base, discardable.} =
        raise newJException("Exception", this.commonStrings.NOT_IMPLEMENTED)

method createGameCanvasRunnableInterface*(this: DemoGameMidlet): GameCanvasRunnableInterface {.base, discardable.} =
        return this.createGameCanvasRunnable(this.createGameLayerManager())

method demoSetup*(this: DemoGameMidlet) {.base.} =
        discard

method postDemoSetup*(this: DemoGameMidlet) {.base.} =
        discard

method setDemo*(this: DemoGameMidlet) =
        this.logUtil.putF(this.commonStrings.START, this, "setDemo")
        let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
        progressCanvas.start()
        PrimaryThreadPool.getInstance().runTask(newDemoRunnable(this))

method createGame*(this: DemoGameMidlet) =
        let CREATE_GAME: string = "createGame"
        this.logUtil.putF(this.commonStrings.START, this, CREATE_GAME)
        let progressCanvas: ProgressCanvas = ProgressCanvasFactory.getInstance()
        progressCanvas.start()
        var hashtable: ABHashtable = this.getStartStateHashtable()
        this.setStartStateHashtable(StdUtil.getInstance().NULL_TABLE)
        PrimaryThreadPool.getInstance().runTask(newCreateGameRunnable(this, hashtable))
        this.logUtil.putF(this.commonStrings.END, this, CREATE_GAME)

method isReady*(this: DemoGameMidlet): bool {.base, discardable.} =
        return true

when declared(newDemoGameMidletHook1):
    newDemoGameMidletHook1 = proc (clientInformationFactory: ClientInformationFactory): GameMidlet = newDemoGameMidlet(clientInformationFactory)

