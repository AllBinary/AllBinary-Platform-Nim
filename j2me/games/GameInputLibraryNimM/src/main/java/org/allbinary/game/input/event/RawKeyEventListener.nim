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
# package org.allbinary.game.input.event

{.warning[UnusedImport]: off.}
import allbinary_java

type
    RawKeyEventListener* = ref object of JObject


method onEventRaw*(this: RawKeyEventListener, keyCode: int32, deviceId: int32, repeated: bool) {.base.} =
        raise newJException("AbstractMethodError", "onEventRaw")

