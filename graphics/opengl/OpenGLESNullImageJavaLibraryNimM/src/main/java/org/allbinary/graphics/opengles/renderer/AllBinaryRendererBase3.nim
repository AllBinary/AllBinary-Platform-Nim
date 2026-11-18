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
# package org.allbinary.graphics.opengles.renderer

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/khronos/opengles/GL10 as GL10Module
export GL10Module
import javax/microedition/lcdui/Image as ImageModule
export ImageModule
import org/allbinary/util/BasicArrayList as BasicArrayListModule
export BasicArrayListModule

type
    AllBinaryRendererBase3* = ref object of JObject
        list*: BasicArrayList

proc newAllBinaryRendererBase3*(): AllBinaryRendererBase3
method update*(this: AllBinaryRendererBase3, gl: GL10) {.base.}
method add*(this: AllBinaryRendererBase3, image: Image) {.base.}
import org/allbinary/image/opengles/OpenGLESImage as OpenGLESImageModule
export OpenGLESImageModule
import org/allbinary/util/BasicArrayListD as BasicArrayListDModule
export BasicArrayListDModule


# Java field initializers run after the base initializer
proc initFieldsAllBinaryRendererBase3(this: AllBinaryRendererBase3) =
    this.list = newBasicArrayListD()
    discard

proc initAllBinaryRendererBase3*(this: AllBinaryRendererBase3) =
    this.initFieldsAllBinaryRendererBase3()

proc newAllBinaryRendererBase3*(): AllBinaryRendererBase3 =
    result = AllBinaryRendererBase3()
    initAllBinaryRendererBase3(result)

method update*(this: AllBinaryRendererBase3, gl: GL10) {.base.} =
        while this.list.size() > 0:
            let openGLESImage: OpenGLESImage = OpenGLESImage(JObject(this.list.removeAt(0)))
            if (not jIsNil(openGLESImage)):
                openGLESImage.set(gl)

method add*(this: AllBinaryRendererBase3, image: Image) {.base.} =
        this.list.add(image)

