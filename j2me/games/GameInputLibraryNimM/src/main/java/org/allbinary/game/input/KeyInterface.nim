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
# package org.allbinary.game.input

{.warning[UnusedImport]: off.}
import allbinary_java

type
    KeyInterface* = ref object of JObject


method keyPressed*(this: KeyInterface, keyCode: int32) {.base.} =
        raise newJException("AbstractMethodError", "keyPressed")

method keyReleased*(this: KeyInterface, keyCode: int32) {.base.} =
        raise newJException("AbstractMethodError", "keyReleased")

method keyPressedByDevice*(this: KeyInterface, keyCode: int32, deviceId: int32) {.base.} =
        raise newJException("AbstractMethodError", "keyPressedByDevice")

method keyReleasedByDevice*(this: KeyInterface, keyCode: int32, deviceId: int32) {.base.} =
        raise newJException("AbstractMethodError", "keyReleasedByDevice")

