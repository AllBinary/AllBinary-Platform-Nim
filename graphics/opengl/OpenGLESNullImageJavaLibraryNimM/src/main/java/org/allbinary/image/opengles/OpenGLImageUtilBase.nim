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
# package org.allbinary.image.opengles

{.warning[UnusedImport]: off.}
import allbinary_java
import java/io/IOException as IOExceptionModule
export IOExceptionModule
import java/io/InputStream as InputStreamModule
export InputStreamModule
import org/allbinary/graphics/OpenGLBitmap as OpenGLBitmapModule
export OpenGLBitmapModule
import org/allbinary/graphics/color/BasicColor as BasicColorModule
export BasicColorModule

type
    OpenGLImageUtilBase* = ref object of JObject

proc newOpenGLImageUtilBase*(): OpenGLImageUtilBase
method paint*(this: OpenGLImageUtilBase, alphaBitmap: OpenGLBitmap, originalBitmap: OpenGLBitmap, index: int32): OpenGLBitmap {.base, discardable.}
method paint*(this: OpenGLImageUtilBase, colorBitmap: OpenGLBitmap, originalBitmap: OpenGLBitmap, alpha: int32, basicColor: BasicColor): OpenGLBitmap {.base, discardable.}
method createImage*(this: OpenGLImageUtilBase, name: string): OpenGLBitmap {.base, discardable.}
method createImageFromInputStream*(this: OpenGLImageUtilBase, inputStream: InputStream): OpenGLBitmap {.base, discardable.}


proc initOpenGLImageUtilBase*(this: OpenGLImageUtilBase) =
    discard

proc newOpenGLImageUtilBase*(): OpenGLImageUtilBase =
    result = OpenGLImageUtilBase()
    initOpenGLImageUtilBase(result)

method paint*(this: OpenGLImageUtilBase, alphaBitmap: OpenGLBitmap, originalBitmap: OpenGLBitmap, index: int32): OpenGLBitmap {.base, discardable.} =
        raise newJException("RuntimeException", "")

method paint*(this: OpenGLImageUtilBase, colorBitmap: OpenGLBitmap, originalBitmap: OpenGLBitmap, alpha: int32, basicColor: BasicColor): OpenGLBitmap {.base, discardable.} =
        raise newJException("RuntimeException", "")

method createImage*(this: OpenGLImageUtilBase, name: string): OpenGLBitmap {.base, discardable.} =
        raise newJException("RuntimeException", "")

method createImageFromInputStream*(this: OpenGLImageUtilBase, inputStream: InputStream): OpenGLBitmap {.base, discardable.} =
        raise newJException("RuntimeException", "")

