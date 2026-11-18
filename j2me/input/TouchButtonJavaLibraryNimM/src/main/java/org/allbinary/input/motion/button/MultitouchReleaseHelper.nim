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
# package org.allbinary.input.motion.button

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/input/motion/button/ReleaseHelper as ReleaseHelperModule
export ReleaseHelperModule
import org/allbinary/input/motion/button/TouchButtonRecognizer as TouchButtonRecognizerModule
export TouchButtonRecognizerModule
import org/allbinary/input/motion/button/TouchButtonInput as TouchButtonInputModule
export TouchButtonInputModule

type
    MultitouchReleaseHelper* = ref object of ReleaseHelper

proc newMultitouchReleaseHelper*(touchButtonRecognizer: TouchButtonRecognizer): MultitouchReleaseHelper
proc initMultitouchReleaseHelper*(this: MultitouchReleaseHelper, touchButtonRecognizer: TouchButtonRecognizer)
method release*(this: MultitouchReleaseHelper, touchButtonInput: TouchButtonInput, deviceId: int32)
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule
import org/allbinary/input/motion/button/CancelTouchButtonInputFactory as CancelTouchButtonInputFactoryModule
export CancelTouchButtonInputFactoryModule


proc initMultitouchReleaseHelper*(this: MultitouchReleaseHelper, touchButtonRecognizer: TouchButtonRecognizer) =
        initReleaseHelper(this, touchButtonRecognizer)

proc newMultitouchReleaseHelper*(touchButtonRecognizer: TouchButtonRecognizer): MultitouchReleaseHelper =
    result = MultitouchReleaseHelper()
    initMultitouchReleaseHelper(result, touchButtonRecognizer)

method release*(this: MultitouchReleaseHelper, touchButtonInput: TouchButtonInput, deviceId: int32) =
        let cancelTouchButtonInput: TouchButtonInput = CancelTouchButtonInputFactory.getInstance().getCancel(touchButtonInput)
        var nextTouchButtonInput: TouchButtonInput = nil
        var gameKeyEvent: GameKeyEvent = nil
        block:
            var index: int32 = this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.size() -% 1
            while index >= 0:
                defer: index = index -% 1
                nextTouchButtonInput = this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.get(index)
                if cancelTouchButtonInput == nextTouchButtonInput:
                    gameKeyEvent = nextTouchButtonInput.getGameKeyEvent()
                    this.touchButtonRecognizer.upGameKeyEventHandler.fireEvent(gameKeyEvent)
                    this.touchButtonRecognizer.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
                    this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.removeAt(index)

when declared(newMultitouchReleaseHelperHook1):
    newMultitouchReleaseHelperHook1 = proc (touchButtonRecognizer: TouchButtonRecognizer): ReleaseHelper = newMultitouchReleaseHelper(touchButtonRecognizer)

