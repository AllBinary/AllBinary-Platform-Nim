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
import org/allbinary/game/input/GameKeyFactory as GameKeyFactoryModule
export GameKeyFactoryModule
import org/allbinary/game/input/PlayerGameInput as PlayerGameInputModule
export PlayerGameInputModule
import org/allbinary/game/layer/special/SpecialGameInputInterface as SpecialGameInputInterfaceModule
export SpecialGameInputInterfaceModule
import org/allbinary/game/displayable/canvas/AllBinaryGameCanvas as AllBinaryGameCanvasModule
export AllBinaryGameCanvasModule

type
    CheatGameInputProcessor* = ref object of PlayerGameInput
        PROCESS_GAME*: string
        gameCanvas*: AllBinaryGameCanvas
        gameKeyFactory*: GameKeyFactory

proc newCheatGameInputProcessor*(gameCanvas: AllBinaryGameCanvas): CheatGameInputProcessor
proc initCheatGameInputProcessor*(this: CheatGameInputProcessor, gameCanvas: AllBinaryGameCanvas)
method update*(this: CheatGameInputProcessor)
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/game/input/event/GameKeyEventUtil as GameKeyEventUtilModule
export GameKeyEventUtilModule
import org/allbinary/game/layer/AllBinaryGameLayerManager as AllBinaryGameLayerManagerModule
export AllBinaryGameLayerManagerModule
import org/allbinary/game/layer/special/SpecialGameInputFactory as SpecialGameInputFactoryModule
export SpecialGameInputFactoryModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule

var CheatGameInputProcessor_inputProcessorValue: SpecialGameInputInterface
var CheatGameInputProcessor_inputProcessorSet = false
proc inputProcessor*(t: typedesc[CheatGameInputProcessor]): SpecialGameInputInterface =
    if not CheatGameInputProcessor_inputProcessorSet:
        CheatGameInputProcessor_inputProcessorSet = true
        CheatGameInputProcessor_inputProcessorValue = SpecialGameInputFactory.NO_SPECIAL_GAME_INPUT
    CheatGameInputProcessor_inputProcessorValue
proc `inputProcessor=`*(t: typedesc[CheatGameInputProcessor], value: SpecialGameInputInterface) =
    CheatGameInputProcessor_inputProcessorSet = true
    CheatGameInputProcessor_inputProcessorValue = value

# Java field initializers run after the base initializer
proc initFieldsCheatGameInputProcessor(this: CheatGameInputProcessor) =
    this.PROCESS_GAME = "processGame"
    
    this.gameKeyFactory = GameKeyFactory.getInstance()
    discard

proc initCheatGameInputProcessor*(this: CheatGameInputProcessor, gameCanvas: AllBinaryGameCanvas) =
        initPlayerGameInput(this, newBasicArrayListD(), newBasicArrayListD(), -1)
        this.initFieldsCheatGameInputProcessor()
        this.gameCanvas = gameCanvas

proc newCheatGameInputProcessor*(gameCanvas: AllBinaryGameCanvas): CheatGameInputProcessor =
    result = CheatGameInputProcessor()
    initCheatGameInputProcessor(result, gameCanvas)

method update*(this: CheatGameInputProcessor) =
        try:
            let gameLayerManager: AllBinaryGameLayerManager = this.gameCanvas.getLayerManager()
            let list: BasicArrayList = this.getGameKeyEventList()
            let size: int32 = list.size()
            block:
                var index: int32 = 0
                while index < size:
                    defer: index = index +% 1
                    let anyType: JObject = list.objectArray[index]
                    let key: int32 = GameKeyEventUtil.getKey(anyType)
                    if key == this.gameKeyFactory.LEVEL_DOWN.getId():
                        CheatGameInputProcessor.inputProcessor.strafeLeft()
                        break
                    elif key == this.gameKeyFactory.LEVEL_UP.getId():
                        CheatGameInputProcessor.inputProcessor.strafeRight()
                        break
                    if key == this.gameKeyFactory.LEFT.getId():
                        CheatGameInputProcessor.inputProcessor.left()
                        break
                    elif key == this.gameKeyFactory.RIGHT.getId():
                        CheatGameInputProcessor.inputProcessor.right()
                        break
                    elif key == this.gameKeyFactory.UP.getId():
                        CheatGameInputProcessor.inputProcessor.up()
                        break
                    elif key == this.gameKeyFactory.DOWN.getId():
                        CheatGameInputProcessor.inputProcessor.down()
                        break
                    elif key == this.gameKeyFactory.KEY_NUM1.getId():
                        CheatGameInputProcessor.inputProcessor.special1(gameLayerManager, GameKeyEvent.NONE)
                        break
                    elif key == this.gameKeyFactory.KEY_NUM3.getId():
                        CheatGameInputProcessor.inputProcessor.special2(gameLayerManager, GameKeyEvent.NONE)
                        break
            list.clear()
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e)

when declared(newCheatGameInputProcessorHook1):
    newCheatGameInputProcessorHook1 = proc (gameCanvas: AllBinaryGameCanvas): PlayerGameInput = newCheatGameInputProcessor(gameCanvas)

