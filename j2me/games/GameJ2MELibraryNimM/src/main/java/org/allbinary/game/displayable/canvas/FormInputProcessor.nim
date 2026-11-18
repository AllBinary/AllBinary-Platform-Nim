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
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/game/input/InputFactory as InputFactoryModule
export InputFactoryModule
import org/allbinary/game/input/InputProcessor as InputProcessorModule
export InputProcessorModule
import org/allbinary/game/input/PlatformKeyFactory as PlatformKeyFactoryModule
export PlatformKeyFactoryModule
import org/allbinary/game/input/event/DownKeyEventHandler as DownKeyEventHandlerModule
export DownKeyEventHandlerModule
import org/allbinary/game/input/event/GameKeyEventFactory as GameKeyEventFactoryModule
export GameKeyEventFactoryModule
import org/allbinary/game/input/event/UpGameKeyEventHandler as UpGameKeyEventHandlerModule
export UpGameKeyEventHandlerModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule

type
    FormInputProcessor* = ref object of InputProcessor
        logUtil*: LogUtil
        commonStrings*: CommonStrings
        gameKeyEventFactory*: GameKeyEventFactory
        downKeyEventHandler*: DownKeyEventHandler
        upGameKeyEventHandler*: UpGameKeyEventHandler
        inputFactory*: InputFactory
        platformKeyFactory*: PlatformKeyFactory
        allBinaryGameCanvas*: AllBinaryGameCanvas

proc newFormInputProcessor*(allBinaryGameCanvas: AllBinaryGameCanvas): FormInputProcessor
proc initFormInputProcessor*(this: FormInputProcessor, allBinaryGameCanvas: AllBinaryGameCanvas)
method keyPressedByDevice*(this: FormInputProcessor, keyCode: int32, deviceId: int32)
method keyReleasedByDevice*(this: FormInputProcessor, canvas: Canvas, keyCode: int32, deviceId: int32)
import org/allbinary/game/input/GameKey as GameKeyModule
export GameKeyModule
import org/allbinary/game/input/GameKeyEventSourceInterface as GameKeyEventSourceInterfaceModule
export GameKeyEventSourceInterfaceModule
import org/allbinary/game/input/GameKeyFactory as GameKeyFactoryModule
export GameKeyFactoryModule
import org/allbinary/game/input/Input as InputModule
export InputModule
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/logic/communication/log/PreLogUtil as PreLogUtilModule
export PreLogUtilModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/string/CommonSeps as CommonSepsModule
export CommonSepsModule


# Java field initializers run after the base initializer
proc initFieldsFormInputProcessor(this: FormInputProcessor) =
    this.logUtil = LogUtil.getInstance()
    this.commonStrings = CommonStrings.getInstance()
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance()
    this.downKeyEventHandler = DownKeyEventHandler.getInstance()
    this.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
    this.inputFactory = InputFactory.getInstance()
    this.platformKeyFactory = PlatformKeyFactory.getInstance()
    
    discard

proc initFormInputProcessor*(this: FormInputProcessor, allBinaryGameCanvas: AllBinaryGameCanvas) =
        initInputProcessor(this)
        this.initFieldsFormInputProcessor()
        this.allBinaryGameCanvas = allBinaryGameCanvas

proc newFormInputProcessor*(allBinaryGameCanvas: AllBinaryGameCanvas): FormInputProcessor =
    result = FormInputProcessor()
    initFormInputProcessor(result, allBinaryGameCanvas)

method keyPressedByDevice*(this: FormInputProcessor, keyCode: int32, deviceId: int32) =
        try:
            PreLogUtil.put(newStringMaker().append(this.inputFactory.KEY_CODE_LABEL).appendint(keyCode).append(CommonSeps.getInstance().SPACE).append(this.inputFactory.DEVICE_ID_LABEL).appendint(deviceId).toString(), this, this.gameInputStrings.KEY_PRESSED)
            let input: Input = this.inputFactory.getInstanceById(keyCode)
            let gameKeyEvent: GameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this.allBinaryGameCanvas, input)
            this.downKeyEventHandler.fireEventForGameKeyEvent(gameKeyEvent)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ADD_KEY_EVENT, e)

method keyReleasedByDevice*(this: FormInputProcessor, canvas: Canvas, keyCode: int32, deviceId: int32) =
        try:
            let input: Input = this.inputFactory.getInstanceById(keyCode)
            if this.platformKeyFactory.isEnter(input):
                PreLogUtil.put(newStringMaker().append(this.inputFactory.KEY_CODE_LABEL).appendint(keyCode).append(CommonSeps.getInstance().SPACE).append(this.inputFactory.DEVICE_ID_LABEL).appendint(deviceId).toString(), this, this.gameInputStrings.KEY_RELEASED)
                let gameKey: GameKey = GameKeyFactory.getInstance().KEY_NUM0
                let gameKeyEventSourceInterface: GameKeyEventSourceInterface = GameKeyEventSourceInterface(JObject(canvas))
                let gameKeyEvent: GameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(gameKeyEventSourceInterface, gameKey)
                this.upGameKeyEventHandler.fireEvent(gameKeyEvent)
                this.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ADD_KEY_EVENT, e)

when declared(newFormInputProcessorHook1):
    newFormInputProcessorHook1 = proc (allBinaryGameCanvas: AllBinaryGameCanvas): InputProcessor = newFormInputProcessor(allBinaryGameCanvas)

