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
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/input/GameKey as GameKeyModule
export GameKeyModule
import org/allbinary/game/input/Input as InputModule
export InputModule
import org/allbinary/game/input/InputFactory as InputFactoryModule
export InputFactoryModule
import org/allbinary/game/input/mapping/InputMappingInterface as InputMappingInterfaceModule
export InputMappingInterfaceModule
import org/allbinary/game/input/mapping/PersistentInputMapping as PersistentInputMappingModule
export PersistentInputMappingModule
import org/allbinary/game/layer/AllBinaryGameLayerManager as AllBinaryGameLayerManagerModule
export AllBinaryGameLayerManagerModule
import org/allbinary/game/paint/ColorFillBasePaintable as ColorFillBasePaintableModule
export ColorFillBasePaintableModule
import org/allbinary/game/paint/help/HelpPaintable as HelpPaintableModule
export HelpPaintableModule
import org/allbinary/game/paint/help/InputMappingHelpPaintable as InputMappingHelpPaintableModule
export InputMappingHelpPaintableModule
import org/allbinary/graphics/paint/ProcessPaintable as ProcessPaintableModule
export ProcessPaintableModule
import org/allbinary/logic/system/security/licensing/AbeClientInformationInterface as AbeClientInformationInterfaceModule
export AbeClientInformationInterfaceModule
import org/allbinary/game/displayable/canvas/GameCommandCanvas as GameCommandCanvasModule
export GameCommandCanvasModule

type
    GameInputMappingCanvas* = ref object of GameCommandCanvas
        paintable*: ProcessPaintable
        helpPaintable*: InputMappingHelpPaintable
        colorFillPaintable*: ColorFillBasePaintable
        inputMapping*: PersistentInputMapping
        NONE*: GameKey
        abeClientInformation*: AbeClientInformationInterface
        selectedGameKey*: GameKey
        selectedInput*: Input
        inputFactory*: InputFactory

converter jAsInputMappingInterface*(value: GameInputMappingCanvas): InputMappingInterface = cast[InputMappingInterface](value)
proc newGameInputMappingCanvas*(abeClientInformation: AbeClientInformationInterface, commandListener: CommandListener, allBinaryGameLayerManager: AllBinaryGameLayerManager, helpPaintable: HelpPaintable): GameInputMappingCanvas
proc initGameInputMappingCanvas*(this: GameInputMappingCanvas, abeClientInformation: AbeClientInformationInterface, commandListener: CommandListener, allBinaryGameLayerManager: AllBinaryGameLayerManager, helpPaintable: HelpPaintable)
method close*(this: GameInputMappingCanvas)
method initCommands*(this: GameInputMappingCanvas, cmdListener: CommandListener)
method keyPressed*(this: GameInputMappingCanvas, keyCode: int32)
method keyReleased*(this: GameInputMappingCanvas, keyCode: int32)
method keyRepeated*(this: GameInputMappingCanvas, keyCode: int32)
method keyPressedByDevice*(this: GameInputMappingCanvas, keyCode: int32, deviceId: int32)
method addGameKey*(this: GameInputMappingCanvas, keyCode: int32, repeated: bool) {.base.}
method processInputMapping*(this: GameInputMappingCanvas, gameKey: GameKey, input: Input)
method setSelectedAction*(this: GameInputMappingCanvas, gameKey: GameKey) {.base.}
method gameActionCrud*(this: GameInputMappingCanvas, gameKey: GameKey, input: Input) {.base.}
method addNewMapping*(this: GameInputMappingCanvas, gameKey: GameKey, input: Input) {.base.}
method deleteCurrentMapping*(this: GameInputMappingCanvas) {.base.}
method setDefault*(this: GameInputMappingCanvas) {.base.}
method update*(this: GameInputMappingCanvas)
method paint*(this: GameInputMappingCanvas, graphics: Graphics)
import org/allbinary/game/commands/GameCommandsFactory as GameCommandsFactoryModule
export GameCommandsFactoryModule
import org/allbinary/game/input/GameKeyFactory as GameKeyFactoryModule
export GameKeyFactoryModule
import org/allbinary/game/input/PlatformInputMappingFactory as PlatformInputMappingFactoryModule
export PlatformInputMappingFactoryModule
import org/allbinary/game/paint/ColorFillPaintableFactory as ColorFillPaintableFactoryModule
export ColorFillPaintableFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas as GameInputMappingInstructionsCanvasModule
export GameInputMappingInstructionsCanvasModule

var GameInputMappingCanvas_NAMEValue: string
var GameInputMappingCanvas_NAMESet = false
proc NAME*(t: typedesc[GameInputMappingCanvas]): string =
    if not GameInputMappingCanvas_NAMESet:
        GameInputMappingCanvas_NAMESet = true
        GameInputMappingCanvas_NAMEValue = "GameInputMappingCanvas"
    GameInputMappingCanvas_NAMEValue
