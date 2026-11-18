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
# package org.allbinary.graphics.opengles.shader

{.warning[UnusedImport]: off.}
import allbinary_java
import org/allbinary/graphics/opengles/shader/ShaderInitializer as ShaderInitializerModule
export ShaderInitializerModule

type
    SimpleShaderInitializer* = ref object of ShaderInitializer

proc newSimpleShaderInitializer*(): SimpleShaderInitializer
proc getInstance*(t: typedesc[SimpleShaderInitializer]): SimpleShaderInitializer {.discardable.}

var SimpleShaderInitializer_instanceCValue: SimpleShaderInitializer
var SimpleShaderInitializer_instanceCSet = false
proc instanceC*(t: typedesc[SimpleShaderInitializer]): SimpleShaderInitializer =
    if not SimpleShaderInitializer_instanceCSet:
        SimpleShaderInitializer_instanceCSet = true
        SimpleShaderInitializer_instanceCValue = newSimpleShaderInitializer()
    SimpleShaderInitializer_instanceCValue

proc initSimpleShaderInitializer*(this: SimpleShaderInitializer) =
    initShaderInitializer(this)

proc newSimpleShaderInitializer*(): SimpleShaderInitializer =
    result = SimpleShaderInitializer()
    initSimpleShaderInitializer(result)

proc getInstance*(t: typedesc[SimpleShaderInitializer]): SimpleShaderInitializer {.discardable.} =
        return SimpleShaderInitializer.instanceC

when declared(newSimpleShaderInitializerHook0):
    newSimpleShaderInitializerHook0 = proc (): ShaderInitializer = newSimpleShaderInitializer()

