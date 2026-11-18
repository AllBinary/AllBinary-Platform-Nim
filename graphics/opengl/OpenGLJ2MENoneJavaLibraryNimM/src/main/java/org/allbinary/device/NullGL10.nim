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
# package org.allbinary.device

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/khronos/opengles/GL10 as GL10Module
export GL10Module

type
    NullGL10* = ref object of GL10

proc newNullGL10*(): NullGL10

var NullGL10_NULL_GL10Value: NullGL10
var NullGL10_NULL_GL10Set = false
proc NULL_GL10Static*(t: typedesc[NullGL10]): NullGL10 =
    if not NullGL10_NULL_GL10Set:
        NullGL10_NULL_GL10Set = true
        NullGL10_NULL_GL10Value = newNullGL10()
    NullGL10_NULL_GL10Value

proc initNullGL10*(this: NullGL10) =
    discard

proc newNullGL10*(): NullGL10 =
    result = NullGL10()
    initNullGL10(result)

