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
# package org.allbinary.graphics.displayable.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule

type
    DisplayChangeEvent* = ref object of AllBinaryEventObject

proc newDisplayChangeEvent*(anyType: JObject): DisplayChangeEvent
proc initDisplayChangeEvent*(this: DisplayChangeEvent, anyType: JObject)


proc initDisplayChangeEvent*(this: DisplayChangeEvent, anyType: JObject) =
        initAllBinaryEventObject(this, anyType)

proc newDisplayChangeEvent*(anyType: JObject): DisplayChangeEvent =
    result = DisplayChangeEvent()
    initDisplayChangeEvent(result, anyType)

when declared(newDisplayChangeEventHook1):
    newDisplayChangeEventHook1 = proc (anyType: JObject): AllBinaryEventObject = newDisplayChangeEvent(anyType)

