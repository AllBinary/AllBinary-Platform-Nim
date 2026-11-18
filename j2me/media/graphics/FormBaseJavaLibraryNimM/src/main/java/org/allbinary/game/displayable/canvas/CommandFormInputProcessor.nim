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
import org/allbinary/graphics/displayable/MyCanvas as MyCanvasModule
export MyCanvasModule
import org/allbinary/graphics/form/ScrollSelectionForm as ScrollSelectionFormModule
export ScrollSelectionFormModule
import org/allbinary/input/motion/gesture/observer/MotionGestureEvent as MotionGestureEventModule
export MotionGestureEventModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/displayable/canvas/BasicMenuInputProcessor as BasicMenuInputProcessorModule
export BasicMenuInputProcessorModule

#In general allow scrolling of the menu and selection the center item
type
    CommandFormInputProcessor* = ref object of BasicMenuInputProcessor
        MOTION_GESTURE_SOURCE_ID*: int32
        CLICK_DELAY*: int32
        clickTimeHelper*: TimeDelayHelper
        DOUBLE_CLICK_DELAY*: int32
        doubleClickTimeHelper*: TimeDelayHelper
        isSingleKeyProcessing*: bool
        form*: ScrollSelectionForm
        hasPressed*: bool
        PROCESS_COMMAND*: string
        NAME_LABEL*: string

proc newCommandFormInputProcessor*(gameKeyEventList: BasicArrayList, playerInputId: int32, gameCanvas: MyCanvas, form: ScrollSelectionForm): CommandFormInputProcessor
proc initCommandFormInputProcessor*(this: CommandFormInputProcessor, gameKeyEventList: BasicArrayList, playerInputId: int32, gameCanvas: MyCanvas, form: ScrollSelectionForm)
method processInput*(this: CommandFormInputProcessor, key: int32): int32 {.base, discardable.}
method processCommand*(this: CommandFormInputProcessor): int32 {.base, discardable.}
method processInputList*(this: CommandFormInputProcessor): int32 {.discardable.}
method processMotionInputs*(this: CommandFormInputProcessor): int32 {.base, discardable.}
method processMotionInput*(this: CommandFormInputProcessor, motionGestureEvent: MotionGestureEvent) {.base.}
method toString*(this: CommandFormInputProcessor): string {.discardable.}
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import javax/microedition/lcdui/Command as CommandModule
export CommandModule
import org/allbinary/game/commands/GameCommandsFactory as GameCommandsFactoryModule
export GameCommandsFactoryModule
import org/allbinary/game/configuration/feature/Features as FeaturesModule
export FeaturesModule
import org/allbinary/game/configuration/feature/InputFeatureFactory as InputFeatureFactoryModule
export InputFeatureFactoryModule
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/game/input/event/GameKeyEventFactory as GameKeyEventFactoryModule
export GameKeyEventFactoryModule
import org/allbinary/game/layer/SWTUtil as SWTUtilModule
export SWTUtilModule
import org/allbinary/graphics/GPoint as GPointModule
export GPointModule
import org/allbinary/graphics/form/CommandCurrentSelectionForm as CommandCurrentSelectionFormModule
export CommandCurrentSelectionFormModule
import org/allbinary/graphics/opengles/OpenGLFeatureFactory as OpenGLFeatureFactoryModule
export OpenGLFeatureFactoryModule
import org/allbinary/input/motion/gesture/MotionGestureInput as MotionGestureInputModule
export MotionGestureInputModule
import org/allbinary/input/motion/gesture/TouchMotionGestureFactory as TouchMotionGestureFactoryModule
export TouchMotionGestureFactoryModule
import org/allbinary/logic/string/StringMaker as StringMakerModule
export StringMakerModule
import org/allbinary/media/audio/PrimaryPlayerQueueFactory as PrimaryPlayerQueueFactoryModule
export PrimaryPlayerQueueFactoryModule
import org/allbinary/media/audio/SelectSound as SelectSoundModule
export SelectSoundModule
import org/allbinary/thread/PrimaryThreadPool as PrimaryThreadPoolModule
export PrimaryThreadPoolModule
import org/allbinary/game/displayable/canvas/CommandRunnable as CommandRunnableModule
export CommandRunnableModule


# Java field initializers run after the base initializer
proc initFieldsCommandFormInputProcessor(this: CommandFormInputProcessor) =
    this.MOTION_GESTURE_SOURCE_ID = GameKeyEventFactory.getInstance().MOTION_GESTURE_SOURCE_ID
    this.CLICK_DELAY = 150
    this.clickTimeHelper = newTimeDelayHelper(this.CLICK_DELAY)
    this.DOUBLE_CLICK_DELAY = 1200
    this.doubleClickTimeHelper = newTimeDelayHelper(this.DOUBLE_CLICK_DELAY)
    this.isSingleKeyProcessing = InputFeatureFactory.getInstance().isSingleKeyProcessing()
    
    this.hasPressed = false
    this.PROCESS_COMMAND = "processCommand"
    this.NAME_LABEL = " ScrollSelectionForm: "
    discard