var GameInputMappingCanvas_DISPLAYValue: Command
var GameInputMappingCanvas_DISPLAYSet = false
proc DISPLAY*(t: typedesc[GameInputMappingCanvas]): Command =
    if not GameInputMappingCanvas_DISPLAYSet:
        GameInputMappingCanvas_DISPLAYSet = true
        GameInputMappingCanvas_DISPLAYValue = newCommand("Controls", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2)
    GameInputMappingCanvas_DISPLAYValue
var GameInputMappingCanvas_DEFAULTValue: Command
var GameInputMappingCanvas_DEFAULTSet = false
proc DEFAULT*(t: typedesc[GameInputMappingCanvas]): Command =
    if not GameInputMappingCanvas_DEFAULTSet:
        GameInputMappingCanvas_DEFAULTSet = true
        GameInputMappingCanvas_DEFAULTValue = newCommand("Default", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2)
    GameInputMappingCanvas_DEFAULTValue

# Java field initializers run after the base initializer
proc initFieldsGameInputMappingCanvas(this: GameInputMappingCanvas) =
    
    
    
    
    this.NONE = GameKeyFactory.getInstance().NONE
    
    this.selectedGameKey = this.NONE
    this.selectedInput = this.NONE
    this.inputFactory = InputFactory.getInstance()
    discard

proc initGameInputMappingCanvas*(this: GameInputMappingCanvas, abeClientInformation: AbeClientInformationInterface, commandListener: CommandListener, allBinaryGameLayerManager: AllBinaryGameLayerManager, helpPaintable: HelpPaintable) =
        initGameCommandCanvas(this, commandListener, GameInputMappingCanvas.NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor())
        this.initFieldsGameInputMappingCanvas()
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        if (jIsNil(helpPaintable)):
            raise newJException("Exception", "Help Paintable Exception")
        this.abeClientInformation = abeClientInformation
        this.helpPaintable = InputMappingHelpPaintable(JObject(helpPaintable))
        this.inputMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance()
        this.paintable = newProcessPaintable()
        this.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false)

proc newGameInputMappingCanvas*(abeClientInformation: AbeClientInformationInterface, commandListener: CommandListener, allBinaryGameLayerManager: AllBinaryGameLayerManager, helpPaintable: HelpPaintable): GameInputMappingCanvas =
    result = GameInputMappingCanvas()
    initGameInputMappingCanvas(result, abeClientInformation, commandListener, allBinaryGameLayerManager, helpPaintable)

method close*(this: GameInputMappingCanvas) =
        procCall GameCommandCanvas(this).close()
        this.paintable.process()
        this.selectedGameKey = this.NONE
        this.selectedInput = this.NONE
        this.update()

method initCommands*(this: GameInputMappingCanvas, cmdListener: CommandListener) =
        this.removeAllCommands()
        this.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        this.addCommand(GameInputMappingCanvas.DEFAULT)
        this.addCommand(GameInputMappingInstructionsCanvas.DISPLAY)
        this.setCommandListener(cmdListener)

method keyPressed*(this: GameInputMappingCanvas, keyCode: int32) =
        this.keyPressedByDevice(keyCode, 0)

method keyReleased*(this: GameInputMappingCanvas, keyCode: int32) =
        this.keyReleasedByDevice(keyCode, 0)

method keyRepeated*(this: GameInputMappingCanvas, keyCode: int32) =
        this.keyRepeatedByDevice(keyCode, 0)

method keyPressedByDevice*(this: GameInputMappingCanvas, keyCode: int32, deviceId: int32) =
        this.addGameKey(keyCode, false)
        procCall GameCommandCanvas(this).keyPressedByDevice(keyCode, 0)

method addGameKey*(this: GameInputMappingCanvas, keyCode: int32, repeated: bool) {.base.} =
        try:
            this.logUtil.putF(newStringMaker().append("Raw Device Key Code: ").append(Integer.toHexString(keyCode)).toString(), this, this.gameInputStrings.ADD_KEY_EVENT)
            var gameKey: GameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode)
            var input: Input = this.inputFactory.getInstanceById(keyCode)
            this.processInputMapping(gameKey, input)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.ADD_KEY_EVENT, e)

method processInputMapping*(this: GameInputMappingCanvas, gameKey: GameKey, input: Input) =
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("Start Passed GameKey: ")
        stringBuffer.append(this.stringUtil.toString(gameKey))
        stringBuffer.append(" Input: ")
        stringBuffer.append(this.stringUtil.toString(input))
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.PROCESS)
        if this.selectedGameKey != this.NONE:
            this.gameActionCrud(gameKey, input)
        else:
            this.setSelectedAction(gameKey)

