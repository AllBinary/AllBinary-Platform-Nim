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
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule
import org/allbinary/game/displayable/canvas/CommandFormInputProcessor as CommandFormInputProcessorModule
export CommandFormInputProcessorModule
import org/allbinary/game/displayable/canvas/PopupMenuInputProcessor as PopupMenuInputProcessorModule
export PopupMenuInputProcessorModule

type
    PopupCommandFormInputProcessor* = ref object of CommandFormInputProcessor

proc newPopupCommandFormInputProcessor*(gameKeyEventList: BasicArrayList, playerInputId: int32, gameCanvas: MyCanvas, form: ScrollSelectionForm, popupMenuInputProcessor: PopupMenuInputProcessor): PopupCommandFormInputProcessor
proc initPopupCommandFormInputProcessor*(this: PopupCommandFormInputProcessor, gameKeyEventList: BasicArrayList, playerInputId: int32, gameCanvas: MyCanvas, form: ScrollSelectionForm, popupMenuInputProcessor: PopupMenuInputProcessor)
method processInput*(this: PopupCommandFormInputProcessor, key: int32): int32 {.discardable.}
method processMotionInput*(this: PopupCommandFormInputProcessor, motionGestureEvent: MotionGestureEvent)


proc initPopupCommandFormInputProcessor*(this: PopupCommandFormInputProcessor, gameKeyEventList: BasicArrayList, playerInputId: int32, gameCanvas: MyCanvas, form: ScrollSelectionForm, popupMenuInputProcessor: PopupMenuInputProcessor) =
        initCommandFormInputProcessor(this, gameKeyEventList, playerInputId, gameCanvas, form)

proc newPopupCommandFormInputProcessor*(gameKeyEventList: BasicArrayList, playerInputId: int32, gameCanvas: MyCanvas, form: ScrollSelectionForm, popupMenuInputProcessor: PopupMenuInputProcessor): PopupCommandFormInputProcessor =
    result = PopupCommandFormInputProcessor()
    initPopupCommandFormInputProcessor(result, gameKeyEventList, playerInputId, gameCanvas, form, popupMenuInputProcessor)

method processInput*(this: PopupCommandFormInputProcessor, key: int32): int32 {.discardable.} =
        return procCall CommandFormInputProcessor(this).processInput(key)

method processMotionInput*(this: PopupCommandFormInputProcessor, motionGestureEvent: MotionGestureEvent) =
        procCall CommandFormInputProcessor(this).processMotionInput(motionGestureEvent)

when declared(newPopupCommandFormInputProcessorHook5):
    newPopupCommandFormInputProcessorHook5 = proc (gameKeyEventList: BasicArrayList, playerInputId: int32, gameCanvas: MyCanvas, form: ScrollSelectionForm, popupMenuInputProcessor: PopupMenuInputProcessor): CommandFormInputProcessor = newPopupCommandFormInputProcessor(gameKeyEventList, playerInputId, gameCanvas, form, popupMenuInputProcessor)

