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
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    Shader* = ref object of JObject
        shaderName*: string
        shaderStringList*: BasicArrayList
        shaderAsString*: string
        shaderHandle*: int32

proc newShader*(): Shader
import org/allbinary/logic/string/StringUtil as StringUtilModule
export StringUtilModule
import org/allbinary/util/BasicArrayListUtil as BasicArrayListUtilModule
export BasicArrayListUtilModule


# Java field initializers run after the base initializer
proc initFieldsShader(this: Shader) =
    this.shaderName = StringUtil.getInstance().EMPTY_STRING
    this.shaderStringList = BasicArrayListUtil.getInstance().getImmutableInstance()
    this.shaderAsString = StringUtil.getInstance().EMPTY_STRING
    this.shaderHandle = 0
    discard

proc initShader*(this: Shader) =
    this.initFieldsShader()

proc newShader*(): Shader =
    result = Shader()
    initShader(result)

