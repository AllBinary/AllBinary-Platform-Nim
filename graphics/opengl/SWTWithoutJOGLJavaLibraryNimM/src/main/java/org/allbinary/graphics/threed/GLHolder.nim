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
# package org.allbinary.graphics.threed

{.warning[UnusedImport]: off.}
import allbinary_java

type
    GLHolder* = ref object of JObject
        isCreated*: bool

proc newGLHolder*(): GLHolder
proc initGLHolder*(this: GLHolder)
method runOnSurfaceCreated*(this: GLHolder, renderer: JObject) {.base.}
method runOnSurfaceChanged*(this: GLHolder, renderer: JObject, width: int32, height: int32) {.base.}
method run*(this: GLHolder, renderer: JObject) {.base.}


# Java field initializers run after the base initializer
proc initFieldsGLHolder(this: GLHolder) =
    this.isCreated = true
    discard

proc initGLHolder*(this: GLHolder) =
        this.initFieldsGLHolder()
        discard

proc newGLHolder*(): GLHolder =
    result = GLHolder()
    initGLHolder(result)

method runOnSurfaceCreated*(this: GLHolder, renderer: JObject) {.base.} =
        discard

method runOnSurfaceChanged*(this: GLHolder, renderer: JObject, width: int32, height: int32) {.base.} =
        discard

method run*(this: GLHolder, renderer: JObject) {.base.} =
        discard

