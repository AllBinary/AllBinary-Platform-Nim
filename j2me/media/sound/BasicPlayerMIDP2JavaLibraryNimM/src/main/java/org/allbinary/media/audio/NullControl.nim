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
# package org.allbinary.media.audio

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/media/Control as ControlModule
export ControlModule

type
    NullControl* = ref object of Control

proc newNullControl*(): NullControl


proc initNullControl*(this: NullControl) =
    discard

proc newNullControl*(): NullControl =
    result = NullControl()
    initNullControl(result)

