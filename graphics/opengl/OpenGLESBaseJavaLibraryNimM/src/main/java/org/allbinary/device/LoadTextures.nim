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
# package org.allbinary.device

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/khronos/opengles/GL10 as GL10Module
export GL10Module

type
    LoadTextures* = ref object of JObject

proc newLoadTextures*(): LoadTextures
method load*(this: LoadTextures, gl: GL10) {.base.}


proc initLoadTextures*(this: LoadTextures) =
    discard

proc newLoadTextures*(): LoadTextures =
    result = LoadTextures()
    initLoadTextures(result)

method load*(this: LoadTextures, gl: GL10) {.base.} =
        discard

