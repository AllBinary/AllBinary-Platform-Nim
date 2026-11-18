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
import org/allbinary/input/motion/button/TouchButtonInput as TouchButtonInputModule
export TouchButtonInputModule

type
    TouchButtonVisitor* = ref object of JObject

proc newTouchButtonVisitor*(): TouchButtonVisitor
method process*(this: TouchButtonVisitor, touchButtonInput: TouchButtonInput, string: string) {.base.}


proc initTouchButtonVisitor*(this: TouchButtonVisitor) =
    discard

proc newTouchButtonVisitor*(): TouchButtonVisitor =
    result = TouchButtonVisitor()
    initTouchButtonVisitor(result)

method process*(this: TouchButtonVisitor, touchButtonInput: TouchButtonInput, string: string) {.base.} =
        discard