method setSelectedAction*(this: GameInputMappingCanvas, gameKey: GameKey) {.base.} =
        this.logUtil.putF(newStringMaker().append("Selected GameKey: ").append(this.stringUtil.toString(gameKey)).toString(), this, "setSelectedAction")
        this.selectedGameKey = gameKey
        this.selectedInput = this.NONE
        this.helpPaintable.update(this.selectedGameKey, this.selectedInput)
        this.repaintBehavior.onChangeRepaint(this)

method gameActionCrud*(this: GameInputMappingCanvas, gameKey: GameKey, input: Input) {.base.} =
        let stringBuffer: StringMaker = newStringMaker()
        stringBuffer.append("Start GameKey: ")
        stringBuffer.append(this.stringUtil.toString(this.selectedGameKey))
        stringBuffer.append(" Input: ")
        stringBuffer.append(this.stringUtil.toString(this.selectedInput))
        this.logUtil.putF(stringBuffer.toString(), this, "gameActionCrud")
        if (jSame(this.selectedInput, this.NONE)):
            var list: BasicArrayList = this.inputMapping.getInputMapping().getMappedInput(this.selectedGameKey)
            var isInputAlreadyMappedToSelectedAction: bool = list.contains(input)
            if isInputAlreadyMappedToSelectedAction:
                this.logUtil.putF(newStringMaker().append("Already Mapped Input: ").append(this.stringUtil.toString(input)).toString(), this, "gameActionCrud")
                this.selectedInput = input
                this.helpPaintable.update(this.selectedGameKey, this.selectedInput)
                this.repaintBehavior.onChangeRepaint(this)
            else:
                this.addNewMapping(gameKey, input)
        elif this.inputMapping.isDelete(input):
            this.deleteCurrentMapping()
        else:
            this.setSelectedAction(gameKey)

method addNewMapping*(this: GameInputMappingCanvas, gameKey: GameKey, input: Input) {.base.} =
        let METHOD_NAME: string = "addNewMapping"
        this.logUtil.putF(this.commonStrings.START, this, METHOD_NAME)
        var isInputAlreadyMapped: bool = this.inputMapping.getInputMapping().isMapped(input)
        if (not isInputAlreadyMapped) and (not this.inputMapping.isSystemInput(input)):
            let stringBuffer: StringMaker = newStringMaker()
            stringBuffer.append("Add Key Mapping : GameKey: ")
            stringBuffer.append(this.stringUtil.toString(this.selectedGameKey))
            stringBuffer.append(" Input: ")
            stringBuffer.append(this.stringUtil.toString(this.selectedInput))
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME)
            this.inputMapping.getInputMapping().add(this.selectedGameKey, input)
            this.selectedInput = input
            this.update()
        else:
            this.logUtil.putF("Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to", this, METHOD_NAME)
            this.setSelectedAction(gameKey)

method deleteCurrentMapping*(this: GameInputMappingCanvas) {.base.} =
        let METHOD_NAME: string = "deleteCurrentMapping"
        var list: BasicArrayList = this.inputMapping.getInputMapping().getMappedInput(this.selectedGameKey)
        if list.size() > 1:
            let stringBuffer: StringMaker = newStringMaker()
            stringBuffer.append("Start GameKey: ")
            stringBuffer.append("Remove Key Mapping: GameKey: ")
            stringBuffer.append(this.stringUtil.toString(this.selectedGameKey))
            stringBuffer.append(" Input: ")
            stringBuffer.append(this.stringUtil.toString(this.selectedInput))
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME)
            this.inputMapping.getInputMapping().remove(this.selectedGameKey, this.selectedInput)
            this.selectedInput = this.NONE
            this.update()
        else:
            this.logUtil.putF("Can't Remove Last Key Mapping", this, METHOD_NAME)

method setDefault*(this: GameInputMappingCanvas) {.base.} =
        this.inputMapping.setDefault(this.abeClientInformation)
        this.helpPaintable.update(this.NONE, this.NONE)
        this.repaintBehavior.onChangeRepaint(this)

method update*(this: GameInputMappingCanvas) =
        this.inputMapping.update(this.abeClientInformation)
        this.helpPaintable.update(this.selectedGameKey, this.selectedInput)
        this.repaintBehavior.onChangeRepaint(this)

method paint*(this: GameInputMappingCanvas, graphics: Graphics) =
        this.colorFillPaintable.paint(graphics)
        this.helpPaintable.paint(graphics)
        this.paintable.paint(graphics)
        procCall GameCommandCanvas(this).paint(graphics)

when declared(newGameInputMappingCanvasHook4):
    newGameInputMappingCanvasHook4 = proc (abeClientInformation: AbeClientInformationInterface, commandListener: CommandListener, allBinaryGameLayerManager: AllBinaryGameLayerManager, helpPaintable: HelpPaintable): GameCommandCanvas = newGameInputMappingCanvas(abeClientInformation, commandListener, allBinaryGameLayerManager, helpPaintable)

