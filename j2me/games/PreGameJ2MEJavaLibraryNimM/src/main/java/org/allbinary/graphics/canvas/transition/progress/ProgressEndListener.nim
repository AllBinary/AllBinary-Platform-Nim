#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.graphics.canvas.transition.progress

{.warning[UnusedImport]: off.}
import allbinary_java

type
    ProgressEndListener* = ref object of JObject

proc newProgressEndListener*(): ProgressEndListener
method onEndEvent*(this: ProgressEndListener) {.base.}

var ProgressEndListener_instanceValue: ProgressEndListener
var ProgressEndListener_instanceSet = false
proc instance*(t: typedesc[ProgressEndListener]): ProgressEndListener =
    if not ProgressEndListener_instanceSet:
        ProgressEndListener_instanceSet = true
        ProgressEndListener_instanceValue = newProgressEndListener()
    ProgressEndListener_instanceValue

proc initProgressEndListener*(this: ProgressEndListener) =
    discard

proc newProgressEndListener*(): ProgressEndListener =
    result = ProgressEndListener()
    initProgressEndListener(result)

method onEndEvent*(this: ProgressEndListener) {.base.} =
        discard

