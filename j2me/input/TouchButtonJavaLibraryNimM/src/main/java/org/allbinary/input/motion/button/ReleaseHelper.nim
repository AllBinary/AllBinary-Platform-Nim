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
import org/allbinary/input/motion/button/TouchButtonRecognizer as TouchButtonRecognizerModule
export TouchButtonRecognizerModule
import org/allbinary/input/motion/button/TouchButtonInput as TouchButtonInputModule
export TouchButtonInputModule

type
    ReleaseHelper* = ref object of JObject
        touchButtonRecognizer*: TouchButtonRecognizer

proc newReleaseHelper*(touchButtonRecognizer: TouchButtonRecognizer): ReleaseHelper
proc initReleaseHelper*(this: ReleaseHelper, touchButtonRecognizer: TouchButtonRecognizer)
method release*(this: ReleaseHelper, touchButtonInput: TouchButtonInput, deviceId: int32) {.base.}
import org/allbinary/game/input/event/GameKeyEvent as GameKeyEventModule
export GameKeyEventModule


# Java field initializers run after the base initializer
proc initFieldsReleaseHelper(this: ReleaseHelper) =
    
    discard

proc initReleaseHelper*(this: ReleaseHelper, touchButtonRecognizer: TouchButtonRecognizer) =
        this.initFieldsReleaseHelper()
        this.touchButtonRecognizer = touchButtonRecognizer

proc newReleaseHelper*(touchButtonRecognizer: TouchButtonRecognizer): ReleaseHelper =
    result = ReleaseHelper()
    initReleaseHelper(result, touchButtonRecognizer)

method release*(this: ReleaseHelper, touchButtonInput: TouchButtonInput, deviceId: int32) {.base.} =
        var nextTouchButtonInput: TouchButtonInput = nil
        var gameKeyEvent: GameKeyEvent = nil
        block:
            var index: int32 = this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.size() -% 1
            while index >= 0:
                defer: index = index -% 1
                nextTouchButtonInput = this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.get(index)
                gameKeyEvent = nextTouchButtonInput.getGameKeyEvent()
                this.touchButtonRecognizer.upGameKeyEventHandler.fireEvent(gameKeyEvent)
                this.touchButtonRecognizer.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
                this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.removeAt(index)

