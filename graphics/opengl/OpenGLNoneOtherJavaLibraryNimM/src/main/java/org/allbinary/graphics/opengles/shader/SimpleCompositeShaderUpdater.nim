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
import org/allbinary/graphics/opengles/shader/CompositeShaderUpdater as CompositeShaderUpdaterModule
export CompositeShaderUpdaterModule

type
    SimpleCompositeShaderUpdater* = ref object of CompositeShaderUpdater

proc newSimpleCompositeShaderUpdater*(uniformBlockArray: JArray[string], uniformArray: JArray[string], attributeArray: JArray[string], attributeHandleArray: JArray[int32]): SimpleCompositeShaderUpdater
proc initSimpleCompositeShaderUpdater*(this: SimpleCompositeShaderUpdater, uniformBlockArray: JArray[string], uniformArray: JArray[string], attributeArray: JArray[string], attributeHandleArray: JArray[int32])


proc initSimpleCompositeShaderUpdater*(this: SimpleCompositeShaderUpdater, uniformBlockArray: JArray[string], uniformArray: JArray[string], attributeArray: JArray[string], attributeHandleArray: JArray[int32]) =
        initCompositeShaderUpdater(this, uniformBlockArray, uniformArray, attributeArray, attributeHandleArray)

proc newSimpleCompositeShaderUpdater*(uniformBlockArray: JArray[string], uniformArray: JArray[string], attributeArray: JArray[string], attributeHandleArray: JArray[int32]): SimpleCompositeShaderUpdater =
    result = SimpleCompositeShaderUpdater()
    initSimpleCompositeShaderUpdater(result, uniformBlockArray, uniformArray, attributeArray, attributeHandleArray)

when declared(newSimpleCompositeShaderUpdaterHook4):
    newSimpleCompositeShaderUpdaterHook4 = proc (uniformBlockArray: JArray[string], uniformArray: JArray[string], attributeArray: JArray[string], attributeHandleArray: JArray[int32]): CompositeShaderUpdater = newSimpleCompositeShaderUpdater(uniformBlockArray, uniformArray, attributeArray, attributeHandleArray)

