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
# package org.allbinary.input.motion.gesture

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/game/input/Input as InputModule
export InputModule

type
    MotionGestureInput* = ref object of Input

proc newMotionGestureInput*(id: int32, name: string): MotionGestureInput
proc initMotionGestureInput*(this: MotionGestureInput, id: int32, name: string)
import org/allbinary/game/input/InputFactory as InputFactoryModule
export InputFactoryModule


proc initMotionGestureInput*(this: MotionGestureInput, id: int32, name: string) =
        initInput(this, id, name)
        let inputFactory: InputFactory = InputFactory.getInstance()
        inputFactory.add(this.getId(), this)

proc newMotionGestureInput*(id: int32, name: string): MotionGestureInput =
    result = MotionGestureInput()
    initMotionGestureInput(result, id, name)

when declared(newMotionGestureInputHook2):
    newMotionGestureInputHook2 = proc (id: int32, name: string): Input = newMotionGestureInput(id, name)

