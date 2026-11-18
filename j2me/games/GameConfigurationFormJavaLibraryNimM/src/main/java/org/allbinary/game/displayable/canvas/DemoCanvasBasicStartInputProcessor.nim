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
import org/allbinary/canvas/RunnableCanvas as RunnableCanvasModule
export RunnableCanvasModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/displayable/canvas/BasicMenuInputProcessor as BasicMenuInputProcessorModule
export BasicMenuInputProcessorModule

type
    DemoCanvasBasicStartInputProcessor* = ref object of BasicMenuInputProcessor

proc newDemoCanvasBasicStartInputProcessor*(gameKeyEventList: BasicArrayList, gameCanvas: RunnableCanvas): DemoCanvasBasicStartInputProcessor
proc initDemoCanvasBasicStartInputProcessor*(this: DemoCanvasBasicStartInputProcessor, gameKeyEventList: BasicArrayList, gameCanvas: RunnableCanvas)
method processInputList*(this: DemoCanvasBasicStartInputProcessor): int32 {.discardable.}
import javax/microedition/lcdui/NullCanvas as NullCanvasModule
export NullCanvasModule
import org/allbinary/game/commands/GameCommandsFactory as GameCommandsFactoryModule
export GameCommandsFactoryModule
import org/allbinary/game/input/GameInputStrings as GameInputStringsModule
export GameInputStringsModule
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule


proc initDemoCanvasBasicStartInputProcessor*(this: DemoCanvasBasicStartInputProcessor, gameKeyEventList: BasicArrayList, gameCanvas: RunnableCanvas) =
        initBasicMenuInputProcessor(this, gameKeyEventList, -1, gameCanvas)

proc newDemoCanvasBasicStartInputProcessor*(gameKeyEventList: BasicArrayList, gameCanvas: RunnableCanvas): DemoCanvasBasicStartInputProcessor =
    result = DemoCanvasBasicStartInputProcessor()
    initDemoCanvasBasicStartInputProcessor(result, gameKeyEventList, gameCanvas)

method processInputList*(this: DemoCanvasBasicStartInputProcessor): int32 {.discardable.} =
        var list: BasicArrayList = this.getGameKeyEventList()
        var size: int32 = list.size()
        var gameKeyEvent: GameKeyEvent = nil
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                gameKeyEvent = GameKeyEvent(JObject(list.objectArray[index]))
                this.logUtil.putF(newStringMaker().append("Start GameKey: ").append(StringUtil.getInstance().toString(gameKeyEvent)).toString(), this, GameInputStrings.getInstance().PROCESS_INPUT)
        this.getCanvas().getCustomCommandListener().commandAction(GameCommandsFactory.getInstance().START_COMMAND, NullCanvas.NULL_CANVASStatic)
        return size

when declared(newDemoCanvasBasicStartInputProcessorHook2):
    newDemoCanvasBasicStartInputProcessorHook2 = proc (gameKeyEventList: BasicArrayList, gameCanvas: RunnableCanvas): BasicMenuInputProcessor = newDemoCanvasBasicStartInputProcessor(gameKeyEventList, gameCanvas)

