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
import org/allbinary/graphics/opengles/shader/ShaderManager as ShaderManagerModule
export ShaderManagerModule

type
    ShaderManagerFactory* = ref object of JObject

proc newShaderManagerFactory*(): ShaderManagerFactory
proc getInstance*(t: typedesc[ShaderManagerFactory]): ShaderManagerFactory {.discardable.}
method create*(this: ShaderManagerFactory): ShaderManager {.base, discardable.}

var ShaderManagerFactory_instanceValue: ShaderManagerFactory
var ShaderManagerFactory_instanceSet = false
proc instance*(t: typedesc[ShaderManagerFactory]): ShaderManagerFactory =
    if not ShaderManagerFactory_instanceSet:
        ShaderManagerFactory_instanceSet = true
        ShaderManagerFactory_instanceValue = newShaderManagerFactory()
    ShaderManagerFactory_instanceValue

proc initShaderManagerFactory*(this: ShaderManagerFactory) =
    discard

proc newShaderManagerFactory*(): ShaderManagerFactory =
    result = ShaderManagerFactory()
    initShaderManagerFactory(result)

proc getInstance*(t: typedesc[ShaderManagerFactory]): ShaderManagerFactory {.discardable.} =
        return ShaderManagerFactory.instance

method create*(this: ShaderManagerFactory): ShaderManager {.base, discardable.} =
        return ShaderManager.getInstance()

