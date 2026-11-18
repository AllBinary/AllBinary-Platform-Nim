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
import org/allbinary/input/motion/gesture/observer/MotionGestureEvent as MotionGestureEventModule
export MotionGestureEventModule
import org/allbinary/game/displayable/canvas/BasicMenuInputProcessor as BasicMenuInputProcessorModule
export BasicMenuInputProcessorModule

type
    NoMenuInputProcessor* = ref object of BasicMenuInputProcessor

proc newNoMenuInputProcessor*(): NoMenuInputProcessor
proc initNoMenuInputProcessor*(this: NoMenuInputProcessor)
proc getInstance*(t: typedesc[NoMenuInputProcessor]): NoMenuInputProcessor {.discardable.}
method onDownGameKeyEvent*(this: NoMenuInputProcessor, gameKeyEvent: GameKeyEvent)
method onUpGameKeyEvent*(this: NoMenuInputProcessor, gameKeyEvent: GameKeyEvent)
method onMotionGestureEvent*(this: NoMenuInputProcessor, motionGestureEvent: MotionGestureEvent)
import javax/microedition/lcdui/NullCanvas as NullCanvasModule
export NullCanvasModule
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule

var NoMenuInputProcessor_SINGLETONValue: NoMenuInputProcessor
var NoMenuInputProcessor_SINGLETONSet = false
proc SINGLETON*(t: typedesc[NoMenuInputProcessor]): NoMenuInputProcessor =
    if not NoMenuInputProcessor_SINGLETONSet:
        NoMenuInputProcessor_SINGLETONSet = true
        NoMenuInputProcessor_SINGLETONValue = newNoMenuInputProcessor()
    NoMenuInputProcessor_SINGLETONValue

proc getInstance*(t: typedesc[NoMenuInputProcessor]): NoMenuInputProcessor {.discardable.} =
        return NoMenuInputProcessor.SINGLETON

proc initNoMenuInputProcessor*(this: NoMenuInputProcessor) =
        initBasicMenuInputProcessor(this, BasicArrayListUtil.getInstance().getImmutableInstance(), -1, NullCanvas.NULL_CANVASStatic)

proc newNoMenuInputProcessor*(): NoMenuInputProcessor =
    result = NoMenuInputProcessor()
    initNoMenuInputProcessor(result)

method onDownGameKeyEvent*(this: NoMenuInputProcessor, gameKeyEvent: GameKeyEvent) =
        discard

method onUpGameKeyEvent*(this: NoMenuInputProcessor, gameKeyEvent: GameKeyEvent) =
        discard

method onMotionGestureEvent*(this: NoMenuInputProcessor, motionGestureEvent: MotionGestureEvent) =
        discard

when declared(newNoMenuInputProcessorHook0):
    newNoMenuInputProcessorHook0 = proc (): BasicMenuInputProcessor = newNoMenuInputProcessor()

