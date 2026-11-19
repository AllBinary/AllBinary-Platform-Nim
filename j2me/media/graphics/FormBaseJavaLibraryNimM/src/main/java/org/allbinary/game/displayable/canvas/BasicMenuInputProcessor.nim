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
import javax/microedition/lcdui/Canvas as CanvasModule
export CanvasModule
import org/allbinary/game/input/PlayerGameInput as PlayerGameInputModule
export PlayerGameInputModule
import org/allbinary/graphics/displayable/MyCanvas as MyCanvasModule
export MyCanvasModule
import org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener as BaseMotionGestureEventListenerModule
export BaseMotionGestureEventListenerModule
import org/allbinary/input/motion/gesture/observer/MotionGestureEvent as MotionGestureEventModule
export MotionGestureEventModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    BasicMenuInputProcessor* = ref object of PlayerGameInput
        motionGestureEventList*: BasicArrayList
        canvas*: Canvas

converter jAsBaseMotionGestureEventListener*(value: BasicMenuInputProcessor): BaseMotionGestureEventListener = cast[BaseMotionGestureEventListener](value)
converter jAsEventListenerInterface*(value: BasicMenuInputProcessor): EventListenerInterface = cast[EventListenerInterface](value)
proc newBasicMenuInputProcessor*(gameKeyEventList: BasicArrayList, playerInputId: int32, gameCanvas: Canvas): BasicMenuInputProcessor
proc initBasicMenuInputProcessor*(this: BasicMenuInputProcessor, gameKeyEventList: BasicArrayList, playerInputId: int32, gameCanvas: Canvas)
method onMotionGestureEvent*(this: BasicMenuInputProcessor, motionGestureEvent: MotionGestureEvent)
method onScrolledMotionGestureEvent*(this: BasicMenuInputProcessor, motionGestureEvent: MotionGestureEvent)
method setCanvas*(this: BasicMenuInputProcessor, canvas: MyCanvas) {.base.}
method getCanvas*(this: BasicMenuInputProcessor): MyCanvas {.base, discardable.}
method processInputList*(this: BasicMenuInputProcessor): int32 {.base, discardable.}
import javax/microedition/lcdui/NullCanvas as NullCanvasModule
export NullCanvasModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsBasicMenuInputProcessor(this: BasicMenuInputProcessor) =
    this.motionGestureEventList = newBasicArrayListD()
    this.canvas = NullCanvas.NULL_CANVASStatic
    discard

proc initBasicMenuInputProcessor*(this: BasicMenuInputProcessor, gameKeyEventList: BasicArrayList, playerInputId: int32, gameCanvas: Canvas) =
        initPlayerGameInput(this, gameKeyEventList, newBasicArrayListD(), playerInputId)
        this.initFieldsBasicMenuInputProcessor()
        this.canvas = gameCanvas

proc newBasicMenuInputProcessor*(gameKeyEventList: BasicArrayList, playerInputId: int32, gameCanvas: Canvas): BasicMenuInputProcessor =
    result = BasicMenuInputProcessor()
    initBasicMenuInputProcessor(result, gameKeyEventList, playerInputId, gameCanvas)

method onMotionGestureEvent*(this: BasicMenuInputProcessor, motionGestureEvent: MotionGestureEvent) =
        this.motionGestureEventList.add(motionGestureEvent)

method onScrolledMotionGestureEvent*(this: BasicMenuInputProcessor, motionGestureEvent: MotionGestureEvent) =
        discard

method setCanvas*(this: BasicMenuInputProcessor, canvas: MyCanvas) {.base.} =
        this.canvas = canvas

method getCanvas*(this: BasicMenuInputProcessor): MyCanvas {.base, discardable.} =
        return MyCanvas(JObject(this.canvas))

method processInputList*(this: BasicMenuInputProcessor): int32 {.base, discardable.} =
        return -1

when declared(newBasicMenuInputProcessorHook3):
    newBasicMenuInputProcessorHook3 = proc (gameKeyEventList: BasicArrayList, playerInputId: int32, gameCanvas: Canvas): PlayerGameInput = newBasicMenuInputProcessor(gameKeyEventList, playerInputId, gameCanvas)

