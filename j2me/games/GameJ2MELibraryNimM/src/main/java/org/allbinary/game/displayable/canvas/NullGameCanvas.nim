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
# package org.allbinary.game.displayable.canvas

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/layer/AllBinaryGameLayerManager as AllBinaryGameLayerManagerModule
export AllBinaryGameLayerManagerModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule

type
    NullGameCanvas* = ref object of AllBinaryGameCanvas
        runningNull*: bool

proc newNullGameCanvas*(gameLayerManager: AllBinaryGameLayerManager): NullGameCanvas
proc initNullGameCanvas*(this: NullGameCanvas, gameLayerManager: AllBinaryGameLayerManager)
proc createNull*(t: typedesc[NullGameCanvas]): NullGameCanvas {.discardable.}
proc getInstance*(t: typedesc[NullGameCanvas]): NullGameCanvas {.discardable.}
proc createCanvas*(t: typedesc[NullGameCanvas], gameLayerManager: AllBinaryGameLayerManager): NullGameCanvas {.discardable.}
method isGameOver*(this: NullGameCanvas): bool {.discardable.}
method setRunning*(this: NullGameCanvas, running: bool)
method isRunning*(this: NullGameCanvas): bool {.discardable.}
method pause*(this: NullGameCanvas)
method unPause*(this: NullGameCanvas)
method initCommands*(this: NullGameCanvas, cmdListener: CommandListener)
method buildGameInit*(this: NullGameCanvas, isProgress: bool)
method draw*(this: NullGameCanvas, graphics: Graphics)
method run*(this: NullGameCanvas)
method getType*(this: NullGameCanvas): int32 {.discardable.}
import javax/microedition/lcdui/NullCommandListener as NullCommandListenerModule
export NullCommandListenerModule
import org/allbinary/game/init/BasicBuildGameInitializerFactory as BasicBuildGameInitializerFactoryModule
export BasicBuildGameInitializerFactoryModule
import org/allbinary/game/score/NoHighScoresFactory as NoHighScoresFactoryModule
export NoHighScoresFactoryModule
import org/allbinary/logic/NullUtil as NullUtilModule
export NullUtilModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule

var NullGameCanvas_instanceValue: JObject
var NullGameCanvas_instanceSet = false
proc instance*(t: typedesc[NullGameCanvas]): JObject =
    if not NullGameCanvas_instanceSet:
        NullGameCanvas_instanceSet = true
        NullGameCanvas_instanceValue = NullUtil.getInstance().NULL_OBJECT
    NullGameCanvas_instanceValue
proc `instance=`*(t: typedesc[NullGameCanvas], value: JObject) =
    NullGameCanvas_instanceSet = true
    NullGameCanvas_instanceValue = value
var NullGameCanvas_NO_GAMEValue: string
var NullGameCanvas_NO_GAMESet = false
proc NO_GAME*(t: typedesc[NullGameCanvas]): string =
    if not NullGameCanvas_NO_GAMESet:
        NullGameCanvas_NO_GAMESet = true
        NullGameCanvas_NO_GAMEValue = "No Background Game"
    NullGameCanvas_NO_GAMEValue
var NullGameCanvas_TYPEValue: int32
var NullGameCanvas_TYPESet = false
proc TYPE*(t: typedesc[NullGameCanvas]): int32 =
    if not NullGameCanvas_TYPESet:
        NullGameCanvas_TYPESet = true
        NullGameCanvas_TYPEValue = 1
    NullGameCanvas_TYPEValue

# Java field initializers run after the base initializer
proc initFieldsNullGameCanvas(this: NullGameCanvas) =
    this.runningNull = true
    discard

proc createNull*(t: typedesc[NullGameCanvas]): NullGameCanvas {.discardable.} =
        try:
            return newNullGameCanvas(AllBinaryGameLayerManager.getNullInstance())
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            LogUtil.getInstance().put(CommonStrings.getInstance().EXCEPTION, "NullGameCanvas", CommonStrings.getInstance().GET_INSTANCE, e)
            raise newJException("RuntimeException", "")

proc getInstance*(t: typedesc[NullGameCanvas]): NullGameCanvas {.discardable.} =
        if NullGameCanvas.instance == NullUtil.getInstance().NULL_OBJECT:
            NullGameCanvas.instance = NullGameCanvas.createNull()
        return NullGameCanvas(JObject(NullGameCanvas.instance))

proc createCanvas*(t: typedesc[NullGameCanvas], gameLayerManager: AllBinaryGameLayerManager): NullGameCanvas {.discardable.} =
        let nullGameCanvas: NullGameCanvas = newNullGameCanvas(gameLayerManager)
        nullGameCanvas.setInitialized(true)
        nullGameCanvas.setTitle(NullGameCanvas.NO_GAME)
        return nullGameCanvas

proc initNullGameCanvas*(this: NullGameCanvas, gameLayerManager: AllBinaryGameLayerManager) =
        initAllBinaryGameCanvas(this, NullCommandListener.NULL_COMMAND_LISTENERStatic, gameLayerManager, NoHighScoresFactory.getInstance(), BasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY, false)
        this.initFieldsNullGameCanvas()
        jSuperStatement(procCall AllBinaryGameCanvas(this).setWait(1200))

proc newNullGameCanvas*(gameLayerManager: AllBinaryGameLayerManager): NullGameCanvas =
    result = NullGameCanvas()
    initNullGameCanvas(result, gameLayerManager)

method isGameOver*(this: NullGameCanvas): bool {.discardable.} =
        return false

method setRunning*(this: NullGameCanvas, running: bool) =
        this.runningNull = running

method isRunning*(this: NullGameCanvas): bool {.discardable.} =
        return this.runningNull

method pause*(this: NullGameCanvas) =
        this.setPaused(true)

method unPause*(this: NullGameCanvas) =
        this.setPaused(false)

method initCommands*(this: NullGameCanvas, cmdListener: CommandListener) =
        this.removeAllCommands()
        this.setCommandListener(cmdListener)

method buildGameInit*(this: NullGameCanvas, isProgress: bool) =
        discard

method draw*(this: NullGameCanvas, graphics: Graphics) =
        discard

method run*(this: NullGameCanvas) =
        try:
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN)
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e)

method getType*(this: NullGameCanvas): int32 {.discardable.} =
        return NullGameCanvas.TYPE

when declared(newNullGameCanvasHook1):
    newNullGameCanvasHook1 = proc (gameLayerManager: AllBinaryGameLayerManager): AllBinaryGameCanvas = newNullGameCanvas(gameLayerManager)

