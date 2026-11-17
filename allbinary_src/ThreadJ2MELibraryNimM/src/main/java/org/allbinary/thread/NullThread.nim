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
# package org.allbinary.thread

{.warning[UnusedImport]: off.}
import allbinary_java
import java/lang/Thread as ThreadModule
export ThreadModule

type
    NullThread* = ref object of JObject

proc newNullThread*(): NullThread

var NullThread_NULL_THREADValue: JThread
var NullThread_NULL_THREADSet = false
proc NULL_THREADStatic*(t: typedesc[NullThread]): JThread =
    if not NullThread_NULL_THREADSet:
        NullThread_NULL_THREADSet = true
        NullThread_NULL_THREADValue = newJThread()
    NullThread_NULL_THREADValue

proc initNullThread*(this: NullThread) =
    discard

proc newNullThread*(): NullThread =
    result = NullThread()
    initNullThread(result)

