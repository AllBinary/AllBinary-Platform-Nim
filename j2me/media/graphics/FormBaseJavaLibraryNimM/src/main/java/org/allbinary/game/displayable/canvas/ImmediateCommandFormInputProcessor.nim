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
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/graphics/form/ScrollSelectionForm as ScrollSelectionFormModule
export ScrollSelectionFormModule
import org/allbinary/input/motion/gesture/observer/MotionGestureEvent as MotionGestureEventModule
export MotionGestureEventModule
import org/allbinary/time/TimeDelayHelper as TimeDelayHelperModule
export TimeDelayHelperModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/displayable/canvas/CommandFormInputProcessor as CommandFormInputProcessorModule
export CommandFormInputProcessorModule
import org/allbinary/game/displayable/canvas/GameCommandCanvas as GameCommandCanvasModule
export GameCommandCanvasModule

type
    ImmediateCommandFormInputProcessor* = ref object of CommandFormInputProcessor
        timeHelper*: TimeDelayHelper
        gameCommandCanvas*: GameCommandCanvas

proc newImmediateCommandFormInputProcessor*(gameKeyEventList: BasicArrayList, playerInputId: int32, gameCommandCanvas: GameCommandCanvas, form: ScrollSelectionForm): ImmediateCommandFormInputProcessor
proc initImmediateCommandFormInputProcessor*(this: ImmediateCommandFormInputProcessor, gameKeyEventList: BasicArrayList, playerInputId: int32, gameCommandCanvas: GameCommandCanvas, form: ScrollSelectionForm)
method onPressGameKeyEvent*(this: ImmediateCommandFormInputProcessor, gameKeyEvent: GameKeyEvent)
method onDownGameKeyEvent*(this: ImmediateCommandFormInputProcessor, gameKeyEvent: GameKeyEvent)
method onUpGameKeyEvent*(this: ImmediateCommandFormInputProcessor, gameKeyEvent: GameKeyEvent)
method onMotionGestureEvent*(this: ImmediateCommandFormInputProcessor, motionGestureEvent: MotionGestureEvent)


# Java field initializers run after the base initializer
proc initFieldsImmediateCommandFormInputProcessor(this: ImmediateCommandFormInputProcessor) =
    this.timeHelper = newTimeDelayHelper(25)
    
    discard

proc initImmediateCommandFormInputProcessor*(this: ImmediateCommandFormInputProcessor, gameKeyEventList: BasicArrayList, playerInputId: int32, gameCommandCanvas: GameCommandCanvas, form: ScrollSelectionForm) =
        initCommandFormInputProcessor(this, gameKeyEventList, playerInputId, gameCommandCanvas, form)
        this.initFieldsImmediateCommandFormInputProcessor()
        this.gameCommandCanvas = gameCommandCanvas

proc newImmediateCommandFormInputProcessor*(gameKeyEventList: BasicArrayList, playerInputId: int32, gameCommandCanvas: GameCommandCanvas, form: ScrollSelectionForm): ImmediateCommandFormInputProcessor =
    result = ImmediateCommandFormInputProcessor()
    initImmediateCommandFormInputProcessor(result, gameKeyEventList, playerInputId, gameCommandCanvas, form)

method onPressGameKeyEvent*(this: ImmediateCommandFormInputProcessor, gameKeyEvent: GameKeyEvent) =
        try:
            procCall CommandFormInputProcessor(this).onPressGameKeyEvent(gameKeyEvent)
            if this.timeHelper.isTimeTNT():
                this.processInputList()
                this.gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas())
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ON_PRESS_GAME_KEY, e)

method onDownGameKeyEvent*(this: ImmediateCommandFormInputProcessor, gameKeyEvent: GameKeyEvent) =
        try:
            procCall CommandFormInputProcessor(this).onDownGameKeyEvent(gameKeyEvent)
            if this.timeHelper.isTimeTNT():
                this.processInputList()
                this.gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas())
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ON_DOWN_GAME_KEY, e)

method onUpGameKeyEvent*(this: ImmediateCommandFormInputProcessor, gameKeyEvent: GameKeyEvent) =
        try:
            procCall CommandFormInputProcessor(this).onUpGameKeyEvent(gameKeyEvent)
            if this.timeHelper.isTimeTNT():
                this.processInputList()
                this.gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas())
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ON_UP_GAME_KEY, e)

method onMotionGestureEvent*(this: ImmediateCommandFormInputProcessor, motionGestureEvent: MotionGestureEvent) =
        try:
            procCall CommandFormInputProcessor(this).onMotionGestureEvent(motionGestureEvent)
            if this.timeHelper.isTimeTNT():
                this.processInputList()
                this.gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas())
        except CatchableError as jcaught:
            let e = jToException(jcaught)
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "onMotionGestureEvent", e)

when declared(newImmediateCommandFormInputProcessorHook4):
    newImmediateCommandFormInputProcessorHook4 = proc (gameKeyEventList: BasicArrayList, playerInputId: int32, gameCommandCanvas: GameCommandCanvas, form: ScrollSelectionForm): CommandFormInputProcessor = newImmediateCommandFormInputProcessor(gameKeyEventList, playerInputId, gameCommandCanvas, form)

