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
# package org.allbinary.input

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/android/input/motion/AnalogLocationInputProcessor as AnalogLocationInputProcessorModule
export AnalogLocationInputProcessorModule
import org/allbinary/game/input/GameInputProcessor as GameInputProcessorModule
export GameInputProcessorModule
import org/allbinary/game/input/GameKeyEventSourceInterface as GameKeyEventSourceInterfaceModule
export GameKeyEventSourceInterfaceModule
import org/allbinary/game/input/GameKeyFactory as GameKeyFactoryModule
export GameKeyFactoryModule
import org/allbinary/game/input/analog/AnalogLocationInput as AnalogLocationInputModule
export AnalogLocationInputModule
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/layer/AllBinaryLayerManager as AllBinaryLayerManagerModule
export AllBinaryLayerManagerModule
import org/allbinary/logic/communication/log/LogUtil as LogUtilModule
export LogUtilModule

type
    DirectionalAnalogLocationInputProcessor* = ref object of AnalogLocationInputProcessor
        logUtil*: LogUtil
        inputProcessorArray*: JArray[GameInputProcessor]
        gameKeyFactory*: GameKeyFactory
        leftGameKeyEvent*: GameKeyEvent
        rightGameKeyEvent*: GameKeyEvent
        upGameKeyEvent*: GameKeyEvent
        downGameKeyEvent*: GameKeyEvent
        leftTriggerGameKeyEvent*: GameKeyEvent
        rightTriggerGameKeyEvent*: GameKeyEvent

converter jAsGameKeyEventSourceInterface*(value: DirectionalAnalogLocationInputProcessor): GameKeyEventSourceInterface = cast[GameKeyEventSourceInterface](value)
proc newDirectionalAnalogLocationInputProcessor*(inputProcessorArray: JArray[GameInputProcessor]): DirectionalAnalogLocationInputProcessor
proc initDirectionalAnalogLocationInputProcessor*(this: DirectionalAnalogLocationInputProcessor, inputProcessorArray: JArray[GameInputProcessor])
method process*(this: DirectionalAnalogLocationInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, analogLocationInput: AnalogLocationInput)
method getSourceId*(this: DirectionalAnalogLocationInputProcessor): int32 {.discardable.}
import org/allbinary/game/input/event/GameKeyEventFactory as GameKeyEventFactoryModule
export GameKeyEventFactoryModule
import org/allbinary/graphics/CustomGPoint as CustomGPointModule
export CustomGPointModule
import org/allbinary/string/CommonStrings as CommonStringsModule
export CommonStringsModule


# Java field initializers run after the base initializer
proc initFieldsDirectionalAnalogLocationInputProcessor(this: DirectionalAnalogLocationInputProcessor) =
    this.logUtil = LogUtil.getInstance()
    
    this.gameKeyFactory = GameKeyFactory.getInstance()
    this.leftGameKeyEvent = GameKeyEvent.NONE
    this.rightGameKeyEvent = GameKeyEvent.NONE
    this.upGameKeyEvent = GameKeyEvent.NONE
    this.downGameKeyEvent = GameKeyEvent.NONE
    this.leftTriggerGameKeyEvent = GameKeyEvent.NONE
    this.rightTriggerGameKeyEvent = GameKeyEvent.NONE
    discard

proc initDirectionalAnalogLocationInputProcessor*(this: DirectionalAnalogLocationInputProcessor, inputProcessorArray: JArray[GameInputProcessor]) =
        initAnalogLocationInputProcessor(this)
        this.initFieldsDirectionalAnalogLocationInputProcessor()
        this.inputProcessorArray = inputProcessorArray
        try:
            this.leftGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.LEFT)
            this.rightGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.RIGHT)
            this.upGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.UP)
            this.downGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.DOWN)
            this.leftTriggerGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.KEY_NUM0)
            this.rightTriggerGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.KEY_NUM5)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)

proc newDirectionalAnalogLocationInputProcessor*(inputProcessorArray: JArray[GameInputProcessor]): DirectionalAnalogLocationInputProcessor =
    result = DirectionalAnalogLocationInputProcessor()
    initDirectionalAnalogLocationInputProcessor(result, inputProcessorArray)

method process*(this: DirectionalAnalogLocationInputProcessor, allbinaryLayerManager: AllBinaryLayerManager, analogLocationInput: AnalogLocationInput) =
        try:
            var customGPoint: CustomGPoint = nil
            customGPoint = analogLocationInput.getCustomGPoint()
            var x: int32 = customGPoint.getX()
            var y: int32 = customGPoint.getY()
            var leftTrigger: int32 = analogLocationInput.getLeftTrigger()
            var rightTrigger: int32 = analogLocationInput.getRightTrigger()
            if x < 0:
                this.inputProcessorArray[this.leftGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, this.leftGameKeyEvent, x)
            elif x > 0:
                this.inputProcessorArray[this.rightGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, this.rightGameKeyEvent, x)
            if y < 0:
                this.inputProcessorArray[this.downGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, this.downGameKeyEvent, y)
            elif y > 0:
                this.inputProcessorArray[this.upGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, this.upGameKeyEvent, y)
            if leftTrigger > 0:
                this.inputProcessorArray[this.leftTriggerGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, this.leftTriggerGameKeyEvent, leftTrigger)
            if rightTrigger > 0:
                this.inputProcessorArray[this.rightTriggerGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, this.rightTriggerGameKeyEvent, rightTrigger)
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            let commonStrings: CommonStrings = CommonStrings.getInstance()
            this.logUtil.put("Unable to process analog input", this, commonStrings.PROCESS, e)

method getSourceId*(this: DirectionalAnalogLocationInputProcessor): int32 {.discardable.} =
        return 0

when declared(newDirectionalAnalogLocationInputProcessorHook1):
    newDirectionalAnalogLocationInputProcessorHook1 = proc (inputProcessorArray: JArray[GameInputProcessor]): AnalogLocationInputProcessor = newDirectionalAnalogLocationInputProcessor(inputProcessorArray)

