#[
 
  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
]#
# Generated Code Do Not Modify
# package org.allbinary.image

{.warning[UnusedImport]: off.}
import allbinary_java
import javax/microedition/khronos/opengles/GL as GLModule
export GLModule
import javax/microedition/lcdui/Graphics as GraphicsModule
export GraphicsModule
import javax/microedition/lcdui/Image as ImageModule
export ImageModule

type
    PreResourceImageUtil* = ref object of JObject

proc newPreResourceImageUtil*(): PreResourceImageUtil
proc getInstance*(t: typedesc[PreResourceImageUtil]): PreResourceImageUtil {.discardable.}
method encapsulate*(this: PreResourceImageUtil, image: Image): Image {.base, discardable.}
method updateGL*(this: PreResourceImageUtil, gl: GL, image: Image) {.base.}
method update*(this: PreResourceImageUtil, graphics: Graphics, image: Image) {.base.}

var PreResourceImageUtil_instanceValue: PreResourceImageUtil
var PreResourceImageUtil_instanceSet = false
proc instance*(t: typedesc[PreResourceImageUtil]): PreResourceImageUtil =
    if not PreResourceImageUtil_instanceSet:
        PreResourceImageUtil_instanceSet = true
        PreResourceImageUtil_instanceValue = newPreResourceImageUtil()
    PreResourceImageUtil_instanceValue

proc initPreResourceImageUtil*(this: PreResourceImageUtil) =
    discard

proc newPreResourceImageUtil*(): PreResourceImageUtil =
    result = PreResourceImageUtil()
    initPreResourceImageUtil(result)

proc getInstance*(t: typedesc[PreResourceImageUtil]): PreResourceImageUtil {.discardable.} =
        return PreResourceImageUtil.instance

method encapsulate*(this: PreResourceImageUtil, image: Image): Image {.base, discardable.} =
        return image

method updateGL*(this: PreResourceImageUtil, gl: GL, image: Image) {.base.} =
        discard

method update*(this: PreResourceImageUtil, graphics: Graphics, image: Image) {.base.} =
        discard

