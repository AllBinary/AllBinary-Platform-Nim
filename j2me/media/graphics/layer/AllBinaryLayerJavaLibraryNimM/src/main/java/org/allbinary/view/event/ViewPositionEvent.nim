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
# package org.allbinary.view.event

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/logic/util/event/AllBinaryEventObject as AllBinaryEventObjectModule
export AllBinaryEventObjectModule

type
    ViewPositionEvent* = ref object of AllBinaryEventObject

proc newViewPositionEvent*(anyType: JObject): ViewPositionEvent
proc initViewPositionEvent*(this: ViewPositionEvent, anyType: JObject)


proc initViewPositionEvent*(this: ViewPositionEvent, anyType: JObject) =
        initAllBinaryEventObject(this, anyType)

proc newViewPositionEvent*(anyType: JObject): ViewPositionEvent =
    result = ViewPositionEvent()
    initViewPositionEvent(result, anyType)

when declared(newViewPositionEventHook1):
    newViewPositionEventHook1 = proc (anyType: JObject): AllBinaryEventObject = newViewPositionEvent(anyType)

