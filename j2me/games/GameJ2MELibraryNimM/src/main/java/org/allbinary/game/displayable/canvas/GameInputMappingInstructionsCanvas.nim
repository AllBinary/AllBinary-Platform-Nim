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
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import javax/microedition/lcdui/CommandListener as CommandListenerModule
export CommandListenerModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/layer/AllBinaryGameLayerManager as AllBinaryGameLayerManagerModule
export AllBinaryGameLayerManagerModule
import org/allbinary/game/paint/ColorFillBasePaintable as ColorFillBasePaintableModule
export ColorFillBasePaintableModule
import org/allbinary/graphics/draw/DrawStringUtil as DrawStringUtilModule
export DrawStringUtilModule
import org/allbinary/game/displayable/canvas/GameCommandCanvas as GameCommandCanvasModule
export GameCommandCanvasModule

type
    GameInputMappingInstructionsCanvas* = ref object of GameCommandCanvas
        drawStringUtil*: DrawStringUtil
        TITLE*: string
        instructions*: JArray[string]
        colorFillPaintable*: ColorFillBasePaintable
        anchor*: int32

proc newGameInputMappingInstructionsCanvas*(commandListener: CommandListener, allBinaryGameLayerManager: AllBinaryGameLayerManager): GameInputMappingInstructionsCanvas
proc initGameInputMappingInstructionsCanvas*(this: GameInputMappingInstructionsCanvas, commandListener: CommandListener, allBinaryGameLayerManager: AllBinaryGameLayerManager)
method initCommands*(this: GameInputMappingInstructionsCanvas, cmdListener: CommandListener)
method paint*(this: GameInputMappingInstructionsCanvas, graphics: Graphics)
import org/allbinary/game/paint/ColorFillPaintableFactory as ColorFillPaintableFactoryModule
export ColorFillPaintableFactoryModule
import org/allbinary/graphics/Anchor as AnchorModule
export AnchorModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule

var GameInputMappingInstructionsCanvas_DISPLAYValue: Command
var GameInputMappingInstructionsCanvas_DISPLAYSet = false
proc DISPLAY*(t: typedesc[GameInputMappingInstructionsCanvas]): Command =
    if not GameInputMappingInstructionsCanvas_DISPLAYSet:
        GameInputMappingInstructionsCanvas_DISPLAYSet = true
        GameInputMappingInstructionsCanvas_DISPLAYValue = newCommand("Help", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    GameInputMappingInstructionsCanvas_DISPLAYValue
var GameInputMappingInstructionsCanvas_CLOSEValue: Command
var GameInputMappingInstructionsCanvas_CLOSESet = false
proc CLOSE*(t: typedesc[GameInputMappingInstructionsCanvas]): Command =
    if not GameInputMappingInstructionsCanvas_CLOSESet:
        GameInputMappingInstructionsCanvas_CLOSESet = true
        GameInputMappingInstructionsCanvas_CLOSEValue = newCommand("Close", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    GameInputMappingInstructionsCanvas_CLOSEValue
var GameInputMappingInstructionsCanvas_NAMEValue: string
var GameInputMappingInstructionsCanvas_NAMESet = false
proc NAME*(t: typedesc[GameInputMappingInstructionsCanvas]): string =
    if not GameInputMappingInstructionsCanvas_NAMESet:
        GameInputMappingInstructionsCanvas_NAMESet = true
        GameInputMappingInstructionsCanvas_NAMEValue = "GameInputMappingInstructionsCanvas"
    GameInputMappingInstructionsCanvas_NAMEValue

# Java field initializers run after the base initializer
proc initFieldsGameInputMappingInstructionsCanvas(this: GameInputMappingInstructionsCanvas) =
    this.drawStringUtil = DrawStringUtil.getInstance()
    this.TITLE = "Input Instructions"
    this.instructions = newJArrayFrom[string](["Add Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the '1' key to select the Fire action)", "2. Make the newly desired input for the selected action.", "(Example: Press 'f' to add it to the selected action)", "Note: If the input is already mapped to another action then it will not be added. You", "will need to deleted from the other action before adding it to another.", "Warning: Not all keys map for a given platform and show as Unknown.", StringUtil.getInstance().EMPTY_STRING, "Remove Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the key '1' to select the Fire action)", "2. Select a mapped input for the selected action.", "(Example: Press the key '1' to select the '1' key input for the selected Fire action)", "3. Press the Delete Key."])
    
    this.anchor = Anchor.TOP_LEFT
    discard

proc initGameInputMappingInstructionsCanvas*(this: GameInputMappingInstructionsCanvas, commandListener: CommandListener, allBinaryGameLayerManager: AllBinaryGameLayerManager) =
        initGameCommandCanvas(this, commandListener, GameInputMappingInstructionsCanvas.NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor())
        this.initFieldsGameInputMappingInstructionsCanvas()
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        this.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false)

proc newGameInputMappingInstructionsCanvas*(commandListener: CommandListener, allBinaryGameLayerManager: AllBinaryGameLayerManager): GameInputMappingInstructionsCanvas =
    result = GameInputMappingInstructionsCanvas()
    initGameInputMappingInstructionsCanvas(result, commandListener, allBinaryGameLayerManager)

method initCommands*(this: GameInputMappingInstructionsCanvas, cmdListener: CommandListener) =
        this.removeAllCommands()
        this.addCommand(GameInputMappingInstructionsCanvas.CLOSE)
        this.setCommandListener(cmdListener)

method paint*(this: GameInputMappingInstructionsCanvas, graphics: Graphics) =
        this.myFontProcessor.process(graphics)
        this.colorFillPaintable.paint(graphics)
        var halfWidth: int32 = this.displayInfo.getLastHalfWidth()
        var beginWidth: int32 = (ashr(graphics.getFont().stringWidth(this.TITLE), 1))
        graphics.setColor(this.foregroundColor)
        graphics.drawString(this.TITLE, halfWidth -% beginWidth, this.fontHeight, this.anchor)
        this.drawStringUtil.drawCenterStrings(graphics, this.instructions, this.displayInfo.getLastWidth(), this.fontHeight, halfWidth, 3 *% this.fontHeight)
        procCall GameCommandCanvas(this).paint(graphics)

when declared(newGameInputMappingInstructionsCanvasHook2):
    newGameInputMappingInstructionsCanvasHook2 = proc (commandListener: CommandListener, allBinaryGameLayerManager: AllBinaryGameLayerManager): GameCommandCanvas = newGameInputMappingInstructionsCanvas(commandListener, allBinaryGameLayerManager)