proc initCommandFormInputProcessor*(this: CommandFormInputProcessor, gameKeyEventList: BasicArrayList, playerInputId: int32, gameCanvas: MyCanvas, form: ScrollSelectionForm) =
        initBasicMenuInputProcessor(this, gameKeyEventList, playerInputId, gameCanvas)
        this.initFieldsCommandFormInputProcessor()
        this.form = form

proc newCommandFormInputProcessor*(gameKeyEventList: BasicArrayList, playerInputId: int32, gameCanvas: MyCanvas, form: ScrollSelectionForm): CommandFormInputProcessor =
    result = CommandFormInputProcessor()
    initCommandFormInputProcessor(result, gameKeyEventList, playerInputId, gameCanvas, form)

method processInput*(this: CommandFormInputProcessor, key: int32): int32 {.base, discardable.} =
        if key == Canvas.LEFT or key == Canvas.RIGHT or key == Canvas.UP or key == Canvas.DOWN:
            PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
            this.form.processInputKey(key)
            return 1
        elif key == Canvas.FIRE:
            PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
            return this.processCommand()
        return 0

method processCommand*(this: CommandFormInputProcessor): int32 {.base, discardable.} =
        let commandCurrentSelectionForm: CommandCurrentSelectionForm = CommandCurrentSelectionForm(JObject(this.form))
        let command: Command = commandCurrentSelectionForm.getSelectedCommand()
        this.logUtil.putF(command.toString(), this, this.PROCESS_COMMAND)
        let features: Features = Features.getInstance()
        let openGLFeatureFactory: OpenGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        if SWTUtil.isSWT and features.isFeature(openGLFeatureFactory.OPENGL) and command != GameCommandsFactory.getInstance().EXIT_COMMAND:
            newCommandRunnable(this, command).run()
        else:
            PrimaryThreadPool.getInstance().runTask(newCommandRunnable(this, command))
        if command == GameCommandsFactory.getInstance().QUIT_COMMAND:
            return -1
        else:
            return 1

method processInputList*(this: CommandFormInputProcessor): int32 {.discardable.} =
        try:
            let motionInputsIndex: int32 = this.processMotionInputs()
            let list: BasicArrayList = this.getGameKeyEventList()
            let size: int32 = list.size()
            var key: int32 = 0
            var gameKeyEvent: GameKeyEvent = nil
            block:
                var index: int32 = 0
                while index < size:
                    defer: index = index +% 1
                    gameKeyEvent = GameKeyEvent(JObject(list.objectArray[index]))
                    key = gameKeyEvent.getKey()
                    if gameKeyEvent.getSourceId() != this.MOTION_GESTURE_SOURCE_ID:
                        if this.processInput(key) == 1:
                            break
            this.clear()
            if size > 0 or motionInputsIndex >= 0:
                return 1
            else:
                return -1
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.PROCESS_INPUT, e)
            return -1

method processMotionInputs*(this: CommandFormInputProcessor): int32 {.base, discardable.} =
        let lastIndex: int32 = this.motionGestureEventList.size() -% 1
        if lastIndex >= 0:
            let motionGestureEvent: MotionGestureEvent = MotionGestureEvent(JObject(this.motionGestureEventList.objectArray[lastIndex]))
            this.processMotionInput(motionGestureEvent)
        this.motionGestureEventList.clear()
        return lastIndex

method processMotionInput*(this: CommandFormInputProcessor, motionGestureEvent: MotionGestureEvent) {.base.} =
        let touchMotionGestureFactory: TouchMotionGestureFactory = TouchMotionGestureFactory.getInstance()
        let motionGestureInput: MotionGestureInput = motionGestureEvent.getMotionGesture()
        if motionGestureInput == touchMotionGestureFactory.RELEASED:
            let point: GPoint = motionGestureEvent.getCurrentPoint()
            if this.form.isInForm(point):
                let index: int32 = this.form.getSelectedIndexForPoint(point)
                if index != -1:
                    PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
                    if index == this.form.getSelectedIndex():
                        if this.clickTimeHelper.isTimeTNT():
                            this.processCommand()
                    else:
                        this.form.setSelectedIndex(index)
                else:
                    discard
            if this.hasPressed:
                if (not this.doubleClickTimeHelper.isTimeTNT()):
                    this.logUtil.putF("Double Press", this, this.gameInputStrings.PROCESS_MOTION_INPUT)
                    this.processCommand()
                this.doubleClickTimeHelper.delay = this.DOUBLE_CLICK_DELAY
                this.doubleClickTimeHelper.setStartTimeTNT()
            this.hasPressed = false
        elif motionGestureInput == touchMotionGestureFactory.PRESSED:
            this.doubleClickTimeHelper.delay = 0
            this.hasPressed = true

method toString*(this: CommandFormInputProcessor): string {.discardable.} =
        return newStringMaker().append(procCall BasicMenuInputProcessor(this).toString()).append(this.NAME_LABEL).append(this.form.toString()).toString()

when declared(newCommandFormInputProcessorHook4):
    newCommandFormInputProcessorHook4 = proc (gameKeyEventList: BasicArrayList, playerInputId: int32, gameCanvas: MyCanvas, form: ScrollSelectionForm): BasicMenuInputProcessor = newCommandFormInputProcessor(gameKeyEventList, playerInputId, gameCanvas, form)

