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
# package org.allbinary.game.input

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import org/allbinary/game/layer/AllBinaryGameLayer as AllBinaryGameLayerModule
export AllBinaryGameLayerModule
import org/allbinary/graphics/paint/PaintableInterface as PaintableInterfaceModule
export PaintableInterfaceModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/input/GameInputInterface as GameInputInterfaceModule
export GameInputInterfaceModule
import org/allbinary/game/input/GameInputProcessor as GameInputProcessorModule
export GameInputProcessorModule
import org/allbinary/game/input/TestInputInterface as TestInputInterfaceModule
export TestInputInterfaceModule

type
    TestingInputSingleton* = ref object of AllBinaryGameLayer
        inputProcessorArray*: JArray[GameInputProcessor]
        testInputPaintable*: PaintableInterface

converter jAsGameInputInterface*(value: TestingInputSingleton): GameInputInterface = cast[GameInputInterface](value)
proc newTestingInputSingleton*(): TestingInputSingleton
proc initTestingInputSingleton*(this: TestingInputSingleton)
proc getInstance*(t: typedesc[TestingInputSingleton]): TestingInputSingleton {.discardable.}
method initInputProcessors*(this: TestingInputSingleton)
method initInputProcessorsForTestInput*(this: TestingInputSingleton, aTestInputInterface: TestInputInterface) {.base.}
method processInputList*(this: TestingInputSingleton, allbinaryLayerManager: AllBinaryLayerManager, list: BasicArrayList) {.base.}
method processInput*(this: TestingInputSingleton, allbinaryLayerManager: AllBinaryLayerManager)
method paint*(this: TestingInputSingleton, graphics: Graphics)
method implmentsGameInputInterface*(this: TestingInputSingleton): bool {.discardable.}
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/graphics/RectangleFactory as RectangleFactoryModule
export RectangleFactoryModule
import org/allbinary/graphics/paint/NullPaintable as NullPaintableModule
export NullPaintableModule
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/view/ViewPosition as ViewPositionModule
export ViewPositionModule
import org/allbinary/game/input/InputFactory as InputFactoryModule
export InputFactoryModule
import org/allbinary/game/input/GameInputProcessorUtil as GameInputProcessorUtilModule
export GameInputProcessorUtilModule

var TestingInputSingleton_instanceValue: TestingInputSingleton
var TestingInputSingleton_instanceSet = false
proc instance*(t: typedesc[TestingInputSingleton]): TestingInputSingleton =
    if not TestingInputSingleton_instanceSet:
        TestingInputSingleton_instanceSet = true
        TestingInputSingleton_instanceValue = newTestingInputSingleton()
    TestingInputSingleton_instanceValue

# Java field initializers run after the base initializer
proc initFieldsTestingInputSingleton(this: TestingInputSingleton) =
    this.inputProcessorArray = newJArray[GameInputProcessor](InputFactory.getInstance().MAX, default(GameInputProcessor))
    this.testInputPaintable = NullPaintable.getInstance()
    discard

proc getInstance*(t: typedesc[TestingInputSingleton]): TestingInputSingleton {.discardable.} =
        return TestingInputSingleton.instance

proc initTestingInputSingleton*(this: TestingInputSingleton) =
        initAllBinaryGameLayer(this, StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPosition.getInstanceD())
        this.initFieldsTestingInputSingleton()
        GameInputProcessorUtil.init(this.inputProcessorArray)

proc newTestingInputSingleton*(): TestingInputSingleton =
    result = TestingInputSingleton()
    initTestingInputSingleton(result)

method initInputProcessors*(this: TestingInputSingleton) =
        discard

method initInputProcessorsForTestInput*(this: TestingInputSingleton, aTestInputInterface: TestInputInterface) {.base.} =
        let testInputInterface: TestInputInterface = aTestInputInterface
        this.testInputPaintable = testInputInterface
        this.inputProcessorArray[Canvas.UP] = newGameInputProcessor() #[ Java anonymous class body: implement it as a named subclass
            
method processEvent*(this: TestingInputSingleton, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) {.base.} =
                testInputInterface.up() ]#
        this.inputProcessorArray[Canvas.DOWN] = newGameInputProcessor() #[ Java anonymous class body: implement it as a named subclass
            
method processEvent*(this: TestingInputSingleton, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) {.base.} =
                testInputInterface.down() ]#
        this.inputProcessorArray[Canvas.LEFT] = newGameInputProcessor() #[ Java anonymous class body: implement it as a named subclass
            
method processEvent*(this: TestingInputSingleton, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) {.base.} =
                testInputInterface.left() ]#
        this.inputProcessorArray[Canvas.RIGHT] = newGameInputProcessor() #[ Java anonymous class body: implement it as a named subclass
            
method processEvent*(this: TestingInputSingleton, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) {.base.} =
                testInputInterface.right() ]#
        this.inputProcessorArray[Canvas.KEY_NUM7] = newGameInputProcessor() #[ Java anonymous class body: implement it as a named subclass
            
method processEvent*(this: TestingInputSingleton, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) {.base.} =
                testInputInterface.strafeLeft() ]#
        this.inputProcessorArray[Canvas.KEY_NUM9] = newGameInputProcessor() #[ Java anonymous class body: implement it as a named subclass
            
method processEvent*(this: TestingInputSingleton, allbinaryLayerManager: AllBinaryLayerManager, gameKeyEvent: GameKeyEvent) {.base.} =
                testInputInterface.strafeRight() ]#
        GameInputProcessorUtil.init(this.inputProcessorArray)

method processInputList*(this: TestingInputSingleton, allbinaryLayerManager: AllBinaryLayerManager, list: BasicArrayList) {.base.} =
        var key: int32 = 0
        var gameKeyEvent: GameKeyEvent = nil
        let size: int32 = list.size()
        block:
            var index: int32 = 0
            while index < size:
                defer: index = index +% 1
                gameKeyEvent = (GameKeyEvent(JObject(list.objectArray[index])))
                key = gameKeyEvent.getKey()
                this.inputProcessorArray[key].processEvent(allbinaryLayerManager, GameKeyEvent.NONE)

method processInput*(this: TestingInputSingleton, allbinaryLayerManager: AllBinaryLayerManager) =
        this.processInputList(allbinaryLayerManager, this.getGameKeyEventList())
        this.getGameKeyEventList().clear()

method paint*(this: TestingInputSingleton, graphics: Graphics) =
        this.testInputPaintable.paint(graphics)

method implmentsGameInputInterface*(this: TestingInputSingleton): bool {.discardable.} =
        return true

when declared(newTestingInputSingletonHook0):
    newTestingInputSingletonHook0 = proc (): AllBinaryGameLayer = newTestingInputSingleton()

