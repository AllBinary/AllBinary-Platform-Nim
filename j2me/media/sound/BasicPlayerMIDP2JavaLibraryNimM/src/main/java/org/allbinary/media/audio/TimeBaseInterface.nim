#[
  
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
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
import javax/microedition/media/TimeBase as TimeBaseModule
export TimeBaseModule

type
    TimeBaseInterface* = ref object of JObject
import javax/microedition/media/MediaException as MediaExceptionModule
export MediaExceptionModule


method getTimeBase*(this: TimeBaseInterface): TimeBase {.base, discardable.} =
        raise newJException("AbstractMethodError", "getTimeBase")

method setTimeBase*(this: TimeBaseInterface, timeBase: TimeBase) {.base.} =
        raise newJException("AbstractMethodError", "setTimeBase")

