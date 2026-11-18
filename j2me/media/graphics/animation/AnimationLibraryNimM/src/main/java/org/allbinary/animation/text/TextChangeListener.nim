#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
]#
# Generated Code Do Not Modify
# package org.allbinary.animation.text

{.warning[UnusedImport]: off.}
import allbinary_java

type
    TextChangeListener* = ref object of JObject

proc newTextChangeListener*(): TextChangeListener
proc getInstance*(t: typedesc[TextChangeListener]): TextChangeListener {.discardable.}
method onMeasure*(this: TextChangeListener) {.base.}

var TextChangeListener_instanceValue: TextChangeListener
var TextChangeListener_instanceSet = false
proc instance*(t: typedesc[TextChangeListener]): TextChangeListener =
    if not TextChangeListener_instanceSet:
        TextChangeListener_instanceSet = true
        TextChangeListener_instanceValue = newTextChangeListener()
    TextChangeListener_instanceValue

proc initTextChangeListener*(this: TextChangeListener) =
    discard

proc newTextChangeListener*(): TextChangeListener =
    result = TextChangeListener()
    initTextChangeListener(result)

proc getInstance*(t: typedesc[TextChangeListener]): TextChangeListener {.discardable.} =
        return TextChangeListener.instance

method onMeasure*(this: TextChangeListener) {.base.} =
        discard

