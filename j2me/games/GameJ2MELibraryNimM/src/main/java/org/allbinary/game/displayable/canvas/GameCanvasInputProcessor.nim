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
import java/lang/Integer as IntegerModule
export IntegerModule
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/game/input/GameKey as GameKeyModule
export GameKeyModule
import org/allbinary/game/input/InputProcessor as InputProcessorModule
export InputProcessorModule
import org/allbinary/game/input/event/DownGameKeyEventHandler as DownGameKeyEventHandlerModule
export DownGameKeyEventHandlerModule
import org/allbinary/game/input/event/DownKeyEventHandler as DownKeyEventHandlerModule
export DownKeyEventHandlerModule
import org/allbinary/game/input/event/GameKeyEventFactory as GameKeyEventFactoryModule
export GameKeyEventFactoryModule
import org/allbinary/game/input/event/UpGameKeyEventHandler as UpGameKeyEventHandlerModule
export UpGameKeyEventHandlerModule
import org/allbinary/game/input/mapping/InputToGameKeyMapping as InputToGameKeyMappingModule
export InputToGameKeyMappingModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/logic/math/SmallIntegerSingletonFactory as SmallIntegerSingletonFactoryModule
export SmallIntegerSingletonFactoryModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule

type
    GameCanvasInputProcessor* = ref object of InputProcessor
        logUtil*: LogUtil
        allBinaryGameCanvas*: AllBinaryGameCanvas
        downGameKeyEventHandler*: DownGameKeyEventHandler
        upGameKeyEventHandler*: UpGameKeyEventHandler
        downKeyEventHandler*: DownKeyEventHandler
        smallIntegerSingletonFactory*: SmallIntegerSingletonFactory
        inputToGameKeyMapping*: InputToGameKeyMapping
        NONE*: GameKey
        gameKeyEventFactory*: GameKeyEventFactory

proc newGameCanvasInputProcessor*(allBinaryGameCanvas: AllBinaryGameCanvas): GameCanvasInputProcessor
proc initGameCanvasInputProcessor*(this: GameCanvasInputProcessor, allBinaryGameCanvas: AllBinaryGameCanvas)
method keyPressedByDevice*(this: GameCanvasInputProcessor, keyCode: int32, deviceId: int32)
method keyReleasedByDevice*(this: GameCanvasInputProcessor, canvas: Canvas, keyCode: int32, deviceId: int32)
method removeGameKeyEvent*(this: GameCanvasInputProcessor, canvas: Canvas, keyCode: int32, deviceId: int32, repeated: bool) {.base.}
import org/allbinary/game/input/GameKeyEventSourceInterface as GameKeyEventSourceInterfaceModule
export GameKeyEventSourceInterfaceModule
import org/allbinary/game/input/GameKeyFactory as GameKeyFactoryModule
export GameKeyFactoryModule
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule


# Java field initializers run after the base initializer
proc initFieldsGameCanvasInputProcessor(this: GameCanvasInputProcessor) =
    this.logUtil = LogUtil.getInstance()
    
    this.downGameKeyEventHandler = DownGameKeyEventHandler.getInstance()
    this.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
    this.downKeyEventHandler = DownKeyEventHandler.getInstance()
    this.smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
    this.inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping()
    this.NONE = GameKeyFactory.getInstance().NONE
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance()
    discard

proc initGameCanvasInputProcessor*(this: GameCanvasInputProcessor, allBinaryGameCanvas: AllBinaryGameCanvas) =
        initInputProcessor(this)
        this.initFieldsGameCanvasInputProcessor()
        this.allBinaryGameCanvas = allBinaryGameCanvas
        this.inputToGameKeyMapping.init(this.allBinaryGameCanvas)

proc newGameCanvasInputProcessor*(allBinaryGameCanvas: AllBinaryGameCanvas): GameCanvasInputProcessor =
    result = GameCanvasInputProcessor()
    initGameCanvasInputProcessor(result, allBinaryGameCanvas)

method keyPressedByDevice*(this: GameCanvasInputProcessor, keyCode: int32, deviceId: int32) =
        try:
            let gameKey: GameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this.allBinaryGameCanvas, keyCode)
            if gameKey != this.NONE:
                let gameKeyEvent: GameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this.allBinaryGameCanvas, gameKey)
                this.downGameKeyEventHandler.fireEvent(gameKeyEvent)
                this.downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            else:
                this.logUtil.putF(newStringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.ADD_KEY_EVENT)
            let keyCodeAsInteger: int32 = this.smallIntegerSingletonFactory.getAtNoThrow(keyCode)
            this.downKeyEventHandler.fireEventI(keyCodeAsInteger)
            this.downKeyEventHandler.getInstanceForDevice(deviceId).fireEventI(keyCodeAsInteger)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.ADD_KEY_EVENT, e)

method keyReleasedByDevice*(this: GameCanvasInputProcessor, canvas: Canvas, keyCode: int32, deviceId: int32) =
        this.removeGameKeyEvent(canvas, keyCode, deviceId, false)

method removeGameKeyEvent*(this: GameCanvasInputProcessor, canvas: Canvas, keyCode: int32, deviceId: int32, repeated: bool) {.base.} =
        try:
            let gameKey: GameKey = this.inputToGameKeyMapping.getInstanceForCanvas(canvas, keyCode)
            if gameKey != this.NONE:
                let gameKeyEventSourceInterface: GameKeyEventSourceInterface = GameKeyEventSourceInterface(JObject(canvas))
                let gameKeyEvent: GameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(gameKeyEventSourceInterface, gameKey)
                this.upGameKeyEventHandler.fireEvent(gameKeyEvent)
                this.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            else:
                this.logUtil.putF(newStringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.REMOVE_KEY_EVENT)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.REMOVE_KEY_EVENT, e)

when declared(newGameCanvasInputProcessorHook1):
    newGameCanvasInputProcessorHook1 = proc (allBinaryGameCanvas: AllBinaryGameCanvas): InputProcessor = newGameCanvasInputProcessor(allBinaryGameCanvas)

